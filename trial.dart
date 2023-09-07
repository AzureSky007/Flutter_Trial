// import 'dart:developer';

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

  // Decision Making
  // If Loop
  var num5 = 50;
  if (num5 > 10) {
    print("If Loop Valid");
  }

  // If Else Loop
  if (num5 < 15) {
    print("If Loop Valid");
  } else {
    print("Else Loop Valid");
  }

  //Else If Loop
  if (num5 < 15) {
    print("If Loop Valid");
  } else if (num5 == 50) {
    print("Else If Loop Valid");
  } else {
    print("Else Loop Valid");
  }

  // Switch Case
  var variable1 = "B";
  switch (variable1) {
    case "A":
      {
        print("Case 1 printed");
      }
      break;

    case "B":
      {
        print("Case 2 printed");
      }
      break;

    case "C":
      {
        print("Case 3 printed");
      }
  }

  // Numbers
  // .parse will convert string to Integer
  print(int.parse('24'));
  print(double.parse('24'));

  var num7 = 134.21;
  num7.abs();
  num7.ceil();
  num7.compareTo(num5);
  num7.toDouble();
  num7.truncate();

  // Strings
  String str1 = "Hey";
  String str2 = " there";
  String str3 = str1 + str2;
  print(str3);

  String str4 = "The sum of 2 + 2 is ${2 + 2}";
  print(str4);

  // Other functions include replaceAll, compareTo, substring, toUpperCase, toLowerCase

  //Boolean
  bool test;
  test = 12 > 5;
  print(test);

  if (str3 == true) {
    print("String is not empty");
  } else {
    print("String is empty");
  }

  if (str3 == 'Hey there') {
    print("String is not empty");
  } else {
    print("String is empty");
  }

  // Lists
  List l1 = [1, 2, 3, 4, 5];
  l1.add(6);
  l1.remove(2);
  print(l1);

  l1.replaceRange(0, 2, [10, 20, 30]);
  print(l1);

  l1[4] = 50;
  print(l1);

  // Maps
  Map m1 = {'Value 1': 1, 'Value 2': 2, 'Value 3': 3};
  print(m1[0]);

  m1['Value 4'] = 4;
  print(m1);

  m1.keys;
  m1.values;
  m1.length;

  var m2 = new Map();
  m2['Value 5'] = 5;
  m2['Value 6'] = 6;
  m2['Value 7'] = 7;

  m1.addAll(m2);
  m2.clear();
  m1.remove('Value 2');

  print("Current m1 is ${m1}");

  m1.forEach((key, value) => print('${key}: ${value}'));

  // Skipped: Symbols
  //

  // import 'dart:developer';

  User class1 = User('Sky', 7);
  print(class1.username);
  class1.login();

  User2 class2 = User2('Reaper', 271);
  print(class2.username);
  print(class2);

  class2.publish();
  class2.login();
}

class User {
  String username;
  int age;

  User(this.username, this.age) {}

  void login() {
    print("Username is ${username} and Age is ${age}");
  }
}

class User2 extends User {
  User2(String username, int age) : super(username, age);

  void publish() {
    print('Publish function');
  }
}
