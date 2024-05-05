import '/auth/firebase_auth/auth_util.dart';
import '/backend/backend.dart';
import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import 'package:flutter/material.dart';
import 'specialists_page_model.dart';
export 'specialists_page_model.dart';

class SpecialistsPageWidget extends StatefulWidget {
  const SpecialistsPageWidget({super.key});

  @override
  State<SpecialistsPageWidget> createState() => _SpecialistsPageWidgetState();
}

class _SpecialistsPageWidgetState extends State<SpecialistsPageWidget> {
  late SpecialistsPageModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => SpecialistsPageModel());
  }

  @override
  void dispose() {
    _model.dispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => _model.unfocusNode.canRequestFocus
          ? FocusScope.of(context).requestFocus(_model.unfocusNode)
          : FocusScope.of(context).unfocus(),
      child: Scaffold(
        key: scaffoldKey,
        backgroundColor: FlutterFlowTheme.of(context).primaryBackground,
        appBar: AppBar(
          backgroundColor: FlutterFlowTheme.of(context).primaryBackground,
          automaticallyImplyLeading: false,
          leading: FlutterFlowIconButton(
            borderRadius: 30.0,
            buttonSize: 60.0,
            icon: Icon(
              Icons.arrow_back_rounded,
              color: FlutterFlowTheme.of(context).primaryText,
              size: 30.0,
            ),
            onPressed: () async {
              context.safePop();
            },
          ),
          title: Text(
            FFLocalizations.of(context).getText(
              'wfm802k6' /* General Practitioners */,
            ),
            style: FlutterFlowTheme.of(context).headlineMedium.override(
                  fontFamily: 'Outfit',
                  letterSpacing: 0.0,
                ),
          ),
          actions: const [],
          centerTitle: false,
          elevation: 0.0,
        ),
        body: SafeArea(
          top: true,
          child: Column(
            mainAxisSize: MainAxisSize.max,
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: const EdgeInsetsDirectional.fromSTEB(0.0, 10.0, 0.0, 0.0),
                child: Row(
                  mainAxisSize: MainAxisSize.max,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Padding(
                      padding:
                          const EdgeInsetsDirectional.fromSTEB(0.0, 15.0, 0.0, 15.0),
                      child: Container(
                        width: 120.0,
                        height: 120.0,
                        decoration: BoxDecoration(
                          color: FlutterFlowTheme.of(context).accent2,
                          shape: BoxShape.circle,
                          border: Border.all(
                            color: FlutterFlowTheme.of(context).secondary,
                            width: 2.0,
                          ),
                        ),
                        child: Align(
                          alignment: const AlignmentDirectional(0.0, 0.0),
                          child: Padding(
                            padding: const EdgeInsets.all(4.0),
                            child: AuthUserStreamWidget(
                              builder: (context) => ClipRRect(
                                borderRadius: BorderRadius.circular(50.0),
                                child: Image.asset(
                                  'assets/images/IMG_1636.png',
                                  width: 170.0,
                                  height: 170.0,
                                  fit: BoxFit.cover,
                                ),
                              ),
                            ),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              Expanded(
                child: Container(
                  decoration: const BoxDecoration(),
                  child: StreamBuilder<List<SpecialistCollectionRecord>>(
                    stream: querySpecialistCollectionRecord(),
                    builder: (context, snapshot) {
                      // Customize what your widget looks like when it's loading.
                      if (!snapshot.hasData) {
                        return Center(
                          child: SizedBox(
                            width: 50.0,
                            height: 50.0,
                            child: CircularProgressIndicator(
                              valueColor: AlwaysStoppedAnimation<Color>(
                                FlutterFlowTheme.of(context).primary,
                              ),
                            ),
                          ),
                        );
                      }
                      List<SpecialistCollectionRecord>
                          columnSpecialistCollectionRecordList = snapshot.data!;
                      return Column(
                        mainAxisSize: MainAxisSize.max,
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: List.generate(
                            columnSpecialistCollectionRecordList.length,
                            (columnIndex) {
                          final columnSpecialistCollectionRecord =
                              columnSpecialistCollectionRecordList[columnIndex];
                          return Align(
                            alignment: const AlignmentDirectional(0.0, 0.0),
                            child: Padding(
                              padding: const EdgeInsetsDirectional.fromSTEB(
                                  0.0, 20.0, 0.0, 12.0),
                              child: FFButtonWidget(
                                onPressed: () async {
                                  context.pushNamed(
                                    'specialistSearchFinal',
                                    queryParameters: {
                                      'speciality': serializeParam(
                                        columnSpecialistCollectionRecord
                                            .profession,
                                        ParamType.String,
                                      ),
                                    }.withoutNulls,
                                  );
                                },
                                text:
                                    columnSpecialistCollectionRecord.profession,
                                options: FFButtonOptions(
                                  width: 270.0,
                                  height: 50.0,
                                  padding: const EdgeInsetsDirectional.fromSTEB(
                                      0.0, 0.0, 0.0, 0.0),
                                  iconPadding: const EdgeInsetsDirectional.fromSTEB(
                                      0.0, 0.0, 0.0, 0.0),
                                  color: FlutterFlowTheme.of(context).primary,
                                  textStyle: FlutterFlowTheme.of(context)
                                      .titleSmall
                                      .override(
                                        fontFamily: 'Readex Pro',
                                        letterSpacing: 0.0,
                                      ),
                                  elevation: 3.0,
                                  borderSide: const BorderSide(
                                    color: Colors.transparent,
                                    width: 1.0,
                                  ),
                                ),
                              ),
                            ),
                          );
                        }),
                      );
                    },
                  ),
                ),
              ),
              Container(
                width: 100.0,
                height: 100.0,
                constraints: const BoxConstraints(
                  maxHeight: 120.0,
                ),
                decoration: BoxDecoration(
                  color: FlutterFlowTheme.of(context).primaryBackground,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
