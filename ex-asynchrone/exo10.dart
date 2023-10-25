import 'dart:async';
import 'dart:convert';
import 'dart:io';
import 'package:http/http.dart' as http;

Future<void> main() async {
  final postId = 1;

  final url =
      Uri.parse('https://jsonplaceholder.typicode.com/comments?postId=$postId');

  print('Fetching data... Please wait a moment.');

  try {
    final response = await http.get(url);

    if (response.statusCode == 200) {
      final List<dynamic> comments = json.decode(response.body);

      final commentsString = comments.map((comment) {
        return 'Email: ${comment['email']}\n';
      }).join('\n');

      print('Comments for Post $postId:\n$commentsString');
    } else {
      print('Failed to fetch data. Status code: ${response.statusCode}');
    }
  } catch (e) {
    print('An error occurred: $e');
  }
}
