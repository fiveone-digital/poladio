import '/backend/api_requests/api_calls.dart';
import '/flutter_flow/flutter_flow_animations.dart';
import '/flutter_flow/flutter_flow_drop_down.dart';
import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import '/flutter_flow/form_field_controller.dart';
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class EnterWalkinModel extends FlutterFlowModel {
  ///  Local state fields for this page.

  int currentTab = 0;

  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();
  // Stores action output result for [Backend Call - API (Units By Projects)] action in EnterWalkin widget.
  ApiCallResponse? apiResultsxm;
  // Stores action output result for [Backend Call - API (Schemes By Projects)] action in EnterWalkin widget.
  ApiCallResponse? apiResult3nf;
  // State field(s) for BookingName widget.
  TextEditingController? bookingNameController;
  String? Function(BuildContext, String?)? bookingNameControllerValidator;
  // State field(s) for Date widget.
  TextEditingController? dateController;
  String? Function(BuildContext, String?)? dateControllerValidator;
  // State field(s) for Email widget.
  TextEditingController? emailController;
  String? Function(BuildContext, String?)? emailControllerValidator;
  // State field(s) for Contact widget.
  TextEditingController? contactController;
  String? Function(BuildContext, String?)? contactControllerValidator;
  // State field(s) for OfficeNo widget.
  TextEditingController? officeNoController;
  String? Function(BuildContext, String?)? officeNoControllerValidator;
  // State field(s) for ResidentNo widget.
  TextEditingController? residentNoController;
  String? Function(BuildContext, String?)? residentNoControllerValidator;
  // State field(s) for Address widget.
  TextEditingController? addressController;
  String? Function(BuildContext, String?)? addressControllerValidator;
  // State field(s) for OfficeAddress widget.
  TextEditingController? officeAddressController;
  String? Function(BuildContext, String?)? officeAddressControllerValidator;
  // State field(s) for LocPref widget.
  TextEditingController? locPrefController;
  String? Function(BuildContext, String?)? locPrefControllerValidator;
  // State field(s) for Enquiry widget.
  String? enquiryValue;
  FormFieldController<String>? enquiryValueController;
  // State field(s) for SrNo widget.
  TextEditingController? srNoController;
  String? Function(BuildContext, String?)? srNoControllerValidator;
  // State field(s) for Budget widget.
  String? budgetValue;
  FormFieldController<String>? budgetValueController;
  // State field(s) for InterestedIn widget.
  String? interestedInValue;
  FormFieldController<String>? interestedInValueController;
  // State field(s) for ReasonPurchase widget.
  String? reasonPurchaseValue;
  FormFieldController<String>? reasonPurchaseValueController;
  // State field(s) for Source widget.
  String? sourceValue;
  FormFieldController<String>? sourceValueController;
  // State field(s) for Website widget.
  TextEditingController? websiteController;
  String? Function(BuildContext, String?)? websiteControllerValidator;
  // State field(s) for ExistingName widget.
  TextEditingController? existingNameController;
  String? Function(BuildContext, String?)? existingNameControllerValidator;
  // State field(s) for ChannelCompanyName widget.
  TextEditingController? channelCompanyNameController;
  String? Function(BuildContext, String?)?
      channelCompanyNameControllerValidator;
  // State field(s) for ChannelPartnerName widget.
  TextEditingController? channelPartnerNameController;
  String? Function(BuildContext, String?)?
      channelPartnerNameControllerValidator;
  // State field(s) for channelMobile widget.
  TextEditingController? channelMobileController;
  String? Function(BuildContext, String?)? channelMobileControllerValidator;
  // State field(s) for ChannelAddress widget.
  TextEditingController? channelAddressController;
  String? Function(BuildContext, String?)? channelAddressControllerValidator;
  // Stores action output result for [Backend Call - API (Create WalkIn)] action in Button widget.
  ApiCallResponse? bookingCreate;

  /// Initialization and disposal methods.

  void initState(BuildContext context) {}

  void dispose() {
    unfocusNode.dispose();
    bookingNameController?.dispose();
    dateController?.dispose();
    emailController?.dispose();
    contactController?.dispose();
    officeNoController?.dispose();
    residentNoController?.dispose();
    addressController?.dispose();
    officeAddressController?.dispose();
    locPrefController?.dispose();
    srNoController?.dispose();
    websiteController?.dispose();
    existingNameController?.dispose();
    channelCompanyNameController?.dispose();
    channelPartnerNameController?.dispose();
    channelMobileController?.dispose();
    channelAddressController?.dispose();
  }

  /// Action blocks are added here.

  /// Additional helper methods are added here.
}
