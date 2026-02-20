import 'package:flutter/material.dart';

class Person {
  String name;
  int age;

  Person(this.name, this.age);

}

class Example1 extends StatelessWidget {
  const Example1({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(onPressed: (){
        Person person = Person('ismail', 24);
        Person person1 = Person('ismail', 24);

        print(person == person1);
      },child: Text('Add')),
    );
  }
}
