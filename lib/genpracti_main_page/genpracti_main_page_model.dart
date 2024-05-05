import '/backend/backend.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/form_field_controller.dart';
import 'genpracti_main_page_widget.dart' show GenpractiMainPageWidget;
import 'package:expandable/expandable.dart';
import 'package:flutter/material.dart';

class GenpractiMainPageModel extends FlutterFlowModel<GenpractiMainPageWidget> {
  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();
  // State field(s) for TextField widget.
  FocusNode? textFieldFocusNode;
  TextEditingController? textController;
  String? Function(BuildContext, String?)? textControllerValidator;
  List<GeneralPractitionersRecord> simpleSearchResults = [];
  // State field(s) for Expandable widget.
  late ExpandableController expandableExpandableController;

  // State field(s) for ChoiceChips widget.
  FormFieldController<List<String>>? choiceChipsValueController;
  List<String>? get choiceChipsValues => choiceChipsValueController?.value;
  set choiceChipsValues(List<String>? val) =>
      choiceChipsValueController?.value = val;
  // State field(s) for SortBy widget.
  String? sortByValue;
  FormFieldController<String>? sortByValueController;

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    unfocusNode.dispose();
    textFieldFocusNode?.dispose();
    textController?.dispose();

    expandableExpandableController.dispose();
  }
}
