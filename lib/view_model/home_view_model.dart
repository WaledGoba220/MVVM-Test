import 'package:mvvm_test/models/counter_model.dart';

var counter = CounterModel();

class HomeViewModel {
  // this will provide all data to the views needs
  String title = 'MVVM Text';

  getCounter() {
    return counter.count;
  }

  getIncCounter() {
    return counter.count++;
  }
}
