import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/form_field_controller.dart';
import 'make_reminder_widget.dart' show MakeReminderWidget;
import 'package:flutter/material.dart';

class MakeReminderModel extends FlutterFlowModel<MakeReminderWidget> {
  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();
  // State field(s) for Doctors widget.
  String? doctorsValue;
  FormFieldController<String>? doctorsValueController;
  DateTime? datePicked;

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    unfocusNode.dispose();
  }
}
