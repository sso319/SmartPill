import '/flutter_flow/flutter_flow_util.dart';
import 'medical_history_widget.dart' show MedicalHistoryWidget;
import 'package:flutter/material.dart';

class MedicalHistoryModel extends FlutterFlowModel<MedicalHistoryWidget> {
  ///  State fields for stateful widgets in this component.

  // State field(s) for TextField widget.
  FocusNode? textFieldFocusNode;
  TextEditingController? textController;
  String? Function(BuildContext, String?)? textControllerValidator;

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    textFieldFocusNode?.dispose();
    textController?.dispose();
  }
}
