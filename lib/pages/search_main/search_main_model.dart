import '/backend/api_requests/api_calls.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'search_main_widget.dart' show SearchMainWidget;
import 'package:flutter/material.dart';

class SearchMainModel extends FlutterFlowModel<SearchMainWidget> {
  ///  Local state fields for this page.

  bool? isList;

  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();
  // State field(s) for TextField widget.
  FocusNode? textFieldFocusNode;
  TextEditingController? textController;
  String? Function(BuildContext, String?)? textControllerValidator;
  // Stores action output result for [Backend Call - API (getPillInformation)] action in IconButton widget.
  ApiCallResponse? apiResultSearch;

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    unfocusNode.dispose();
    textFieldFocusNode?.dispose();
    textController?.dispose();
  }
}
