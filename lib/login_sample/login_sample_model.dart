import '/flutter_flow/flutter_flow_util.dart';
import 'login_sample_widget.dart' show LoginSampleWidget;
import 'package:flutter/material.dart';

class LoginSampleModel extends FlutterFlowModel<LoginSampleWidget> {
  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    unfocusNode.dispose();
  }
}
