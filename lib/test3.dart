main(){

var p = Person('111');

}

class Person {
  final String name;
  final int age;

  Person(this.name,{int age}):this.age = age ?? 10 {
    print(name);
    print(age);
  }

//  Person.withNameAgeHeight
}