import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class AddNewSchemeModel extends FlutterFlowModel {
  ///  State fields for stateful widgets in this component.

  // State field(s) for Name widget.
  TextEditingController? nameController;
  String? Function(BuildContext, String?)? nameControllerValidator;
  // State field(s) for SlabName widget.
  TextEditingController? slabNameController;
  String? Function(BuildContext, String?)? slabNameControllerValidator;
  // State field(s) for SlabPercent widget.
  TextEditingController? slabPercentController;
  String? Function(BuildContext, String?)? slabPercentControllerValidator;
  // State field(s) for Total widget.
  TextEditingController? totalController;
  String? Function(BuildContext, String?)? totalControllerValidator;

  /// Initialization and disposal methods.

  void initState(BuildContext context) {}

  void dispose() {
    nameController?.dispose();
    slabNameController?.dispose();
    slabPercentController?.dispose();
    totalController?.dispose();
  }

  /// Action blocks are added here.

  /// Additional helper methods are added here.
}
