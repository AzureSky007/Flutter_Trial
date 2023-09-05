void main() {
  // Data Types
  String greet = 'Hello World';
  print(greet);

  int num = 30;
  print(num);

  double num2 = 41.23;
  print(num2);

  bool value = false;
  print(value);

  List items = ['Item 1', 'Item 2', 'Item 3', 'Item 4'];
  print(items);

  Map items2 = {'Item 1': 'Item 1', 'Item 2': 2, 'Item 3': 30.23};
  print(items2);

  // Variables
  String name = 'Sky';
  // print('');
  print(name);

  // name = 1;
  // Line above not possible because it is static

  int nums = 20;
  print(nums);

  dynamic x = 'Sky';
  x = 30;
  print(x);

  final value1 = 12;
  print(value1);

  const const1 = 'Dart Programming';
  print(const1);

  var a = null;
  var b = 15;
  b *= 2;
  var c = a ?? b;
  // Checks if first value is null or not
  // If null, it will reevaluate second value
  // If not null, it will return first value
  print("Value of c is");
  print(c);

  assert(b == 30);
  // Returns Assertion Error if code is false
  // If true, no change occurs, code continues executing

  var d = c + b;
  print("Value of d is");
  print(d);

  var e = 24;
  var f = 5;
  var g = e ~/ f;
  // Returns an integer quotient
  print("Value of g is");
  print(g);

  // Conditional Expressions
  var h = 30;
  var h1 = h == 30 ? true : false;
  print(h1);
  // We use i as the value obtained needs to be stored somewhere

  // Loops
  // For Loop
  for (var i = 0; i < 5; i++) {
    print("Loop Number: ${i}");
  }

  loop1:
  for (var i = 0; i < 5; i++) {
    print("Loop 1 Number: ${i}");

    loop2:
    for (var j = 0; j < 3; j++) {
      print("Loop 2 Number: ${j}");
      if (j == 2) break loop2;
      if (i == 4) break loop1;
    }
  }
  print("Both Loops broken");

  // for (var i = 0; i < 5; i++) {
  //   print("Loop Number: ${i}");
  // }

  // loop1:
  // for (var i = 0; i < 5; i++) {
  //   print("Loop 1 Number: ${i}");

  //   loop2:
  //   for (var j = 0; j < 3; j++) {
  //     print("Loop 2 Number: ${j}");
  //     if (j == 2) break loop2;
  //     if (i == 4) continue loop1;
  //   }
  // }
  // print("Both Loops broken");

  // For In Loop
  for (var item in items) {
    print(item);
  }

  // While Loop
  var num3 = 3;
  while (num3 != 0) {
    print("Current Valuue is ${num3}");
    num3--;
  }

  // Do While Loop
  var num4 = 15;
  var iter = 0;
  do {
    print("Iteration no. ${iter}");
    num4 += num4;
    iter++;
  } while (num4 < 200);
}
