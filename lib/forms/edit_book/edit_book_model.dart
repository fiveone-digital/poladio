import '/backend/api_requests/api_calls.dart';
import '/components/booking_email_component_widget.dart';
import '/components/booking_name_component_widget.dart';
import '/components/booking_pan_component_widget.dart';
import '/flutter_flow/flutter_flow_animations.dart';
import '/flutter_flow/flutter_flow_drop_down.dart';
import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import '/flutter_flow/form_field_controller.dart';
import '/flutter_flow/upload_data.dart';
import '/flutter_flow/custom_functions.dart' as functions;
import 'package:easy_debounce/easy_debounce.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class EditBookModel extends FlutterFlowModel {
  ///  Local state fields for this page.

  int currentTab = 0;

  int ownerCollapse = 0;

  List<FFUploadedFile> docs = [];
  void addToDocs(FFUploadedFile item) => docs.add(item);
  void removeFromDocs(FFUploadedFile item) => docs.remove(item);
  void removeAtIndexFromDocs(int index) => docs.removeAt(index);
  void updateDocsAtIndex(int index, Function(FFUploadedFile) updateFn) =>
      docs[index] = updateFn(docs[index]);

  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();
  // Stores action output result for [Backend Call - API (Units By Projects)] action in EditBook widget.
  ApiCallResponse? apiResultsxm;
  // Stores action output result for [Backend Call - API (Schemes By Projects)] action in EditBook widget.
  ApiCallResponse? apiResult3nf;
  // Models for bookingNameComponent dynamic component.
  late FlutterFlowDynamicModels<BookingNameComponentModel>
      bookingNameComponentModels;
  // Models for bookingEmailComponent dynamic component.
  late FlutterFlowDynamicModels<BookingEmailComponentModel>
      bookingEmailComponentModels;
  // Models for bookingPanComponent dynamic component.
  late FlutterFlowDynamicModels<BookingPanComponentModel>
      bookingPanComponentModels;
  bool isDataUploading1 = false;
  FFUploadedFile uploadedLocalFile1 =
      FFUploadedFile(bytes: Uint8List.fromList([]));

  bool isDataUploading2 = false;
  FFUploadedFile uploadedLocalFile2 =
      FFUploadedFile(bytes: Uint8List.fromList([]));

  bool isDataUploading3 = false;
  FFUploadedFile uploadedLocalFile3 =
      FFUploadedFile(bytes: Uint8List.fromList([]));

  // State field(s) for Contact widget.
  TextEditingController? contactController1;
  String? Function(BuildContext, String?)? contactController1Validator;
  // State field(s) for Contact widget.
  TextEditingController? contactController2;
  String? Function(BuildContext, String?)? contactController2Validator;
  // State field(s) for Contact widget.
  TextEditingController? contactController3;
  String? Function(BuildContext, String?)? contactController3Validator;
  // State field(s) for Address widget.
  TextEditingController? addressController;
  String? Function(BuildContext, String?)? addressControllerValidator;
  // State field(s) for AgreementValue widget.
  TextEditingController? agreementValueController;
  String? Function(BuildContext, String?)? agreementValueControllerValidator;
  // State field(s) for unitNo widget.
  String? unitNoValue;
  FormFieldController<String>? unitNoValueController;
  // State field(s) for Amt widget.
  TextEditingController? amtController;
  String? Function(BuildContext, String?)? amtControllerValidator;
  // State field(s) for CheckRefNo widget.
  TextEditingController? checkRefNoController;
  String? Function(BuildContext, String?)? checkRefNoControllerValidator;
  DateTime? datePicked;
  // State field(s) for BookingDate widget.
  TextEditingController? bookingDateController;
  String? Function(BuildContext, String?)? bookingDateControllerValidator;
  // State field(s) for PaymentMode widget.
  String? paymentModeValue;
  FormFieldController<String>? paymentModeValueController;
  // State field(s) for Bank widget.
  TextEditingController? bankController;
  String? Function(BuildContext, String?)? bankControllerValidator;
  // State field(s) for Branch widget.
  TextEditingController? branchController;
  String? Function(BuildContext, String?)? branchControllerValidator;
  // State field(s) for PaymentScheme widget.
  String? paymentSchemeValue;
  FormFieldController<String>? paymentSchemeValueController;
  // State field(s) for PaymentTerms widget.
  TextEditingController? paymentTermsController;
  String? Function(BuildContext, String?)? paymentTermsControllerValidator;
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

  void initState(BuildContext context) {
    bookingNameComponentModels =
        FlutterFlowDynamicModels(() => BookingNameComponentModel());
    bookingEmailComponentModels =
        FlutterFlowDynamicModels(() => BookingEmailComponentModel());
    bookingPanComponentModels =
        FlutterFlowDynamicModels(() => BookingPanComponentModel());
  }

  void dispose() {
    unfocusNode.dispose();
    bookingNameComponentModels.dispose();
    bookingEmailComponentModels.dispose();
    bookingPanComponentModels.dispose();
    contactController1?.dispose();
    contactController2?.dispose();
    contactController3?.dispose();
    addressController?.dispose();
    agreementValueController?.dispose();
    amtController?.dispose();
    checkRefNoController?.dispose();
    bookingDateController?.dispose();
    bankController?.dispose();
    branchController?.dispose();
    paymentTermsController?.dispose();
    channelCompanyNameController?.dispose();
    channelPartnerNameController?.dispose();
    channelMobileController?.dispose();
    channelAddressController?.dispose();
  }

  /// Action blocks are added here.

  /// Additional helper methods are added here.
}
