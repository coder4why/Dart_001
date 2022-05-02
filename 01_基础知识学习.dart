void main(List<String> args) {
  var name;
  name ??= 'coderwhy';
  print(name);

  var newName = name ?? 'why';
  print("$name $newName");

  shwoMe('✈️', 20, 1.99);
  showMe1('胡先生');
  showMe1('胡先生', 30);
  showMe1('胡先生', 30, 1.98);

  showMe2('😄');
  showMe2('😄', age: 22);
  showMe2('😄', height: 2.22);
  showMe2('😄', age: 33, height: 2.26);

  List<String> persons = ['James', 'Cobe Branyent', 'YaoMing', 'James'];
  List<String> persons1 = List.from(persons.map((item) => item + '-A'));
  //Set去重：数组里面不包含两个相同的元素
  Set<String> persons2 = Set.from(persons);
  print(persons);
  print(persons1);
  print(persons2);

  Map<String, dynamic> personInfo = {
    'userName': 'Coder4What',
    'age': 18,
    'height': 2.26
  };

  print(personInfo);

  //箭头函数，只能包含一条语句
  showFunc(() => print('Hello World'));
  showFunc(() {
    print('Hello Flutter');
    print('Hello TypeScript');
    print('Hello Swift');
  });
}

void shwoMe(String name, int age, double height) {
  print("$name $age $height");
}

void showMe1(String name, [int age = 20, double height = 1.80]) {
  print("$name $age $height");
}

void showMe2(String name, {int age = 18, double height = 1.70}) {
  print("$name $age $height");
}

//类似于JavaScript中的callback
void showFunc(Function func) {
  func();
}
