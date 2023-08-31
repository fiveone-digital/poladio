// ignore_for_file: unnecessary_getters_setters

import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class OwnerDataStruct extends BaseStruct {
  OwnerDataStruct({
    String? name,
    String? pan,
    String? email,
    String? panImage,
  })  : _name = name,
        _pan = pan,
        _email = email,
        _panImage = panImage;

  // "name" field.
  String? _name;
  String get name => _name ?? '';
  set name(String? val) => _name = val;
  bool hasName() => _name != null;

  // "pan" field.
  String? _pan;
  String get pan => _pan ?? '';
  set pan(String? val) => _pan = val;
  bool hasPan() => _pan != null;

  // "email" field.
  String? _email;
  String get email => _email ?? '';
  set email(String? val) => _email = val;
  bool hasEmail() => _email != null;

  // "pan_image" field.
  String? _panImage;
  String get panImage => _panImage ?? '';
  set panImage(String? val) => _panImage = val;
  bool hasPanImage() => _panImage != null;

  static OwnerDataStruct fromMap(Map<String, dynamic> data) => OwnerDataStruct(
        name: data['name'] as String?,
        pan: data['pan'] as String?,
        email: data['email'] as String?,
        panImage: data['pan_image'] as String?,
      );

  static OwnerDataStruct? maybeFromMap(dynamic data) =>
      data is Map<String, dynamic> ? OwnerDataStruct.fromMap(data) : null;

  Map<String, dynamic> toMap() => {
        'name': _name,
        'pan': _pan,
        'email': _email,
        'pan_image': _panImage,
      }.withoutNulls;

  @override
  Map<String, dynamic> toSerializableMap() => {
        'name': serializeParam(
          _name,
          ParamType.String,
        ),
        'pan': serializeParam(
          _pan,
          ParamType.String,
        ),
        'email': serializeParam(
          _email,
          ParamType.String,
        ),
        'pan_image': serializeParam(
          _panImage,
          ParamType.String,
        ),
      }.withoutNulls;

  static OwnerDataStruct fromSerializableMap(Map<String, dynamic> data) =>
      OwnerDataStruct(
        name: deserializeParam(
          data['name'],
          ParamType.String,
          false,
        ),
        pan: deserializeParam(
          data['pan'],
          ParamType.String,
          false,
        ),
        email: deserializeParam(
          data['email'],
          ParamType.String,
          false,
        ),
        panImage: deserializeParam(
          data['pan_image'],
          ParamType.String,
          false,
        ),
      );

  @override
  String toString() => 'OwnerDataStruct(${toMap()})';

  @override
  bool operator ==(Object other) {
    return other is OwnerDataStruct &&
        name == other.name &&
        pan == other.pan &&
        email == other.email &&
        panImage == other.panImage;
  }

  @override
  int get hashCode => const ListEquality().hash([name, pan, email, panImage]);
}

OwnerDataStruct createOwnerDataStruct({
  String? name,
  String? pan,
  String? email,
  String? panImage,
}) =>
    OwnerDataStruct(
      name: name,
      pan: pan,
      email: email,
      panImage: panImage,
    );
