import '/flutter_flow/flutter_flow_animations.dart';
import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class AddRemarkModel extends FlutterFlowModel {
  ///  State fields for stateful widgets in this component.

  // State field(s) for RecNo widget.
  TextEditingController? recNoController;
  String? Function(BuildContext, String?)? recNoControllerValidator;
  DateTime? datePicked;
  // State field(s) for RecDate widget.
  TextEditingController? recDateController;
  String? Function(BuildContext, String?)? recDateControllerValidator;

  /// Initialization and disposal methods.

  void initState(BuildContext context) {}

  void dispose() {
    recNoController?.dispose();
    recDateController?.dispose();
  }

  /// Action blocks are added here.

  /// Additional helper methods are added here.
}
