class Person {
  String name = '';
  int age = 0;
  double height = 0.0;

  //类的构造函数
  // Person({String name = '', int age = 0, double height = 0.0}) {
  //   this.name = name;
  //   this.age = age;
  //   this.height = height;
  // }

  //Dart中构造函数不能重载
  //类的构造函数的语法糖写法:优先采用这种写法 (与上面的写法实现上是一样)
  Person({this.name = '', this.age = 0, this.height = 0.0});

  //class命名构造函数:class类使用Map对象生成构造函数
  Person.initWithMap(Map<String, dynamic> map) {
    this.name = map['name'] ?? '';
    this.age = map['age'] ?? 0;
    this.height = map['height'] ?? 0.0;
  }

  // ..代表级联写法
  Person initPerson([String name = '', int age = 0, double height = 0.0]) {
    return Person()
      ..name = name
      ..age = age
      ..height = height;
  }

  //打印Person对象，将自动调用toString方法
  @override
  String toString() {
    return '$name $age $height';
    // return super.toString();
  }
}

void main(List<String> args) {
  Person personA = new Person(name: '胡先生', age: 22, height: 2.26);
  print(personA);

  Map<String, dynamic> userInfo = {'name': 'James', 'age': 20, 'height': 2.38};
  Person mapPerson = new Person.initWithMap(userInfo);
  Person mapPerson1 = new Person.initWithMap(userInfo);
  print(mapPerson);
  //identical:判断两个对象是否相等
  print(identical(mapPerson, mapPerson1));

  Person person = new Person().initPerson('肖先生', 10, 1.99);
  print(person);
}
