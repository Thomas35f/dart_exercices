num Function(num) derive(num Function(num) f) {
  var dx = 0.000001;
  return (num x) {
    return (f(x + dx) - f(x) / dx);
  };
}

void main() {
  final f = (num x) => x * x;
  var result = derive(f);
  print(result);
}
