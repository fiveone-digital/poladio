import '/flutter_flow/flutter_flow_animations.dart';
import '/flutter_flow/flutter_flow_drop_down.dart';
import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import '/flutter_flow/form_field_controller.dart';
import '/flutter_flow/upload_data.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class EditBookingModel extends FlutterFlowModel {
  ///  Local state fields for this page.

  int currentTab = 0;

  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();
  // State field(s) for bookingName widget.
  TextEditingController? bookingNameController1;
  String? Function(BuildContext, String?)? bookingNameController1Validator;
  // State field(s) for PanCard widget.
  TextEditingController? panCardController1;
  String? Function(BuildContext, String?)? panCardController1Validator;
  // State field(s) for Email widget.
  TextEditingController? emailController1;
  String? Function(BuildContext, String?)? emailController1Validator;
  bool isDataUploading1 = false;
  FFUploadedFile uploadedLocalFile1 =
      FFUploadedFile(bytes: Uint8List.fromList([]));

  bool isDataUploading2 = false;
  FFUploadedFile uploadedLocalFile2 =
      FFUploadedFile(bytes: Uint8List.fromList([]));

  bool isDataUploading3 = false;
  FFUploadedFile uploadedLocalFile3 =
      FFUploadedFile(bytes: Uint8List.fromList([]));

  // State field(s) for bookingName widget.
  TextEditingController? bookingNameController2;
  String? Function(BuildContext, String?)? bookingNameController2Validator;
  // State field(s) for PanCard widget.
  TextEditingController? panCardController2;
  String? Function(BuildContext, String?)? panCardController2Validator;
  // State field(s) for Email widget.
  TextEditingController? emailController2;
  String? Function(BuildContext, String?)? emailController2Validator;
  bool isDataUploading4 = false;
  FFUploadedFile uploadedLocalFile4 =
      FFUploadedFile(bytes: Uint8List.fromList([]));

  bool isDataUploading5 = false;
  FFUploadedFile uploadedLocalFile5 =
      FFUploadedFile(bytes: Uint8List.fromList([]));

  bool isDataUploading6 = false;
  FFUploadedFile uploadedLocalFile6 =
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
  TextEditingController? addressController1;
  String? Function(BuildContext, String?)? addressController1Validator;
  // State field(s) for AGValue widget.
  TextEditingController? aGValueController;
  String? Function(BuildContext, String?)? aGValueControllerValidator;
  // State field(s) for PaymentScheme widget.
  TextEditingController? paymentSchemeController;
  String? Function(BuildContext, String?)? paymentSchemeControllerValidator;
  // State field(s) for FlatNo widget.
  String? flatNoValue;
  FormFieldController<String>? flatNoValueController;
  // State field(s) for Amt widget.
  TextEditingController? amtController;
  String? Function(BuildContext, String?)? amtControllerValidator;
  // State field(s) for CheckRefNo widget.
  TextEditingController? checkRefNoController;
  String? Function(BuildContext, String?)? checkRefNoControllerValidator;
  DateTime? datePicked;
  // State field(s) for date widget.
  TextEditingController? dateController;
  String? Function(BuildContext, String?)? dateControllerValidator;
  // State field(s) for Mode widget.
  String? modeValue;
  FormFieldController<String>? modeValueController;
  // State field(s) for Bank widget.
  TextEditingController? bankController;
  String? Function(BuildContext, String?)? bankControllerValidator;
  // State field(s) for Branch widget.
  TextEditingController? branchController;
  String? Function(BuildContext, String?)? branchControllerValidator;
  // State field(s) for PaymentTerms widget.
  TextEditingController? paymentTermsController;
  String? Function(BuildContext, String?)? paymentTermsControllerValidator;
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
  TextEditingController? addressController2;
  String? Function(BuildContext, String?)? addressController2Validator;

  /// Initialization and disposal methods.

  void initState(BuildContext context) {}

  void dispose() {
    unfocusNode.dispose();
    bookingNameController1?.dispose();
    panCardController1?.dispose();
    emailController1?.dispose();
    bookingNameController2?.dispose();
    panCardController2?.dispose();
    emailController2?.dispose();
    contactController1?.dispose();
    contactController2?.dispose();
    contactController3?.dispose();
    addressController1?.dispose();
    aGValueController?.dispose();
    paymentSchemeController?.dispose();
    amtController?.dispose();
    checkRefNoController?.dispose();
    dateController?.dispose();
    bankController?.dispose();
    branchController?.dispose();
    paymentTermsController?.dispose();
    companyNameController?.dispose();
    nameController?.dispose();
    phoneController?.dispose();
    addressController2?.dispose();
  }

  /// Action blocks are added here.

  /// Additional helper methods are added here.
}
