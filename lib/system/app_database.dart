import 'package:flutterapp/datamodels/address.dart';
import 'package:injectable/injectable.dart';

@lazySingleton
class AppDatabase {
  Future<Address> getCurrentAddress() {}
}
