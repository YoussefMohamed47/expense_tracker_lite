import 'dart:developer';

import 'package:internet_connection_checker/internet_connection_checker.dart';

abstract class NetworkInfo {
  Future<bool> get isConnected;
}

class NetworkInfoImpl implements NetworkInfo {
  final InternetConnectionChecker _internetConnectionChecker;

  bool _hasConnection = true;

  NetworkInfoImpl(this._internetConnectionChecker) {
    _internetConnectionChecker.onStatusChange.listen((status) {
      _hasConnection = status == InternetConnectionStatus.connected;
    });
  }

  @override
  Future<bool> get isConnected async {
    return _hasConnection;
  }
}
