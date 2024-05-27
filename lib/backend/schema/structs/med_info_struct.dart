// ignore_for_file: unnecessary_getters_setters

import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class MedInfoStruct extends BaseStruct {
  MedInfoStruct({
    String? pillNumber,
    int? howLong,
    String? startDate,
    String? period,
    String? timing,
    int? min,
    String? eatTime,
  })  : _pillNumber = pillNumber,
        _howLong = howLong,
        _startDate = startDate,
        _period = period,
        _timing = timing,
        _min = min,
        _eatTime = eatTime;

  // "pillNumber" field.
  String? _pillNumber;
  String get pillNumber => _pillNumber ?? '';
  set pillNumber(String? val) => _pillNumber = val;
  bool hasPillNumber() => _pillNumber != null;

  // "howLong" field.
  int? _howLong;
  int get howLong => _howLong ?? 0;
  set howLong(int? val) => _howLong = val;
  void incrementHowLong(int amount) => _howLong = howLong + amount;
  bool hasHowLong() => _howLong != null;

  // "startDate" field.
  String? _startDate;
  String get startDate => _startDate ?? '';
  set startDate(String? val) => _startDate = val;
  bool hasStartDate() => _startDate != null;

  // "period" field.
  String? _period;
  String get period => _period ?? '';
  set period(String? val) => _period = val;
  bool hasPeriod() => _period != null;

  // "timing" field.
  String? _timing;
  String get timing => _timing ?? '';
  set timing(String? val) => _timing = val;
  bool hasTiming() => _timing != null;

  // "min" field.
  int? _min;
  int get min => _min ?? 0;
  set min(int? val) => _min = val;
  void incrementMin(int amount) => _min = min + amount;
  bool hasMin() => _min != null;

  // "eatTime" field.
  String? _eatTime;
  String get eatTime => _eatTime ?? '';
  set eatTime(String? val) => _eatTime = val;
  bool hasEatTime() => _eatTime != null;

  static MedInfoStruct fromMap(Map<String, dynamic> data) => MedInfoStruct(
        pillNumber: data['pillNumber'] as String?,
        howLong: castToType<int>(data['howLong']),
        startDate: data['startDate'] as String?,
        period: data['period'] as String?,
        timing: data['timing'] as String?,
        min: castToType<int>(data['min']),
        eatTime: data['eatTime'] as String?,
      );

  static MedInfoStruct? maybeFromMap(dynamic data) =>
      data is Map ? MedInfoStruct.fromMap(data.cast<String, dynamic>()) : null;

  Map<String, dynamic> toMap() => {
        'pillNumber': _pillNumber,
        'howLong': _howLong,
        'startDate': _startDate,
        'period': _period,
        'timing': _timing,
        'min': _min,
        'eatTime': _eatTime,
      }.withoutNulls;

  @override
  Map<String, dynamic> toSerializableMap() => {
        'pillNumber': serializeParam(
          _pillNumber,
          ParamType.String,
        ),
        'howLong': serializeParam(
          _howLong,
          ParamType.int,
        ),
        'startDate': serializeParam(
          _startDate,
          ParamType.String,
        ),
        'period': serializeParam(
          _period,
          ParamType.String,
        ),
        'timing': serializeParam(
          _timing,
          ParamType.String,
        ),
        'min': serializeParam(
          _min,
          ParamType.int,
        ),
        'eatTime': serializeParam(
          _eatTime,
          ParamType.String,
        ),
      }.withoutNulls;

  static MedInfoStruct fromSerializableMap(Map<String, dynamic> data) =>
      MedInfoStruct(
        pillNumber: deserializeParam(
          data['pillNumber'],
          ParamType.String,
          false,
        ),
        howLong: deserializeParam(
          data['howLong'],
          ParamType.int,
          false,
        ),
        startDate: deserializeParam(
          data['startDate'],
          ParamType.String,
          false,
        ),
        period: deserializeParam(
          data['period'],
          ParamType.String,
          false,
        ),
        timing: deserializeParam(
          data['timing'],
          ParamType.String,
          false,
        ),
        min: deserializeParam(
          data['min'],
          ParamType.int,
          false,
        ),
        eatTime: deserializeParam(
          data['eatTime'],
          ParamType.String,
          false,
        ),
      );

  @override
  String toString() => 'MedInfoStruct(${toMap()})';

  @override
  bool operator ==(Object other) {
    return other is MedInfoStruct &&
        pillNumber == other.pillNumber &&
        howLong == other.howLong &&
        startDate == other.startDate &&
        period == other.period &&
        timing == other.timing &&
        min == other.min &&
        eatTime == other.eatTime;
  }

  @override
  int get hashCode => const ListEquality()
      .hash([pillNumber, howLong, startDate, period, timing, min, eatTime]);
}

MedInfoStruct createMedInfoStruct({
  String? pillNumber,
  int? howLong,
  String? startDate,
  String? period,
  String? timing,
  int? min,
  String? eatTime,
}) =>
    MedInfoStruct(
      pillNumber: pillNumber,
      howLong: howLong,
      startDate: startDate,
      period: period,
      timing: timing,
      min: min,
      eatTime: eatTime,
    );
