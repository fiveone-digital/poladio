import '/backend/api_requests/api_calls.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class SplashScreenModel extends FlutterFlowModel {
  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();
  // Stores action output result for [Backend Call - API (Dashboard)] action in SplashScreen widget.
  ApiCallResponse? dashboardResp;
  // Stores action output result for [Backend Call - API (Projects)] action in SplashScreen widget.
  ApiCallResponse? projectListResp;
  // Stores action output result for [Backend Call - API (Schemes By Projects)] action in SplashScreen widget.
  ApiCallResponse? schemeMaster;
  // Stores action output result for [Backend Call - API (Units By Projects)] action in SplashScreen widget.
  ApiCallResponse? unitMaster;

  /// Initialization and disposal methods.

  void initState(BuildContext context) {}

  void dispose() {
    unfocusNode.dispose();
  }

  /// Action blocks are added here.

  /// Additional helper methods are added here.
}
