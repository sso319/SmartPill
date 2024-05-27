// ignore_for_file: unnecessary_getters_setters

import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class UserStruct extends BaseStruct {
  UserStruct({
    DateTime? birth,
    String? name,
    String? nickname,
    double? height,
    double? weight,
    String? sex,
  })  : _birth = birth,
        _name = name,
        _nickname = nickname,
        _height = height,
        _weight = weight,
        _sex = sex;

  // "birth" field.
  DateTime? _birth;
  DateTime get birth =>
      _birth ?? DateTime.fromMicrosecondsSinceEpoch(548949600000000);
  set birth(DateTime? val) => _birth = val;
  bool hasBirth() => _birth != null;

  // "name" field.
  String? _name;
  String get name => _name ?? '홍길동';
  set name(String? val) => _name = val;
  bool hasName() => _name != null;

  // "nickname" field.
  String? _nickname;
  String get nickname => _nickname ?? '아빠';
  set nickname(String? val) => _nickname = val;
  bool hasNickname() => _nickname != null;

  // "height" field.
  double? _height;
  double get height => _height ?? 176.0;
  set height(double? val) => _height = val;
  void incrementHeight(double amount) => _height = height + amount;
  bool hasHeight() => _height != null;

  // "weight" field.
  double? _weight;
  double get weight => _weight ?? 65.0;
  set weight(double? val) => _weight = val;
  void incrementWeight(double amount) => _weight = weight + amount;
  bool hasWeight() => _weight != null;

  // "sex" field.
  String? _sex;
  String get sex => _sex ?? 'MALE';
  set sex(String? val) => _sex = val;
  bool hasSex() => _sex != null;

  static UserStruct fromMap(Map<String, dynamic> data) => UserStruct(
        birth: data['birth'] as DateTime?,
        name: data['name'] as String?,
        nickname: data['nickname'] as String?,
        height: castToType<double>(data['height']),
        weight: castToType<double>(data['weight']),
        sex: data['sex'] as String?,
      );

  static UserStruct? maybeFromMap(dynamic data) =>
      data is Map ? UserStruct.fromMap(data.cast<String, dynamic>()) : null;

  Map<String, dynamic> toMap() => {
        'birth': _birth,
        'name': _name,
        'nickname': _nickname,
        'height': _height,
        'weight': _weight,
        'sex': _sex,
      }.withoutNulls;

  @override
  Map<String, dynamic> toSerializableMap() => {
        'birth': serializeParam(
          _birth,
          ParamType.DateTime,
        ),
        'name': serializeParam(
          _name,
          ParamType.String,
        ),
        'nickname': serializeParam(
          _nickname,
          ParamType.String,
        ),
        'height': serializeParam(
          _height,
          ParamType.double,
        ),
        'weight': serializeParam(
          _weight,
          ParamType.double,
        ),
        'sex': serializeParam(
          _sex,
          ParamType.String,
        ),
      }.withoutNulls;

  static UserStruct fromSerializableMap(Map<String, dynamic> data) =>
      UserStruct(
        birth: deserializeParam(
          data['birth'],
          ParamType.DateTime,
          false,
        ),
        name: deserializeParam(
          data['name'],
          ParamType.String,
          false,
        ),
        nickname: deserializeParam(
          data['nickname'],
          ParamType.String,
          false,
        ),
        height: deserializeParam(
          data['height'],
          ParamType.double,
          false,
        ),
        weight: deserializeParam(
          data['weight'],
          ParamType.double,
          false,
        ),
        sex: deserializeParam(
          data['sex'],
          ParamType.String,
          false,
        ),
      );

  @override
  String toString() => 'UserStruct(${toMap()})';

  @override
  bool operator ==(Object other) {
    return other is UserStruct &&
        birth == other.birth &&
        name == other.name &&
        nickname == other.nickname &&
        height == other.height &&
        weight == other.weight &&
        sex == other.sex;
  }

  @override
  int get hashCode =>
      const ListEquality().hash([birth, name, nickname, height, weight, sex]);
}

UserStruct createUserStruct({
  DateTime? birth,
  String? name,
  String? nickname,
  double? height,
  double? weight,
  String? sex,
}) =>
    UserStruct(
      birth: birth,
      name: name,
      nickname: nickname,
      height: height,
      weight: weight,
      sex: sex,
    );
