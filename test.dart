// 1.輸入秒數轉乘「時:分:秒」
ct(num time) {
  print(time);
  var hr = time / (60 * 60);
  var ls = time % (60 * 60);
  var min = ls / 60;
  var sec = ls % 60;
  print('${hr.ceil()}時:${min.ceil()}分:${sec}秒');
}

// 2.判斷西元年是否為閏年
leapYear(int year) {
  if (year % 4 == 0) {
    print('是閏年');
  } else {
    print('不是閏年');
  }
}

// 3.輸入四個數，找max,min
findMm(List list) {
  var min = list[0];
  var Max = list[0];
  for (var i = 1; i < list.length; i++) {
    if (list[i] < min) {
      min = list[i];
    } else if (list[i] > Max) {
      Max = list[i];
    } else {
      continue;
    }
  }
  print('最大值為${Max},最小值為${min}');
}

// 4. 請寫一個 function sort，接收一個陣列並且回傳由小到大排序後的陣列
int findMin(arr) {
  var min = arr[0];
  var index = 0;

  for (var i = 0; i < arr.length; i++) {
    if (min > arr[i]) {
      min = arr[i];
      index = i;
    } else {
      continue;
    }
  }
  return index;
}

sort(List arr) {
  //用for迴圈做搜尋，找到最min值放到新的陣列裡，順便用removeAt(刪除值重新找min)
  var nSort = [];
  int dindex = 0;

  var n = arr.length;
  for (var j = 0; j < n; j++) {
    dindex = findMin(arr);
    nSort.add(arr[dindex]);
    arr.removeAt(dindex);
  }
  print('新陣列nSort為${nSort}');
}

// 5. 請寫出一個函式 stars，接收一個參數 n，並依照規律印出圖形
ms(m) {
  var str3 = '';
  for (var j = 1; j <= m; j++) {
    str3 += '*';
  }
  print(str3);
}

star(n) {
  for (var i = 1; i <= n; i++) {
    ms(i);
  }
  for (var i = n - 1; i > 0; i--) {
    ms(i);
  }
}

// 6. function 9X9，九九乘法
table9to9_1() {
  for (var i = 1; i <= 9; i++) {
    for (var j = 1; j <= 9; j++) {
      print('${i}*${j}=${i * j}');
    }
  }
}

main() {
  //ct(5678);
  //leapYear(2000);
  //findMm([8, 9, 2, 7]);
  //reverse([1, 2, 3, 4, 5]);
  table9to9_1();
  sort([9, 2, 7, 5, 11]);
  star(5);
}
