void main() {
  String name = 'sai\'s'; //escape character
  var x = true ? "first" : "second"; //condition operator;
  //List
  List<int> a = [1, 2, 3, 4, 5, 6];
  //properties
  print(a.isEmpty);
  print(a.length);
  print(a.isNotEmpty);
  print(a.first);
  print(a.last);
  //methods
  print(a.contains(1));
  a.insert(6, 7);
  a.map((e) => e + 2); //used only for operation and doesnt effect original
  print(a.where((element) => element > 3).toList()); //used for only condition
  print(a.remove(17));
  var sum = a.reduce((value, element) => value + element);
  a.add(8);
  //a.clear();
  a.addAll([10, 11]);
  a.insertAll(1, [12, 13]);
  a.replaceRange(1, 3, [20, 21]);
  a.forEach((element) {
    print("${a.indexOf(element)}:$element");
  });
  a.sort();
  //Map
  Map<String, dynamic> b = {"name": "saiteja", "age": 22, "id": 1234};
  print(b.keys);
  print(b.values);
  print(b.length);
  print(b.isEmpty);
  b.addAll({"clg": "rgukt", "loc": "jcl"});
  b.forEach((key, value) {
    print("$key  $value");
  });

  b.remove("loc");
  print(b);

  //String
  String s = "  Hello!  ";
  String t = "kane";
  print(s.isEmpty);
  print(s.toLowerCase());
  print(s.toUpperCase());
  print(s.trim());
  print(s.compareTo(t));
  print(s.split("l"));
  t.replaceAll("ane", "enam");
  t.substring(1, 3);
}
