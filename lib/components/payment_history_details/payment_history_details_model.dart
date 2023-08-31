import '/flutter_flow/flutter_flow_animations.dart';
import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class PaymentHistoryDetailsModel extends FlutterFlowModel {
  ///  State fields for stateful widgets in this component.

  // State field(s) for BookingName widget.
  TextEditingController? bookingNameController;
  String? Function(BuildContext, String?)? bookingNameControllerValidator;
  // State field(s) for Amt widget.
  TextEditingController? amtController;
  String? Function(BuildContext, String?)? amtControllerValidator;
  // State field(s) for RecNo widget.
  TextEditingController? recNoController;
  String? Function(BuildContext, String?)? recNoControllerValidator;
  // State field(s) for RecDate widget.
  TextEditingController? recDateController;
  String? Function(BuildContext, String?)? recDateControllerValidator;
  // State field(s) for PaidDate widget.
  TextEditingController? paidDateController;
  String? Function(BuildContext, String?)? paidDateControllerValidator;
  // State field(s) for Bank widget.
  TextEditingController? bankController;
  String? Function(BuildContext, String?)? bankControllerValidator;
  // State field(s) for Branch widget.
  TextEditingController? branchController;
  String? Function(BuildContext, String?)? branchControllerValidator;
  // State field(s) for Mode widget.
  TextEditingController? modeController;
  String? Function(BuildContext, String?)? modeControllerValidator;
  // State field(s) for RefNo widget.
  TextEditingController? refNoController;
  String? Function(BuildContext, String?)? refNoControllerValidator;
  // State field(s) for Gst widget.
  TextEditingController? gstController;
  String? Function(BuildContext, String?)? gstControllerValidator;

  /// Initialization and disposal methods.

  void initState(BuildContext context) {}

  void dispose() {
    bookingNameController?.dispose();
    amtController?.dispose();
    recNoController?.dispose();
    recDateController?.dispose();
    paidDateController?.dispose();
    bankController?.dispose();
    branchController?.dispose();
    modeController?.dispose();
    refNoController?.dispose();
    gstController?.dispose();
  }

  /// Action blocks are added here.

  /// Additional helper methods are added here.
}
