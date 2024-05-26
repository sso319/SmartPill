import '/backend/api_requests/api_calls.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'profile_update_widget.dart' show ProfileUpdateWidget;
import 'package:flutter/material.dart';

class ProfileUpdateModel extends FlutterFlowModel<ProfileUpdateWidget> {
  ///  State fields for stateful widgets in this page.

  // Stores action output result for [Backend Call - API (updateProfile)] action in Column widget.
  ApiCallResponse? apiResultUpdateProfile;
  // State field(s) for userName widget.
  FocusNode? userNameFocusNode;
  TextEditingController? userNameTextController;
  String? Function(BuildContext, String?)? userNameTextControllerValidator;
  // State field(s) for userNickname widget.
  FocusNode? userNicknameFocusNode;
  TextEditingController? userNicknameTextController;
  String? Function(BuildContext, String?)? userNicknameTextControllerValidator;
  // State field(s) for userHeight widget.
  FocusNode? userHeightFocusNode;
  TextEditingController? userHeightTextController;
  String? Function(BuildContext, String?)? userHeightTextControllerValidator;
  // State field(s) for userWeight widget.
  FocusNode? userWeightFocusNode;
  TextEditingController? userWeightTextController;
  String? Function(BuildContext, String?)? userWeightTextControllerValidator;

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    userNameFocusNode?.dispose();
    userNameTextController?.dispose();

    userNicknameFocusNode?.dispose();
    userNicknameTextController?.dispose();

    userHeightFocusNode?.dispose();
    userHeightTextController?.dispose();

    userWeightFocusNode?.dispose();
    userWeightTextController?.dispose();
  }
}
