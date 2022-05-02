class Location<T> {
  late T a;
  late T b;
  Location(this.a, this.b);
  //
  // T showMe(List<T> list) {
  //   print(list);
  //   return list[0];
  // }

  @override
  String toString() {
    return '$a,$b';
  }
}

//泛型函数
T getElement<T>(List<T> list) {
  return list[0];
}

void main(List<String> args) {
  Location<String> location = new Location('A', 'B');
  print(location);

  Location<double> location1 = new Location(20.0, 10.0);
  print(location1);

  Location location2 = new Location<int>(50, 30);
  print(location2);

  print(getElement([1, 2, 3]).runtimeType);
  print(getElement(['1', '2', '3']).runtimeType);
}
