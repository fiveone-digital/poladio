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
      _projectList = prefs.getStringList('ff_projectList')?.map((x) {
            try {
              return jsonDecode(x);
            } catch (e) {
              print("Can't decode persisted json. Error: $e.");
              return {};
            }
          }).toList() ??
          _projectList;
    });
    _safeInit(() {
      if (prefs.containsKey('ff_currentProject')) {
        try {
          _currentProject =
              jsonDecode(prefs.getString('ff_currentProject') ?? '');
        } catch (e) {
          print("Can't decode persisted json. Error: $e.");
        }
      }
    });
    _safeInit(() {
      _UnitMasterList = prefs.getStringList('ff_UnitMasterList')?.map((x) {
            try {
              return jsonDecode(x);
            } catch (e) {
              print("Can't decode persisted json. Error: $e.");
              return {};
            }
          }).toList() ??
          _UnitMasterList;
    });
    _safeInit(() {
      _SchemeMasterList = prefs.getStringList('ff_SchemeMasterList')?.map((x) {
            try {
              return jsonDecode(x);
            } catch (e) {
              print("Can't decode persisted json. Error: $e.");
              return {};
            }
          }).toList() ??
          _SchemeMasterList;
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

  List<dynamic> _ownerList = [];
  List<dynamic> get ownerList => _ownerList;
  set ownerList(List<dynamic> _value) {
    _ownerList = _value;
  }

  void addToOwnerList(dynamic _value) {
    _ownerList.add(_value);
  }

  void removeFromOwnerList(dynamic _value) {
    _ownerList.remove(_value);
  }

  void removeAtIndexFromOwnerList(int _index) {
    _ownerList.removeAt(_index);
  }

  void updateOwnerListAtIndex(
    int _index,
    dynamic Function(dynamic) updateFn,
  ) {
    _ownerList[_index] = updateFn(_ownerList[_index]);
  }

  List<dynamic> _projectList = [];
  List<dynamic> get projectList => _projectList;
  set projectList(List<dynamic> _value) {
    _projectList = _value;
    prefs.setStringList(
        'ff_projectList', _value.map((x) => jsonEncode(x)).toList());
  }

  void addToProjectList(dynamic _value) {
    _projectList.add(_value);
    prefs.setStringList(
        'ff_projectList', _projectList.map((x) => jsonEncode(x)).toList());
  }

  void removeFromProjectList(dynamic _value) {
    _projectList.remove(_value);
    prefs.setStringList(
        'ff_projectList', _projectList.map((x) => jsonEncode(x)).toList());
  }

  void removeAtIndexFromProjectList(int _index) {
    _projectList.removeAt(_index);
    prefs.setStringList(
        'ff_projectList', _projectList.map((x) => jsonEncode(x)).toList());
  }

  void updateProjectListAtIndex(
    int _index,
    dynamic Function(dynamic) updateFn,
  ) {
    _projectList[_index] = updateFn(_projectList[_index]);
    prefs.setStringList(
        'ff_projectList', _projectList.map((x) => jsonEncode(x)).toList());
  }

  dynamic _currentProject;
  dynamic get currentProject => _currentProject;
  set currentProject(dynamic _value) {
    _currentProject = _value;
    prefs.setString('ff_currentProject', jsonEncode(_value));
  }

  List<dynamic> _UnitMasterList = [];
  List<dynamic> get UnitMasterList => _UnitMasterList;
  set UnitMasterList(List<dynamic> _value) {
    _UnitMasterList = _value;
    prefs.setStringList(
        'ff_UnitMasterList', _value.map((x) => jsonEncode(x)).toList());
  }

  void addToUnitMasterList(dynamic _value) {
    _UnitMasterList.add(_value);
    prefs.setStringList('ff_UnitMasterList',
        _UnitMasterList.map((x) => jsonEncode(x)).toList());
  }

  void removeFromUnitMasterList(dynamic _value) {
    _UnitMasterList.remove(_value);
    prefs.setStringList('ff_UnitMasterList',
        _UnitMasterList.map((x) => jsonEncode(x)).toList());
  }

  void removeAtIndexFromUnitMasterList(int _index) {
    _UnitMasterList.removeAt(_index);
    prefs.setStringList('ff_UnitMasterList',
        _UnitMasterList.map((x) => jsonEncode(x)).toList());
  }

  void updateUnitMasterListAtIndex(
    int _index,
    dynamic Function(dynamic) updateFn,
  ) {
    _UnitMasterList[_index] = updateFn(_UnitMasterList[_index]);
    prefs.setStringList('ff_UnitMasterList',
        _UnitMasterList.map((x) => jsonEncode(x)).toList());
  }

  List<dynamic> _SchemeMasterList = [];
  List<dynamic> get SchemeMasterList => _SchemeMasterList;
  set SchemeMasterList(List<dynamic> _value) {
    _SchemeMasterList = _value;
    prefs.setStringList(
        'ff_SchemeMasterList', _value.map((x) => jsonEncode(x)).toList());
  }

  void addToSchemeMasterList(dynamic _value) {
    _SchemeMasterList.add(_value);
    prefs.setStringList('ff_SchemeMasterList',
        _SchemeMasterList.map((x) => jsonEncode(x)).toList());
  }

  void removeFromSchemeMasterList(dynamic _value) {
    _SchemeMasterList.remove(_value);
    prefs.setStringList('ff_SchemeMasterList',
        _SchemeMasterList.map((x) => jsonEncode(x)).toList());
  }

  void removeAtIndexFromSchemeMasterList(int _index) {
    _SchemeMasterList.removeAt(_index);
    prefs.setStringList('ff_SchemeMasterList',
        _SchemeMasterList.map((x) => jsonEncode(x)).toList());
  }

  void updateSchemeMasterListAtIndex(
    int _index,
    dynamic Function(dynamic) updateFn,
  ) {
    _SchemeMasterList[_index] = updateFn(_SchemeMasterList[_index]);
    prefs.setStringList('ff_SchemeMasterList',
        _SchemeMasterList.map((x) => jsonEncode(x)).toList());
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
