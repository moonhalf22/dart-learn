import 'dart:async';

void main(List<String> args) {
  real_time();
  //stopwatch();
}

//顯示開始時間，結束時間
void real_time() {
  var star_time = new DateTime.now();
  print('開始時間: $star_time');
  //結束時間，但不知道如何分開，先這樣
  //var end_time = new DateTime.now();
}

//開始、暫停、清除的功能
class stopwatch {
  int startAt = 0;
  int lapTime = 0;

  stopwatch(this.startAt);
  int now() => DateTime.now().millisecondsSinceEpoch;

  //開始
  int start_btn() {
    startAt == 0 ? startAt : now(); //感覺怪怪的，如果我main的startAt不動，永遠都是從0秒開始
  }

  //暫停
  int stop_btn() {
    lapTime == startAt ? lapTime + now() - startAt : lapTime;
    startAt = 0;
  }

  //清除
  int reset_btn() => startAt = lapTime = 0;
  //經過的時間
  int passTime() => lapTime + (startAt == now() ? now() - startAt : 0);
}

var x = new stopwatch();

//顯示經過時間
class show {
  int update() => x.passTime();
  int start() {
    /*
    //感覺可以計算秒數增加的程式碼，但現在問題卡在什麼時候暫停並叫stopwatch.stop_btn()
    var counter = 3;
    Timer.periodic(const Duration(seconds: 1), (timer) {
      print(timer.tick);
      counter--;
      if (counter == 0) {
        print('Cancel timer');
        timer.cancel();
      }
    });
    */
  }
}
//當執行stopwatch.start()=> startAt隨著Timer.periodic持續更新數字//要測Timer.periodic可否被暫存
//當執行 stopwatch.stop()時 => Timer.periodic cancel，並將其數字暫存到lapTime


//顯示每個時間段做的事情

