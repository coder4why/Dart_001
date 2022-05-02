//enum 定义一个枚举类型
enum Colors { white, black, yellow }
void main(List<String> args) {
  Colors colors = Colors.black;
  print(Colors.values); //包含每个枚举的list
  print('${colors.index},${colors.name}');
}
