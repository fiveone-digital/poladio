import '/backend/api_requests/api_calls.dart';
import '/components/payment_hist_bottom_widget.dart';
import '/components/side_menu/side_menu_widget.dart';
import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class PaymentHistModel extends FlutterFlowModel {
  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();
  // Model for sideMenu component.
  late SideMenuModel sideMenuModel;

  /// Initialization and disposal methods.

  void initState(BuildContext context) {
    sideMenuModel = createModel(context, () => SideMenuModel());
  }

  void dispose() {
    unfocusNode.dispose();
    sideMenuModel.dispose();
  }

  /// Action blocks are added here.

  /// Additional helper methods are added here.
}
