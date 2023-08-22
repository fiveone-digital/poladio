import '/flutter_flow/flutter_flow_animations.dart';
import '/flutter_flow/flutter_flow_drop_down.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import '/flutter_flow/form_field_controller.dart';
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class EnterNewWalkInModel extends FlutterFlowModel {
  ///  Local state fields for this page.

  int currentTab = 0;

  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();
  // State field(s) for bookingName widget.
  TextEditingController? bookingNameController;
  String? Function(BuildContext, String?)? bookingNameControllerValidator;
  // State field(s) for SrNo widget.
  TextEditingController? srNoController;
  String? Function(BuildContext, String?)? srNoControllerValidator;
  // State field(s) for Contact widget.
  TextEditingController? contactController1;
  String? Function(BuildContext, String?)? contactController1Validator;
  // State field(s) for Email widget.
  TextEditingController? emailController1;
  String? Function(BuildContext, String?)? emailController1Validator;
  // State field(s) for Contact widget.
  TextEditingController? contactController2;
  String? Function(BuildContext, String?)? contactController2Validator;
  // State field(s) for Email widget.
  TextEditingController? emailController2;
  String? Function(BuildContext, String?)? emailController2Validator;
  // State field(s) for ReasonPurchase widget.
  String? reasonPurchaseValue;
  FormFieldController<String>? reasonPurchaseValueController;
  // State field(s) for Date widget.
  TextEditingController? dateController;
  String? Function(BuildContext, String?)? dateControllerValidator;
  // State field(s) for ResidentAddress widget.
  TextEditingController? residentAddressController;
  String? Function(BuildContext, String?)? residentAddressControllerValidator;
  // State field(s) for LocPref widget.
  TextEditingController? locPrefController;
  String? Function(BuildContext, String?)? locPrefControllerValidator;
  // State field(s) for ExistingName widget.
  TextEditingController? existingNameController;
  String? Function(BuildContext, String?)? existingNameControllerValidator;
  // State field(s) for Website widget.
  TextEditingController? websiteController;
  String? Function(BuildContext, String?)? websiteControllerValidator;
  // State field(s) for EnquiredAt widget.
  String? enquiredAtValue;
  FormFieldController<String>? enquiredAtValueController;
  // State field(s) for InterestedIn widget.
  String? interestedInValue;
  FormFieldController<String>? interestedInValueController;
  // State field(s) for Budget widget.
  String? budgetValue;
  FormFieldController<String>? budgetValueController;
  // State field(s) for CompanyName widget.
  TextEditingController? companyNameController;
  String? Function(BuildContext, String?)? companyNameControllerValidator;
  // State field(s) for Name widget.
  TextEditingController? nameController;
  String? Function(BuildContext, String?)? nameControllerValidator;
  // State field(s) for Phone widget.
  TextEditingController? phoneController;
  String? Function(BuildContext, String?)? phoneControllerValidator;
  // State field(s) for Address widget.
  TextEditingController? addressController;
  String? Function(BuildContext, String?)? addressControllerValidator;

  /// Initialization and disposal methods.

  void initState(BuildContext context) {}

  void dispose() {
    unfocusNode.dispose();
    bookingNameController?.dispose();
    srNoController?.dispose();
    contactController1?.dispose();
    emailController1?.dispose();
    contactController2?.dispose();
    emailController2?.dispose();
    dateController?.dispose();
    residentAddressController?.dispose();
    locPrefController?.dispose();
    existingNameController?.dispose();
    websiteController?.dispose();
    companyNameController?.dispose();
    nameController?.dispose();
    phoneController?.dispose();
    addressController?.dispose();
  }

  /// Action blocks are added here.

  /// Additional helper methods are added here.
}
