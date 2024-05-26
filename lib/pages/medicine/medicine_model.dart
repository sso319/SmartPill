import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/form_field_controller.dart';
import 'medicine_widget.dart' show MedicineWidget;
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class MedicineModel extends FlutterFlowModel<MedicineWidget> {
  ///  State fields for stateful widgets in this page.

  // State field(s) for days widget.
  FocusNode? daysFocusNode;
  TextEditingController? daysTextController;
  String? Function(BuildContext, String?)? daysTextControllerValidator;
  // State field(s) for TextField widget.
  FocusNode? textFieldFocusNode1;
  TextEditingController? textFieldTextController1;
  String? Function(BuildContext, String?)? textFieldTextController1Validator;
  DateTime? datePicked1;
  // State field(s) for timezone widget.
  String? timezoneValue;
  FormFieldController<String>? timezoneValueController;
  // State field(s) for TextField widget.
  FocusNode? textFieldFocusNode2;
  TextEditingController? textFieldTextController2;
  String? Function(BuildContext, String?)? textFieldTextController2Validator;
  DateTime? datePicked2;
  // State field(s) for Switch widget.
  bool? switchValue;

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    daysFocusNode?.dispose();
    daysTextController?.dispose();

    textFieldFocusNode1?.dispose();
    textFieldTextController1?.dispose();

    textFieldFocusNode2?.dispose();
    textFieldTextController2?.dispose();
  }
}
