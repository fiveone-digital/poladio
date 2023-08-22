import '/flutter_flow/flutter_flow_animations.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class BookingDetModel extends FlutterFlowModel {
  ///  State fields for stateful widgets in this component.

  // State field(s) for Amount widget.
  TextEditingController? amountController;
  String? Function(BuildContext, String?)? amountControllerValidator;
  // State field(s) for Date widget.
  TextEditingController? dateController;
  String? Function(BuildContext, String?)? dateControllerValidator;
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
  // State field(s) for PaymentTerms widget.
  TextEditingController? paymentTermsController;
  String? Function(BuildContext, String?)? paymentTermsControllerValidator;

  /// Initialization and disposal methods.

  void initState(BuildContext context) {}

  void dispose() {
    amountController?.dispose();
    dateController?.dispose();
    bankController?.dispose();
    branchController?.dispose();
    modeController?.dispose();
    refNoController?.dispose();
    paymentTermsController?.dispose();
  }

  /// Action blocks are added here.

  /// Additional helper methods are added here.
}
