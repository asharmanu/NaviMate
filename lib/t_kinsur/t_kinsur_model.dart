import '/flutter_flow/flutter_flow_util.dart';
import 't_kinsur_widget.dart' show TKinsurWidget;
import 'package:flutter/material.dart';

class TKinsurModel extends FlutterFlowModel<TKinsurWidget> {
  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    unfocusNode.dispose();
  }
}
