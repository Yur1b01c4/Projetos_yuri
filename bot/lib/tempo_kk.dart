class TempoKK{
  Future tempo(int seconds){
    return Future.delayed(Duration(seconds: seconds));
  }
  Stream kkStream(int interval, [int? maxCount]) async* {
    int i = 1;
    while(i != maxCount){
      await Future.delayed(Duration(seconds: interval));
      yield i++;
    }
    print('KKbot se desligando...');
  }
}