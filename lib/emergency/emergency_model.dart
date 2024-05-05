import '/flutter_flow/flutter_flow_util.dart';
import 'emergency_widget.dart' show EmergencyWidget;
import 'package:flutter/material.dart';

class EmergencyModel extends FlutterFlowModel<EmergencyWidget> {
  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    unfocusNode.dispose();
  }
}
