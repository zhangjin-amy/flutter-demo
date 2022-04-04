List list1 = <String>['a', 'b'];
List list2 = <String>['c', 'd'];

var l = '[1, 2, 3]';
var a = {'1': 1};

void main() {
  // list1.insert(2, 'q');
  // list1.insertAll(1, list2);
  // print(list1);
  // print(List.from(list1));
  List<String> foo = List<String>.from(['1']);
  var l = foo.map((v) => v + '1').toList();
  print(l);
  // print(foo);
}