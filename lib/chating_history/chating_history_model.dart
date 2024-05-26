import '/flutter_flow/flutter_flow_util.dart';
import 'chating_history_widget.dart' show ChatingHistoryWidget;
import 'package:flutter/material.dart';

class ChatingHistoryModel extends FlutterFlowModel<ChatingHistoryWidget> {
  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    unfocusNode.dispose();
  }
}
