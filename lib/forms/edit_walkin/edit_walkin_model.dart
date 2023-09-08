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

class EditWalkinModel extends FlutterFlowModel {
  ///  Local state fields for this page.

  int currentTab = 0;

  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();
  final formKey = GlobalKey<FormState>();
  // Stores action output result for [Backend Call - API (View WalkIn)] action in EditWalkin widget.
  ApiCallResponse? apiResult83a;
  // State field(s) for BookingName widget.
  TextEditingController? bookingNameController;
  String? Function(BuildContext, String?)? bookingNameControllerValidator;
  String? _bookingNameControllerValidator(BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return 'Field is required';
    }

    return null;
  }

  // State field(s) for Date widget.
  TextEditingController? dateController;
  String? Function(BuildContext, String?)? dateControllerValidator;
  String? _dateControllerValidator(BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return 'Field is required';
    }

    return null;
  }

  // State field(s) for Email widget.
  TextEditingController? emailController;
  String? Function(BuildContext, String?)? emailControllerValidator;
  String? _emailControllerValidator(BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return 'Field is required';
    }

    return null;
  }

  // State field(s) for Contact widget.
  TextEditingController? contactController;
  String? Function(BuildContext, String?)? contactControllerValidator;
  String? _contactControllerValidator(BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return 'Field is required';
    }

    if (val.length > 10) {
      return 'Maximum 10 characters allowed, currently ${val.length}.';
    }

    return null;
  }

  // State field(s) for OfficeNo widget.
  TextEditingController? officeNoController;
  String? Function(BuildContext, String?)? officeNoControllerValidator;
  // State field(s) for ResidentNo widget.
  TextEditingController? residentNoController;
  String? Function(BuildContext, String?)? residentNoControllerValidator;
  // State field(s) for Address widget.
  TextEditingController? addressController;
  String? Function(BuildContext, String?)? addressControllerValidator;
  String? _addressControllerValidator(BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return 'Field is required';
    }

    return null;
  }

  // State field(s) for OfficeAddress widget.
  TextEditingController? officeAddressController;
  String? Function(BuildContext, String?)? officeAddressControllerValidator;
  // State field(s) for LocPref widget.
  TextEditingController? locPrefController;
  String? Function(BuildContext, String?)? locPrefControllerValidator;
  String? _locPrefControllerValidator(BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return 'Field is required';
    }

    return null;
  }

  // State field(s) for Enquiry widget.
  int? enquiryValue;
  FormFieldController<int>? enquiryValueController;
  // State field(s) for SrNo widget.
  TextEditingController? srNoController;
  String? Function(BuildContext, String?)? srNoControllerValidator;
  String? _srNoControllerValidator(BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return 'Field is required';
    }

    return null;
  }

  // State field(s) for Budget widget.
  TextEditingController? budgetController;
  String? Function(BuildContext, String?)? budgetControllerValidator;
  // State field(s) for Intersted widget.
  TextEditingController? interstedController;
  String? Function(BuildContext, String?)? interstedControllerValidator;
  // State field(s) for ReasonPurch widget.
  TextEditingController? reasonPurchController;
  String? Function(BuildContext, String?)? reasonPurchControllerValidator;
  // State field(s) for Source widget.
  TextEditingController? sourceController;
  String? Function(BuildContext, String?)? sourceControllerValidator;
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
  // Stores action output result for [Backend Call - API (Update WalkIn)] action in Button widget.
  ApiCallResponse? bookingCreate;

  /// Initialization and disposal methods.

  void initState(BuildContext context) {
    bookingNameControllerValidator = _bookingNameControllerValidator;
    dateControllerValidator = _dateControllerValidator;
    emailControllerValidator = _emailControllerValidator;
    contactControllerValidator = _contactControllerValidator;
    addressControllerValidator = _addressControllerValidator;
    locPrefControllerValidator = _locPrefControllerValidator;
    srNoControllerValidator = _srNoControllerValidator;
  }

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
    budgetController?.dispose();
    interstedController?.dispose();
    reasonPurchController?.dispose();
    sourceController?.dispose();
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
