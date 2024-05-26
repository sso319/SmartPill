// ignore_for_file: unnecessary_getters_setters

import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class UserStruct extends BaseStruct {
  UserStruct({
    DateTime? birth,
  }) : _birth = birth;

  // "birth" field.
  DateTime? _birth;
  DateTime? get birth => _birth;
  set birth(DateTime? val) => _birth = val;
  bool hasBirth() => _birth != null;

  static UserStruct fromMap(Map<String, dynamic> data) => UserStruct(
        birth: data['birth'] as DateTime?,
      );

  static UserStruct? maybeFromMap(dynamic data) =>
      data is Map ? UserStruct.fromMap(data.cast<String, dynamic>()) : null;

  Map<String, dynamic> toMap() => {
        'birth': _birth,
      }.withoutNulls;

  @override
  Map<String, dynamic> toSerializableMap() => {
        'birth': serializeParam(
          _birth,
          ParamType.DateTime,
        ),
      }.withoutNulls;

  static UserStruct fromSerializableMap(Map<String, dynamic> data) =>
      UserStruct(
        birth: deserializeParam(
          data['birth'],
          ParamType.DateTime,
          false,
        ),
      );

  @override
  String toString() => 'UserStruct(${toMap()})';

  @override
  bool operator ==(Object other) {
    return other is UserStruct && birth == other.birth;
  }

  @override
  int get hashCode => const ListEquality().hash([birth]);
}

UserStruct createUserStruct({
  DateTime? birth,
}) =>
    UserStruct(
      birth: birth,
    );
