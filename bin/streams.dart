// this Stream-function return "n" quantity of integers asynchronously
Stream<int> countStream(int max) async* {
  for (int i = 0; i < max; i++) {
    yield i;
  }
}

// this function receive a int-stream
// which is a int-sequence
// each value is added with previous
// finally we return the sumatory
Future<int> sumStream(Stream<int> stream) async {
  int sum = 0;
  await for (int value in stream) {
    sum += value;
  }
  return sum;
}

void main() async {
  /// Initialize a stream of integers 0-9
  Stream<int> stream = countStream(10);

  /// Compute the sum of the stream of integers
  int sum = await sumStream(stream);

  /// Print the sum
  print(sum); // 45
}
