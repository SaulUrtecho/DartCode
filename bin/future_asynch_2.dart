/* Future<void> printOrderMessage() async {
  print('Awaiting user order...');
  var order = await fetchUserOrder();
  print('Your order is: $order');
}

Future<String> fetchUserOrder() {
  // Imagine that this function is more complex and slow.
  return Future.delayed(const Duration(seconds: 4), () => 'Large Pizza');
}

void main() async {
  countSeconds(4);
  await printOrderMessage();
}

// this function is for receive the seconds
void countSeconds(int s) {
  for (var i = 1; i <= s; i++) {
    Future.delayed(Duration(seconds: i), () => print(i)); // print the seconds
  }
}
 */

Future<void> printOrderMessage() async {
  try {
    print('Awaiting user order...');
    var order = await fetchUserOrder().whenComplete(() => print('finished'));
    print(order);
  } catch (err) {
    print('Caught error: $err');
  }
}

Future<String> fetchUserOrder() {
  // Imagine that this function is more complex.
  var str = Future.delayed(const Duration(seconds: 4), () => throw 'Cannot locate user order'); // throw an error
  return str;
}

void main() async {
  await printOrderMessage();
}
