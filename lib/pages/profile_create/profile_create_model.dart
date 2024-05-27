import '/backend/api_requests/api_calls.dart';
import '/backend/schema/structs/index.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/form_field_controller.dart';
import 'profile_create_widget.dart' show ProfileCreateWidget;
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class ProfileCreateModel extends FlutterFlowModel<ProfileCreateWidget> {
  ///  Local state fields for this page.

  UserStruct? user;
  void updateUserStruct(Function(UserStruct) updateFn) =>
      updateFn(user ??= UserStruct());

  ///  State fields for stateful widgets in this page.

  final formKey = GlobalKey<FormState>();
  // State field(s) for userName widget.
  FocusNode? userNameFocusNode;
  TextEditingController? userNameTextController;
  String? Function(BuildContext, String?)? userNameTextControllerValidator;
  String? _userNameTextControllerValidator(BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return 'Field is required';
    }

    return null;
  }

  // State field(s) for userNickname widget.
  FocusNode? userNicknameFocusNode;
  TextEditingController? userNicknameTextController;
  String? Function(BuildContext, String?)? userNicknameTextControllerValidator;
  String? _userNicknameTextControllerValidator(
      BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return 'Field is required';
    }

    return null;
  }

  DateTime? datePicked;
  // State field(s) for userBirth widget.
  FocusNode? userBirthFocusNode;
  TextEditingController? userBirthTextController;
  String? Function(BuildContext, String?)? userBirthTextControllerValidator;
  // State field(s) for userHeight widget.
  FocusNode? userHeightFocusNode;
  TextEditingController? userHeightTextController;
  String? Function(BuildContext, String?)? userHeightTextControllerValidator;
  String? _userHeightTextControllerValidator(
      BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return 'Field is required';
    }

    return null;
  }

  // State field(s) for userWeight widget.
  FocusNode? userWeightFocusNode;
  TextEditingController? userWeightTextController;
  String? Function(BuildContext, String?)? userWeightTextControllerValidator;
  String? _userWeightTextControllerValidator(
      BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return 'Field is required';
    }

    return null;
  }

  // State field(s) for gender widget.
  String? genderValue;
  FormFieldController<String>? genderValueController;
  // Stores action output result for [Backend Call - API (createProfiles)] action in Button widget.
  ApiCallResponse? apiResultCreateProfile;

  @override
  void initState(BuildContext context) {
    userNameTextControllerValidator = _userNameTextControllerValidator;
    userNicknameTextControllerValidator = _userNicknameTextControllerValidator;
    userHeightTextControllerValidator = _userHeightTextControllerValidator;
    userWeightTextControllerValidator = _userWeightTextControllerValidator;
  }

  @override
  void dispose() {
    userNameFocusNode?.dispose();
    userNameTextController?.dispose();

    userNicknameFocusNode?.dispose();
    userNicknameTextController?.dispose();

    userBirthFocusNode?.dispose();
    userBirthTextController?.dispose();

    userHeightFocusNode?.dispose();
    userHeightTextController?.dispose();

    userWeightFocusNode?.dispose();
    userWeightTextController?.dispose();
  }
}
