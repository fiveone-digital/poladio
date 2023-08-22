import '/flutter_flow/flutter_flow_animations.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class ChanelPartnerEditModel extends FlutterFlowModel {
  ///  State fields for stateful widgets in this component.

  // State field(s) for AgentName widget.
  TextEditingController? agentNameController;
  String? Function(BuildContext, String?)? agentNameControllerValidator;
  // State field(s) for FirmName widget.
  TextEditingController? firmNameController;
  String? Function(BuildContext, String?)? firmNameControllerValidator;
  // State field(s) for Contact widget.
  TextEditingController? contactController;
  String? Function(BuildContext, String?)? contactControllerValidator;
  // State field(s) for Email widget.
  TextEditingController? emailController;
  String? Function(BuildContext, String?)? emailControllerValidator;
  // State field(s) for Address widget.
  TextEditingController? addressController;
  String? Function(BuildContext, String?)? addressControllerValidator;

  /// Initialization and disposal methods.

  void initState(BuildContext context) {}

  void dispose() {
    agentNameController?.dispose();
    firmNameController?.dispose();
    contactController?.dispose();
    emailController?.dispose();
    addressController?.dispose();
  }

  /// Action blocks are added here.

  /// Additional helper methods are added here.
}
