import '/flutter_flow/flutter_flow_util.dart';
import 'write_review_widget.dart' show WriteReviewWidget;
import 'package:flutter/material.dart';

class WriteReviewModel extends FlutterFlowModel<WriteReviewWidget> {
  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();
  // State field(s) for Switch widget.
  bool switchValue = false;
  // State field(s) for TextField widget.
  FocusNode? textFieldFocusNode;
  TextEditingController? textController;
  String? Function(BuildContext, String?)? textControllerValidator;

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    unfocusNode.dispose();
    textFieldFocusNode?.dispose();
    textController?.dispose();
  }
}
