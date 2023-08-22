import '/flutter_flow/flutter_flow_animations.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class BookingPaymentModel extends FlutterFlowModel {
  ///  State fields for stateful widgets in this component.

  // State field(s) for PaymentSlab widget.
  TextEditingController? paymentSlabController;
  String? Function(BuildContext, String?)? paymentSlabControllerValidator;
  // State field(s) for DemandAmt widget.
  TextEditingController? demandAmtController;
  String? Function(BuildContext, String?)? demandAmtControllerValidator;
  // State field(s) for DemandRec widget.
  TextEditingController? demandRecController;
  String? Function(BuildContext, String?)? demandRecControllerValidator;
  // State field(s) for NetBal widget.
  TextEditingController? netBalController;
  String? Function(BuildContext, String?)? netBalControllerValidator;
  // State field(s) for Interest widget.
  TextEditingController? interestController;
  String? Function(BuildContext, String?)? interestControllerValidator;
  // State field(s) for GstAmt widget.
  TextEditingController? gstAmtController;
  String? Function(BuildContext, String?)? gstAmtControllerValidator;
  // State field(s) for GstrRec widget.
  TextEditingController? gstrRecController;
  String? Function(BuildContext, String?)? gstrRecControllerValidator;

  /// Initialization and disposal methods.

  void initState(BuildContext context) {}

  void dispose() {
    paymentSlabController?.dispose();
    demandAmtController?.dispose();
    demandRecController?.dispose();
    netBalController?.dispose();
    interestController?.dispose();
    gstAmtController?.dispose();
    gstrRecController?.dispose();
  }

  /// Action blocks are added here.

  /// Additional helper methods are added here.
}
