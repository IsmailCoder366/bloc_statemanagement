import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';

class Person extends Equatable{
  String name;
  int age;

  Person(this.name, this.age);

  @override
  // TODO: implement props
  List<Object?> get props => [name, age];

}

class Example1 extends StatelessWidget {
  const Example1({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(onPressed: (){
        Person person = Person('ismail', 24);
        Person person1 = Person('ismail', 24);

        print(person == person1); // these are not equal bcs in flutter only instance is equal to itself and here we have two instances person and person1
        print(person == person);  // these are now equal

        /// checking equality through hashcode
        print(person.hashCode.toString());
        print(person1.hashCode.toString());
      },child: Text('Add')),
    );
  }
}
