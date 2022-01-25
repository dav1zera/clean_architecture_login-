import 'package:clean_login/app/core/connectivity/infra/drivers/connectivity_driver.dart';
import 'package:connectivity/connectivity.dart';
import 'package:flutter_modular/flutter_modular.dart';
part 'flutter_connectivity_driver_impl.g.dart';

@Injectable(singleton: false)
class FlutterConnectivityDriver implements ConnectivityDriver {
  final Connectivity connectivity;

  FlutterConnectivityDriver(this.connectivity);
  @override
  Future<bool> get isOnline async {
    final result = await connectivity.checkConnectivity();
    return result == ConnectivityResult.wifi ||
        result == ConnectivityResult.mobile;
  }
}
