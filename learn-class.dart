//class
main(List<String> args) {
  var car1 = Car('Toyota', 'black');
  car1.generation = 5;
  var car2 = Car.addGeneration('BMW', "Green", 1);
  car1.intro();
  car2.intro();

  print(car1.showStyle);
  Car.label = 'my mom car is';
  print(car2.showStyle);

  car1.setColor = 'black';
  print('The Color of this car reset to ${car1.getColor}');

  var car3 = childCar('Ford', 'Blue', 'grandpa');
  print(car3);
}

//class
class Car {
  //field欄位
  String brand = 'TOYOTA';
  String color = 'white';
  int generation = 1;
  static String label = "Car's style is";
  //constructors 建構式、命名建構式。跟class 命名相同，但沒有回傳值
  Car(this.brand, this.color);
  Car.addGeneration(this.brand, this.color, this.generation);
  //Setter、Getter
  //set
  set setBrand(String b) {
    brand = b;
  }

  set setColor(String c) {
    color = c;
  }

  //get
  String get getBrand => brand;
  String get getColor => color;
  String get showStyle => '$label $brand $color.';

  //function函式、方法
  void intro() {
    print(
        'The brand of the car is [$brand] and color is [$color] and it is generation [$generation].');
  }
}

class childCar extends Car {
  String parent; //childCar的變數
  childCar(String b, String c, this.parent)
      : super(b, c); // 建構式，且:super()是要把childCar得到的b值，存進Car父層的b=brand
  @override //重載: 覆寫新的內容上去
  //function
  String toString() =>
      "Bob's [$parent] gave him a toy car, which is [$brand] [$color].";
}
/*
  筆記時間
1. class存放的資料型態/方法: filed(宣告變數)、function、set()、get()和建構式
2. 建構式(第一個初始值)和命名建構式(第2~n個初始值，命名時:Class_name.name)
3. static把它想成一般宣告變數(目前)，只要改動裡面的值用應用到的變數也會變動
4. class 子層name extends 父層class_name {
  : super() 呼叫父層裡面的資料(filed,function......)
}
*/