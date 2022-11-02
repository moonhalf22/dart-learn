void main() {
// 1.輸入秒數轉乘「時:分:秒」
  var inpuu = 5678;
  var hr = inpuu / (60 * 60);
  var ls = inpuu % (60 * 60);
  var min = ls / 60;
  var sec = ls % 60;
  //print('${hr.ceil()}時:${min.ceil()}分:${sec}秒');
/*// 2.判斷西元年是否為閏年
  var year = 2000;
  if (year % 4 == 0) {
    print('是閏年');
  } else {
    print('不是閏年');
  }*/
// 3.輸入四個數，找max,min
  var list = [8, 9, 2, 7];
  var mmin = list[0];
  var Max = list[0];
  for (var i = 1; i < list.length; i++) {
    if (list[i] < mmin) {
      mmin = list[i];
    }else if (list[i] > Max) {
      Max = list[i];
    } else {
      continue;
    }
  }
  print('最大值為${Max},最小值為${mmin}');
}
