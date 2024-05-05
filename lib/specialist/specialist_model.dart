import '/flutter_flow/flutter_flow_util.dart';
import 'specialist_widget.dart' show SpecialistWidget;
import 'package:flutter/material.dart';

class SpecialistModel extends FlutterFlowModel<SpecialistWidget> {
  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    unfocusNode.dispose();
  }
}
