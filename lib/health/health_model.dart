import '/flutter_flow/flutter_flow_util.dart';
import 'health_widget.dart' show HealthWidget;
import 'package:flutter/material.dart';

class HealthModel extends FlutterFlowModel<HealthWidget> {
  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    unfocusNode.dispose();
  }
}
