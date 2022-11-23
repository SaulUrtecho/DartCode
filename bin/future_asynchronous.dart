Future<String> createOrderMessage() async {
  var order = await fetchUserOrder(); // call the future function below in other thread
  return 'Your order is: $order';
}

// this function return a String
Future<String> fetchUserOrder() =>
    // Imagine that this function is
    // more complex and slow.
    Future.delayed(
      const Duration(seconds: 5),
      () => 'Large Pizza',
    );

Future<void> main() async {
  print('Fetching user order...');
  print(await createOrderMessage());
}
