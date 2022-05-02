mixin ModelA {
  int age = 22;
  void run() {
    print('跑路');
  }
}

mixin ModelB {
  String name = '步惊云';
  void swim() {
    print('游泳');
  }
}

//类的混入实现
class BaseModel with ModelA, ModelB {
  @override
  String toString() {
    return '$name,$age';
  }
}

void main(List<String> args) {
  BaseModel baseModel = new BaseModel();
  baseModel.run();
  baseModel.swim();
  print(baseModel);
}
