class BasicModel {
  static String name = '步惊云'; //使用类直接访问
  double height = 0; //类的实例对象访问
  static void run() {
    //使用类直接访问
    print('跑啊');
  }

  void swim() {
    //类的实例对象访问
    print('游泳');
  }
}

void main(List<String> args) {
  BasicModel basicModel = new BasicModel();
  basicModel.height = 2.00;
  basicModel.swim();
  print(BasicModel.name);
  BasicModel.run();
}
