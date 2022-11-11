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
  int start() {
    startAt == 0 ? startAt : now(); //感覺怪怪的，如果我main的startAt不動，永遠都是從0秒開始
    return startAt;
  }

  //暫停
  int stop() {
    lapTime == startAt ? lapTime + now() - startAt : lapTime;
    startAt = 0;
  }

  //清除
  int reset() => startAt = lapTime = 0;
  //經過的時間
  int passTime() => lapTime + (startAt == now() ? now() - startAt : 0);
}

var x = new stopwatch();

//顯示經過時間
class show {
  int update() => x.passTime();
}



//顯示每個時間段做的事情

