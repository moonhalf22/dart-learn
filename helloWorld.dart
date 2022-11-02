void main() {
/*//宣告方式: 變數/常數
  /*變數*/
  //var
    var a = 123;
    a = '123';
    print(a.runtimeType);
    var b;
    b = 123;
    b = '123';
    b = false;
    print(b.runtimeType);
  //dynamic
  /* 以上為弱類型 */
  //int
    int aa = 55;
    print(aa);
  //double
  //String
  //bool

  /*常數*/
  //final:
    final name = 'Oops';
    print(name.runtimeType);
  //name = 'hey'; 就像耶穌被釘在十字架拔不下來，沒人能代替拉

  //const:一定要賦予明確的值
*/
/*//資料型態
  //num:int/double
    num pi = 3; //pi 型態為num，值可為 int
    //print(pi.runtimeType);
    pi = 3.14; //pi 型態為num，值可為 double
    //print(pi.runtimeType);
  //array(又稱list)[]
    var list = [1, 2, 3];
    list.add(5);
    //print('${list},${list.runtimeType},${list.length},list[2]=${list[2]}');
    List<int> list2 = [3, 2, 1];
    //print('${list2},${list.runtimeType}');
    var list3 = [0, ...list]; //算是偷呷部，只可惜無法兩個合併
    var list4 = list2 + list;
    //print(list4);
  //set:{} 無索引值的陣列
    var set = {1, 2, 3};
    //print('${set},${set.length}');
  //map:key-value
    var gifts = {
      1: '阿明',   2: '小黃',3: '大白'
    };
    var names2 = <String, String>{'name': '黄药师'};
    //print('${gifts},${gifts.runtimeType}');
  //Runes
  //Symbols(少用，先，先pass)
*/
/*//條件式
  //if-else
    var age = 18;
    if (age > 18) {
      print('喝起來');
    } else if (age == 18) {
      print('賀成年');
    } else {
      print('左轉再見');
    }
  //switch
    var name = '黄药师';
    switch (name) {
      case '郭靖':
        break;
      case '老顽童':
        break;
      default:
        print('Default');
    }
*/
/*//迴圈
  //for
  for (int i = 0; i < 9; i++) {
    print(i);
  }
  //while
  var j = 0;
  while (j < 5) {
    print('j : ${j}');
    j++;
  }
  //list的循環(超酷)
  var name = ['紅', '橙', '黃'];
  for (var color in name) {
    print(color); // 输出："紅","橙","黃"
  }

  name.forEach((v) {
    print(v); // 输出："紅","橙","黃"
  });

  name.forEach((v) => print(v)); //输出："紅","橙","黃"

  //map
  var myMap = {'name': '筆仙', 'age': '500', 'skills': '嚕貓'};
  //forEach Map
  myMap.forEach(
      (k, v) => print("$k : $v")); //输出：name : 筆仙   age : 505   skills : 嚕貓
  //根据键获取值来遍历。通过keys返回Map中所有键的集合
  for (var k in myMap.keys) {
    print("$k : ${myMap[k]}"); //输出：name : 筆仙   age : 505   skills : 嚕貓
  }
  */
}
//總結
//1. 基本上都用var做宣告拉，不用想太多，理解每個變數的資料型態是啥即可
//2. array和map 應該是很好用，也很常用，我猜想應該有很多函式八(??
//3. 條件是跟之前學的一模一樣不用緊張
//4. 迴圈部分if-else也一樣(包含語法)， 但多了array和map的輸出迴圈超酷但目前好像式只能一次輸出的樣子