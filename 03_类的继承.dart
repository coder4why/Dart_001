class Animal {
  int age = 0;
  void eat() {
    print('吃着呢');
  }

  Animal(this.age);
}

//Dart中的继承
class Human extends Animal {
  String name = '';
  Human(this.name, age) : super(age);
  @override
  String toString() {
    return '姓名:$name,年龄:$age';
  }
}

void main(List<String> args) {
  Human human = new Human('James', 20);
  print(human);
  human.eat();
}
