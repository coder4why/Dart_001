class BaseModel {
  //Dart中的隐式接口
  void showDescription() {
    print(this.runtimeType);
  }
}

class BasicModel {
  //Dart中的隐式接口
  void showMe() {
    print(this.runtimeType);
  }
}

//使用implements继承时，必须重写父类的所有方法
class HasModel implements BaseModel, BasicModel {
  @override
  void showDescription() {
    print('实现了父类方法的重写');
  }

  @override
  void showMe() {
    print('实现了父类BasicModel方法的重写');
  }
}

void main(List<String> args) {
  final model = new HasModel();
  model.showDescription();
}
