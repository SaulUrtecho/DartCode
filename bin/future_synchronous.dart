void main() {
  fetchUserOrder();
  print('Fetching user order..'); // this will be printed first
}

Future fetchUserOrder() {
  return Future.delayed(Duration(seconds: 2), () => print('DATA'));
}
