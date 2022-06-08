import 'dart:async';

/// Describes current network connection state
enum netConnState { online, offline }

/// Provides interface to get current network connection state
/// and listen to events of going online/offline.
class NetworkConnectivity {
  
  static NetworkConnectivity? _singleton;

  factory NetworkConnectivity() {
    _singleton ??= NetworkConnectivity._();
    return _singleton!;
  }

  late bool isOnline;
  late StreamController<netConnState> recordStreamController;

  NetworkConnectivity._() {
    isOnline = true;
    recordStreamController = StreamController<netConnState>.broadcast(
        onListen: () {}, onCancel: () {});
  }

  void goOnline() {
    isOnline = true;
    recordStreamController.add(netConnState.online);
  }

  void goOffline() {
    isOnline = false;
    recordStreamController.add(netConnState.offline);
  }

  
  Future<netConnState> checkNetConn() async {
    return isOnline ? netConnState.online : netConnState.offline;
  }

 
  Stream<netConnState> get onNetConnChanged {
    return recordStreamController.stream;
  }
}
