import '/backend/api_requests/api_calls.dart';
import '/flutter_flow/flutter_flow_animations.dart';
import '/flutter_flow/flutter_flow_drop_down.dart';
import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import '/flutter_flow/form_field_controller.dart';
import '/flutter_flow/custom_functions.dart' as functions;
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
  // State field(s) for Contact widget.
  TextEditingController? contactController1;
  String? Function(BuildContext, String?)? contactController1Validator;
  // State field(s) for Contact widget.
  TextEditingController? contactController2;
  String? Function(BuildContext, String?)? contactController2Validator;
  // State field(s) for Contact widget.
  TextEditingController? contactController3;
  String? Function(BuildContext, String?)? contactController3Validator;
  // State field(s) for Contact widget.
  TextEditingController? contactController4;
  String? Function(BuildContext, String?)? contactController4Validator;
  // State field(s) for Contact widget.
  TextEditingController? contactController5;
  String? Function(BuildContext, String?)? contactController5Validator;
  // State field(s) for Contact widget.
  TextEditingController? contactController6;
  String? Function(BuildContext, String?)? contactController6Validator;
  // State field(s) for Address widget.
  TextEditingController? addressController;
  String? Function(BuildContext, String?)? addressControllerValidator;
  // State field(s) for AgreementValue widget.
  TextEditingController? agreementValueController1;
  String? Function(BuildContext, String?)? agreementValueController1Validator;
  // State field(s) for AgreementValue widget.
  TextEditingController? agreementValueController2;
  String? Function(BuildContext, String?)? agreementValueController2Validator;
  // State field(s) for unitNo widget.
  String? unitNoValue1;
  FormFieldController<String>? unitNoValueController1;
  // State field(s) for CheckRefNo widget.
  TextEditingController? checkRefNoController;
  String? Function(BuildContext, String?)? checkRefNoControllerValidator;
  // State field(s) for unitNo widget.
  String? unitNoValue2;
  FormFieldController<String>? unitNoValueController2;
  // State field(s) for unitNo widget.
  String? unitNoValue3;
  FormFieldController<String>? unitNoValueController3;
  // State field(s) for unitNo widget.
  String? unitNoValue4;
  FormFieldController<String>? unitNoValueController4;
  // State field(s) for unitNo widget.
  String? unitNoValue5;
  FormFieldController<String>? unitNoValueController5;
  // State field(s) for Bank widget.
  TextEditingController? bankController;
  String? Function(BuildContext, String?)? bankControllerValidator;
  // State field(s) for Branch widget.
  TextEditingController? branchController;
  String? Function(BuildContext, String?)? branchControllerValidator;
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

  /// Initialization and disposal methods.

  void initState(BuildContext context) {}

  void dispose() {
    unfocusNode.dispose();
    contactController1?.dispose();
    contactController2?.dispose();
    contactController3?.dispose();
    contactController4?.dispose();
    contactController5?.dispose();
    contactController6?.dispose();
    addressController?.dispose();
    agreementValueController1?.dispose();
    agreementValueController2?.dispose();
    checkRefNoController?.dispose();
    bankController?.dispose();
    branchController?.dispose();
    channelCompanyNameController?.dispose();
    channelPartnerNameController?.dispose();
    channelMobileController?.dispose();
    channelAddressController?.dispose();
  }

  /// Action blocks are added here.

  /// Additional helper methods are added here.
}
