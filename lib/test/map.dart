/// Map 的创建和使用
// 创建
// 1. new Map
Map map1 = new Map();

// 2. Map.from(Map<dynamic, dynamic> other)
Map<String, String> map2 = Map.from({ 'name': 'amy' });

// 3. Map.fromIterable(Iterable<dynamic> iterable, {dynamic Function(dynamic) key, dynamic Function(dynamic) value})
// 此方法需要List做辅助
List<int> list1 = [1,2,3];
List<String> list2 = ['amy', 'rouzip', 'amity'];
Map<int, int> map3 = Map.fromIterable(list1); // {1: 1, 2: 2, 3: 3}
Map<String, String> map4 = Map.fromIterable(list2); // {amy: amy, rouzip: rouzip, amity: amity}
Map<int, int> map5 = Map.fromIterable(list1, key: (v) => v, value: (v) => v*v); // {1: 1, 2: 4, 3: 9}

// 4. Map.fromIterables(keys, values)
// 需要两个数据字典做映射 Map.fromIterables(keys, values)
Map<int, String> map6 = Map.fromIterables(list1, list2); // {1: amy, 2: rouzip, 3: amity}


 

main() {
  // 属性
  // 运行时类型
  // print(map2.runtimeType);  //_InternalLinkedHashMap<String, String>

  // // 是否为空, null不能判断, 会报错
  // print(map2.isEmpty);  // false

  // // 是否不为空
  // print(map2.isNotEmpty);  // true

  // // 键值对个数
  // print(map2.length);   // 1
 
  // // 所有的key值, 返回Iterable<K>类型
  // print(map2.keys.toList());  // [name]

  // print(map6.keys); // (1,2,3)
 
  // // 所有的value值, 返回Iterable<K>类型
  // print(map2.values.toList());   // [amy]
 
  // // 根据key取值,不能用点.操作符奥！！！
  // print(map2['name'] ?? '');   // amy
 
  // // 根据key赋值
  // map1['age'] = 30;
  // print(map1);

  // 对指定键值对value做修改
  int result3 = map3.update(1, (value)=>(value*2));//key存在  根据参数函数修改其值， key 不存在报错
  print(result3); // 2
  print(map3);// {1: 2, 2: 2, 3: 3}

  // 函数
  // 添加一个map
  map2.addAll({'blog': 'amgbolg'});
  map2.addEntries(map4.entries); // 合并两个map 如果key有重复，被合并的map的value覆盖前者
  print(map2);
 
  // 判断是否包含指定的key
  print(map2.containsKey('age'));  //
 
  // 判断是否包含指定的value
  print(map2.containsValue('rouzip'));

  // 删除键值对, 返回删除key对应的value值, 没有则返回null
  print(map2.remove('blog'));  //amyblog
  print(map2.remove('coder'));  //null

  // 删除所有的键值对
  map2.clear();
  print(map2);

}