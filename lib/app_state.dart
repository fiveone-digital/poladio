import 'package:flutter/material.dart';
import 'backend/api_requests/api_manager.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'flutter_flow/flutter_flow_util.dart';
import 'dart:convert';

class FFAppState extends ChangeNotifier {
  static final FFAppState _instance = FFAppState._internal();

  factory FFAppState() {
    return _instance;
  }

  FFAppState._internal();

  Future initializePersistedState() async {
    prefs = await SharedPreferences.getInstance();
    _safeInit(() {
      _BookingPaymentNext =
          prefs.getInt('ff_BookingPaymentNext') ?? _BookingPaymentNext;
    });
    _safeInit(() {
      _NewWalkIn = prefs.getInt('ff_NewWalkIn') ?? _NewWalkIn;
    });
    _safeInit(() {
      _token = prefs.getString('ff_token') ?? _token;
    });
    _safeInit(() {
      if (prefs.containsKey('ff_ownerJson')) {
        try {
          _ownerJson = jsonDecode(prefs.getString('ff_ownerJson') ?? '');
        } catch (e) {
          print("Can't decode persisted json. Error: $e.");
        }
      }
    });
    _safeInit(() {
      _ownerList = prefs.getStringList('ff_ownerList')?.map((x) {
            try {
              return jsonDecode(x);
            } catch (e) {
              print("Can't decode persisted json. Error: $e.");
              return {};
            }
          }).toList() ??
          _ownerList;
    });
  }

  void update(VoidCallback callback) {
    callback();
    notifyListeners();
  }

  late SharedPreferences prefs;

  int _BookingPaymentNext = 0;
  int get BookingPaymentNext => _BookingPaymentNext;
  set BookingPaymentNext(int _value) {
    _BookingPaymentNext = _value;
    prefs.setInt('ff_BookingPaymentNext', _value);
  }

  int _NewWalkIn = 0;
  int get NewWalkIn => _NewWalkIn;
  set NewWalkIn(int _value) {
    _NewWalkIn = _value;
    prefs.setInt('ff_NewWalkIn', _value);
  }

  String _token = '';
  String get token => _token;
  set token(String _value) {
    _token = _value;
    prefs.setString('ff_token', _value);
  }

  dynamic _ownerJson = jsonDecode(
      '{\"name\":\"\",\"email\":\"\",\"pan\":\"\",\"pan_image\":\"\",\"aadhar_image\":\"\",\"photo_image\":\"\"}');
  dynamic get ownerJson => _ownerJson;
  set ownerJson(dynamic _value) {
    _ownerJson = _value;
    prefs.setString('ff_ownerJson', jsonEncode(_value));
  }

  List<dynamic> _ownerList = [];
  List<dynamic> get ownerList => _ownerList;
  set ownerList(List<dynamic> _value) {
    _ownerList = _value;
    prefs.setStringList(
        'ff_ownerList', _value.map((x) => jsonEncode(x)).toList());
  }

  void addToOwnerList(dynamic _value) {
    _ownerList.add(_value);
    prefs.setStringList(
        'ff_ownerList', _ownerList.map((x) => jsonEncode(x)).toList());
  }

  void removeFromOwnerList(dynamic _value) {
    _ownerList.remove(_value);
    prefs.setStringList(
        'ff_ownerList', _ownerList.map((x) => jsonEncode(x)).toList());
  }

  void removeAtIndexFromOwnerList(int _index) {
    _ownerList.removeAt(_index);
    prefs.setStringList(
        'ff_ownerList', _ownerList.map((x) => jsonEncode(x)).toList());
  }

  void updateOwnerListAtIndex(
    int _index,
    dynamic Function(dynamic) updateFn,
  ) {
    _ownerList[_index] = updateFn(_ownerList[_index]);
    prefs.setStringList(
        'ff_ownerList', _ownerList.map((x) => jsonEncode(x)).toList());
  }
}

LatLng? _latLngFromString(String? val) {
  if (val == null) {
    return null;
  }
  final split = val.split(',');
  final lat = double.parse(split.first);
  final lng = double.parse(split.last);
  return LatLng(lat, lng);
}

void _safeInit(Function() initializeField) {
  try {
    initializeField();
  } catch (_) {}
}

Future _safeInitAsync(Function() initializeField) async {
  try {
    await initializeField();
  } catch (_) {}
}
