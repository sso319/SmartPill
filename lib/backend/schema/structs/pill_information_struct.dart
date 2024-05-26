// ignore_for_file: unnecessary_getters_setters

import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class PillInformationStruct extends BaseStruct {
  PillInformationStruct({
    String? dosageForm,
    String? effect,
    String? category,
    String? imagePath,
  })  : _dosageForm = dosageForm,
        _effect = effect,
        _category = category,
        _imagePath = imagePath;

  // "dosageForm" field.
  String? _dosageForm;
  String get dosageForm => _dosageForm ?? '';
  set dosageForm(String? val) => _dosageForm = val;
  bool hasDosageForm() => _dosageForm != null;

  // "effect" field.
  String? _effect;
  String get effect => _effect ?? '';
  set effect(String? val) => _effect = val;
  bool hasEffect() => _effect != null;

  // "category" field.
  String? _category;
  String get category => _category ?? '';
  set category(String? val) => _category = val;
  bool hasCategory() => _category != null;

  // "imagePath" field.
  String? _imagePath;
  String get imagePath => _imagePath ?? '';
  set imagePath(String? val) => _imagePath = val;
  bool hasImagePath() => _imagePath != null;

  static PillInformationStruct fromMap(Map<String, dynamic> data) =>
      PillInformationStruct(
        dosageForm: data['dosageForm'] as String?,
        effect: data['effect'] as String?,
        category: data['category'] as String?,
        imagePath: data['imagePath'] as String?,
      );

  static PillInformationStruct? maybeFromMap(dynamic data) => data is Map
      ? PillInformationStruct.fromMap(data.cast<String, dynamic>())
      : null;

  Map<String, dynamic> toMap() => {
        'dosageForm': _dosageForm,
        'effect': _effect,
        'category': _category,
        'imagePath': _imagePath,
      }.withoutNulls;

  @override
  Map<String, dynamic> toSerializableMap() => {
        'dosageForm': serializeParam(
          _dosageForm,
          ParamType.String,
        ),
        'effect': serializeParam(
          _effect,
          ParamType.String,
        ),
        'category': serializeParam(
          _category,
          ParamType.String,
        ),
        'imagePath': serializeParam(
          _imagePath,
          ParamType.String,
        ),
      }.withoutNulls;

  static PillInformationStruct fromSerializableMap(Map<String, dynamic> data) =>
      PillInformationStruct(
        dosageForm: deserializeParam(
          data['dosageForm'],
          ParamType.String,
          false,
        ),
        effect: deserializeParam(
          data['effect'],
          ParamType.String,
          false,
        ),
        category: deserializeParam(
          data['category'],
          ParamType.String,
          false,
        ),
        imagePath: deserializeParam(
          data['imagePath'],
          ParamType.String,
          false,
        ),
      );

  @override
  String toString() => 'PillInformationStruct(${toMap()})';

  @override
  bool operator ==(Object other) {
    return other is PillInformationStruct &&
        dosageForm == other.dosageForm &&
        effect == other.effect &&
        category == other.category &&
        imagePath == other.imagePath;
  }

  @override
  int get hashCode =>
      const ListEquality().hash([dosageForm, effect, category, imagePath]);
}

PillInformationStruct createPillInformationStruct({
  String? dosageForm,
  String? effect,
  String? category,
  String? imagePath,
}) =>
    PillInformationStruct(
      dosageForm: dosageForm,
      effect: effect,
      category: category,
      imagePath: imagePath,
    );
