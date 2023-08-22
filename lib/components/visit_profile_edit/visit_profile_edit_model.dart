import '/components/chanel_partner_edit/chanel_partner_edit_widget.dart';
import '/flutter_flow/flutter_flow_animations.dart';
import '/flutter_flow/flutter_flow_drop_down.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import '/flutter_flow/form_field_controller.dart';
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class VisitProfileEditModel extends FlutterFlowModel {
  ///  State fields for stateful widgets in this component.

  // State field(s) for Name widget.
  TextEditingController? nameController;
  String? Function(BuildContext, String?)? nameControllerValidator;
  // State field(s) for SrNo widget.
  TextEditingController? srNoController;
  String? Function(BuildContext, String?)? srNoControllerValidator;
  // State field(s) for Phone widget.
  TextEditingController? phoneController;
  String? Function(BuildContext, String?)? phoneControllerValidator;
  // State field(s) for Email widget.
  TextEditingController? emailController;
  String? Function(BuildContext, String?)? emailControllerValidator;
  // State field(s) for ReasonPurchase widget.
  String? reasonPurchaseValue;
  FormFieldController<String>? reasonPurchaseValueController;
  // State field(s) for Date widget.
  TextEditingController? dateController;
  String? Function(BuildContext, String?)? dateControllerValidator;
  // State field(s) for Address widget.
  TextEditingController? addressController;
  String? Function(BuildContext, String?)? addressControllerValidator;
  // State field(s) for LocPref widget.
  TextEditingController? locPrefController;
  String? Function(BuildContext, String?)? locPrefControllerValidator;
  // State field(s) for EnquiryAt widget.
  String? enquiryAtValue;
  FormFieldController<String>? enquiryAtValueController;
  // State field(s) for InterestedIn widget.
  String? interestedInValue;
  FormFieldController<String>? interestedInValueController;
  // State field(s) for Budget widget.
  String? budgetValue;
  FormFieldController<String>? budgetValueController;

  /// Initialization and disposal methods.

  void initState(BuildContext context) {}

  void dispose() {
    nameController?.dispose();
    srNoController?.dispose();
    phoneController?.dispose();
    emailController?.dispose();
    dateController?.dispose();
    addressController?.dispose();
    locPrefController?.dispose();
  }

  /// Action blocks are added here.

  /// Additional helper methods are added here.
}
