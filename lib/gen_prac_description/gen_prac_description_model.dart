import '/flutter_flow/flutter_flow_google_map.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'gen_prac_description_widget.dart' show GenPracDescriptionWidget;
import 'package:expandable/expandable.dart';
import 'package:flutter/material.dart';

class GenPracDescriptionModel
    extends FlutterFlowModel<GenPracDescriptionWidget> {
  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();
  // State field(s) for GoogleMap widget.
  LatLng? googleMapsCenter;
  final googleMapsController = Completer<GoogleMapController>();
  // State field(s) for Expandable widget.
  late ExpandableController expandableExpandableController;

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    unfocusNode.dispose();
    expandableExpandableController.dispose();
  }
}
