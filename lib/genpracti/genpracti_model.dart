import '/flutter_flow/flutter_flow_util.dart';
import 'genpracti_widget.dart' show GenpractiWidget;
import 'package:flutter/material.dart';

class GenpractiModel extends FlutterFlowModel<GenpractiWidget> {
  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    unfocusNode.dispose();
  }
}
