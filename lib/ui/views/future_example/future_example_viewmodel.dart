import 'package:stacked/stacked.dart';

class FutureExampleViewModel extends FutureViewModel<String> {
  Future<String> getDataFromServer() async {
    // MAKE ACTUAL API REQUEST HERE
    await Future.delayed(const Duration(seconds: 2));
    // return 'Fetched from server';
    throw Exception('This is broke dude!');
  }

  @override
  Future<String> futureToRun() => getDataFromServer(/* Pass parameters here */);

  @override
  void onError(error) {
    // Show dialog here using service if we want to
  }
}
