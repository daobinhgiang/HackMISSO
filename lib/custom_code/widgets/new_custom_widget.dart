// Automatic FlutterFlow imports
import '/backend/backend.dart';
import '/backend/schema/enums/enums.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'index.dart'; // Imports other custom widgets
import 'package:flutter/material.dart';
// Begin custom widget code
// DO NOT REMOVE OR MODIFY THE CODE ABOVE!

import '/flutter_flow/flutter_flow_drop_down.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import '/flutter_flow/form_field_controller.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

import 'post_signup_q_a_model.dart';
export 'post_signup_q_a_model.dart';

class PostSignupQAWidget extends StatefulWidget {
  const PostSignupQAWidget({super.key});

  @override
  State<PostSignupQAWidget> createState() => _PostSignupQAWidgetState();
}

class _PostSignupQAWidgetState extends State<PostSignupQAWidget> {
  late PostSignupQAModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => PostSignupQAModel());
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
          backgroundColor: FlutterFlowTheme.of(context).primary,
          automaticallyImplyLeading: false,
          title: Text(
            'Page Title',
            style: FlutterFlowTheme.of(context).headlineMedium.override(
                  fontFamily: 'Outfit',
                  color: Colors.white,
                  fontSize: 22,
                  letterSpacing: 0,
                ),
          ),
          actions: [],
          centerTitle: false,
          elevation: 2,
        ),
        body: SafeArea(
          top: true,
          child: Column(
            mainAxisSize: MainAxisSize.max,
            children: [
              Align(
                alignment: AlignmentDirectional(0, 0),
                child: Text(
                  'What is your preferred language?',
                  style: FlutterFlowTheme.of(context).bodyMedium.override(
                        fontFamily: 'Readex Pro',
                        fontSize: 20,
                        letterSpacing: 0,
                      ),
                ),
              ),
              FlutterFlowDropDown<String>(
                key: ValueKey('String'),
                controller: _model.dropDownValueController1 ??=
                    FormFieldController<String>(null),
                options: ['English', 'Spanish', 'Vietnamese', 'Japanese'],
                onChanged: (val) => setState(() => _model.dropDownValue1 = val),
                width: 945,
                height: 56,
                searchHintTextStyle:
                    FlutterFlowTheme.of(context).titleMedium.override(
                          fontFamily: 'Readex Pro',
                          fontSize: 20,
                          letterSpacing: 0,
                        ),
                searchTextStyle:
                    FlutterFlowTheme.of(context).bodyMedium.override(
                          fontFamily: 'Readex Pro',
                          letterSpacing: 0,
                        ),
                textStyle: FlutterFlowTheme.of(context).bodyMedium.override(
                      fontFamily: 'Readex Pro',
                      letterSpacing: 0,
                    ),
                hintText: 'Please select your preferred language ....',
                searchHintText: 'Search for preferred language',
                icon: Icon(
                  Icons.keyboard_arrow_down_rounded,
                  color: FlutterFlowTheme.of(context).secondaryText,
                  size: 24,
                ),
                fillColor: FlutterFlowTheme.of(context).secondaryBackground,
                elevation: 2,
                borderColor: FlutterFlowTheme.of(context).alternate,
                borderWidth: 2,
                borderRadius: 8,
                margin: EdgeInsetsDirectional.fromSTEB(16, 4, 16, 4),
                hidesUnderline: true,
                isOverButton: true,
                isSearchable: true,
                isMultiSelect: false,
              ),
              Text(
                'What is your major?',
                style: FlutterFlowTheme.of(context).bodyMedium.override(
                      fontFamily: 'Readex Pro',
                      fontSize: 20,
                      letterSpacing: 0,
                    ),
              ),
              FlutterFlowDropDown<String>(
                key: ValueKey('String'),
                controller: _model.dropDownValueController2 ??=
                    FormFieldController<String>(null),
                options: ['MIS', 'CS', 'HR'],
                onChanged: (val) => setState(() => _model.dropDownValue2 = val),
                width: 945,
                height: 56,
                textStyle: FlutterFlowTheme.of(context).bodyMedium.override(
                      fontFamily: 'Readex Pro',
                      letterSpacing: 0,
                    ),
                hintText: 'Please select your major ...',
                icon: Icon(
                  Icons.keyboard_arrow_down_rounded,
                  color: FlutterFlowTheme.of(context).secondaryText,
                  size: 24,
                ),
                fillColor: FlutterFlowTheme.of(context).secondaryBackground,
                elevation: 2,
                borderColor: FlutterFlowTheme.of(context).alternate,
                borderWidth: 2,
                borderRadius: 8,
                margin: EdgeInsetsDirectional.fromSTEB(16, 4, 16, 4),
                hidesUnderline: true,
                isOverButton: true,
                isSearchable: false,
                isMultiSelect: false,
              ),
              Text(
                'What is your communication style?',
                style: FlutterFlowTheme.of(context).bodyMedium.override(
                      fontFamily: 'Readex Pro',
                      fontSize: 20,
                      letterSpacing: 0,
                    ),
              ),
              FlutterFlowDropDown<String>(
                controller: _model.dropDownValueController3 ??=
                    FormFieldController<String>(null),
                options: ['Introvert', 'Extrovert', 'Either'],
                onChanged: (val) => setState(() => _model.dropDownValue3 = val),
                width: 939,
                height: 56,
                textStyle: FlutterFlowTheme.of(context).bodyMedium.override(
                      fontFamily: 'Readex Pro',
                      letterSpacing: 0,
                    ),
                hintText: 'Please select your communication style ...',
                icon: Icon(
                  Icons.keyboard_arrow_down_rounded,
                  color: FlutterFlowTheme.of(context).secondaryText,
                  size: 24,
                ),
                fillColor: FlutterFlowTheme.of(context).secondaryBackground,
                elevation: 2,
                borderColor: FlutterFlowTheme.of(context).alternate,
                borderWidth: 2,
                borderRadius: 8,
                margin: EdgeInsetsDirectional.fromSTEB(16, 4, 16, 4),
                hidesUnderline: true,
                isOverButton: true,
                isSearchable: false,
                isMultiSelect: false,
              ),
              Text(
                'What kind of study place you prefer?',
                style: FlutterFlowTheme.of(context).bodyMedium.override(
                      fontFamily: 'Readex Pro',
                      fontSize: 20,
                      letterSpacing: 0,
                    ),
              ),
              FlutterFlowDropDown<String>(
                controller: _model.dropDownValueController4 ??=
                    FormFieldController<String>(null),
                options: ['Nature', 'Silent', 'Crowded'],
                onChanged: (val) => setState(() => _model.dropDownValue4 = val),
                width: 936,
                height: 56,
                textStyle: FlutterFlowTheme.of(context).bodyMedium.override(
                      fontFamily: 'Readex Pro',
                      letterSpacing: 0,
                    ),
                hintText:
                    'Please select your preferred kind of study place ...',
                icon: Icon(
                  Icons.keyboard_arrow_down_rounded,
                  color: FlutterFlowTheme.of(context).secondaryText,
                  size: 24,
                ),
                fillColor: FlutterFlowTheme.of(context).secondaryBackground,
                elevation: 2,
                borderColor: FlutterFlowTheme.of(context).alternate,
                borderWidth: 2,
                borderRadius: 8,
                margin: EdgeInsetsDirectional.fromSTEB(16, 4, 16, 4),
                hidesUnderline: true,
                isOverButton: true,
                isSearchable: false,
                isMultiSelect: false,
              ),
              Text(
                'Where do you usually study?',
                style: FlutterFlowTheme.of(context).bodyMedium.override(
                      fontFamily: 'Readex Pro',
                      fontSize: 20,
                      letterSpacing: 0,
                    ),
              ),
              FlutterFlowDropDown<String>(
                controller: _model.dropDownValueController5 ??=
                    FormFieldController<String>(null),
                options: [
                  'Melcher Hall',
                  'CBB',
                  'MD Library',
                  'Fountain',
                  'Dormitory'
                ],
                onChanged: (val) => setState(() => _model.dropDownValue5 = val),
                width: 934,
                height: 56,
                textStyle: FlutterFlowTheme.of(context).bodyMedium.override(
                      fontFamily: 'Readex Pro',
                      letterSpacing: 0,
                    ),
                hintText: 'Please select a place',
                icon: Icon(
                  Icons.keyboard_arrow_down_rounded,
                  color: FlutterFlowTheme.of(context).secondaryText,
                  size: 24,
                ),
                fillColor: FlutterFlowTheme.of(context).secondaryBackground,
                elevation: 2,
                borderColor: FlutterFlowTheme.of(context).alternate,
                borderWidth: 2,
                borderRadius: 8,
                margin: EdgeInsetsDirectional.fromSTEB(16, 4, 16, 4),
                hidesUnderline: true,
                isOverButton: true,
                isSearchable: false,
                isMultiSelect: false,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
