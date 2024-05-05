import '/flutter_flow/flutter_flow_util.dart';
import 'specialists_page_widget.dart' show SpecialistsPageWidget;
import 'package:flutter/material.dart';

class SpecialistsPageModel extends FlutterFlowModel<SpecialistsPageWidget> {
  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    unfocusNode.dispose();
  }
}
