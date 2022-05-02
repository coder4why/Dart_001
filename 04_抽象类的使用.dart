//抽象类不能被实例化
//抽象类中可以定义抽象方法：没有方法的实现
abstract class Shape {
  String name = '';
  Shape(this.name);
  double getArea(); //抽象类中的抽象方法没有实现,子类必须实现
  //抽象类中已经实现的方法，子类中可以不实现；
  void show() {
    print(this.name);
  }
}

class Rectangle extends Shape {
  double width = 0;
  double height = 0.0;
  Rectangle(this.width, this.height) : super('三角形');
  @override
  double getArea() {
    print(
      '$name面积为:${this.width * this.height}',
    );
    return this.width * this.height;
  }
}

class Circle extends Shape {
  double radius = 0;
  Circle(this.radius) : super('圆形');

  @override
  double getArea() {
    print('$name面积为:${this.radius * this.radius * 3.14}');
    return this.radius * this.radius * 3.14;
  }
}

void main(List<String> args) {
  Rectangle rectangle = new Rectangle(20, 30);
  print(rectangle.getArea());
  rectangle.show();

  Circle circle = new Circle(10);
  print(circle.getArea());
  circle.show();
}
