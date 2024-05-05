import '/flutter_flow/flutter_flow_util.dart';
import 'insurance_widget.dart' show InsuranceWidget;
import 'package:flutter/material.dart';

class InsuranceModel extends FlutterFlowModel<InsuranceWidget> {
  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    unfocusNode.dispose();
  }
}
