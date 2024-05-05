import '/flutter_flow/flutter_flow_util.dart';
import 'hospitals_widget.dart' show HospitalsWidget;
import 'package:flutter/material.dart';

class HospitalsModel extends FlutterFlowModel<HospitalsWidget> {
  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    unfocusNode.dispose();
  }
}
