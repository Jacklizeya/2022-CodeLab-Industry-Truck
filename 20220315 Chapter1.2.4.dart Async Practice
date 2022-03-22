Future <String> createOrderMessage() async {
  var order = await fetchUserOrder();
  return 'Your order is: $order';
}

Future<String> fetchUserOrder() {
    // Imagine that this function is
    // more complex and slow.
    return Future.delayed(
      const Duration(seconds: 2),
      () => 'Large Latte',
    );}

Future<void> main() async {
  print('Fetching user order...');
  
  // If you print future type, it will be printed right away
  print(await createOrderMessage());
}


// Example 2


Future<void> printOrderMessage() async {
  print('Awaiting user order...');
  var order = await fetchUserOrder();
  print('Your order is: $order');
}


// If you use 
Future<String> fetchUserOrder() {
  // Imagine that this function is more complex and slow.
  return Future.delayed(const Duration(seconds: 4), () => 'Large Latte');
}

void main() async {
  countSeconds(4);
  await printOrderMessage();
}

// You can ignore this function - it's here to visualize delay time in this example.
void countSeconds(int s) {
  for (var i = 1; i <= s; i++) {
    Future.delayed(Duration(seconds: i), () => print(i));
  }
}

// Equivalent to: Create 4 futures, and put them into the API
// future.delayed()  Create futures
// future.delayed()
// future.delayed()
// future.delayed()
