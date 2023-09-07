import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'side_menu_model.dart';
export 'side_menu_model.dart';

class SideMenuWidget extends StatefulWidget {
  const SideMenuWidget({Key? key}) : super(key: key);

  @override
  _SideMenuWidgetState createState() => _SideMenuWidgetState();
}

class _SideMenuWidgetState extends State<SideMenuWidget> {
  late SideMenuModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => SideMenuModel());
  }

  @override
  void dispose() {
    _model.maybeDispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    context.watch<FFAppState>();

    return Column(
      mainAxisSize: MainAxisSize.max,
      children: [
        Container(
          width: double.infinity,
          height: 150.0,
          decoration: BoxDecoration(
            color: Color(0xFF5E17EB),
          ),
          child: Column(
            mainAxisSize: MainAxisSize.max,
            children: [
              ClipRRect(
                borderRadius: BorderRadius.circular(8.0),
                child: Image.asset(
                  'assets/images/Your_paragraph_text.png',
                  width: 150.0,
                  height: 150.0,
                  fit: BoxFit.cover,
                ),
              ),
            ],
          ),
        ),
        Container(
          height: 60.0,
          decoration: BoxDecoration(
            color: FlutterFlowTheme.of(context).secondaryBackground,
          ),
          child: Align(
            alignment: AlignmentDirectional(0.00, 0.00),
            child: Padding(
              padding: EdgeInsetsDirectional.fromSTEB(16.0, 0.0, 0.0, 0.0),
              child: InkWell(
                splashColor: Colors.transparent,
                focusColor: Colors.transparent,
                hoverColor: Colors.transparent,
                highlightColor: Colors.transparent,
                onTap: () async {
                  context.pushNamed('Dashboard');
                },
                child: ListTile(
                  leading: Icon(
                    Icons.dashboard_outlined,
                    color: FlutterFlowTheme.of(context).secondaryText,
                    size: 18.0,
                  ),
                  title: Text(
                    'Dashboard',
                    style: FlutterFlowTheme.of(context).titleLarge.override(
                          fontFamily: 'Poppins',
                          fontSize: 16.0,
                        ),
                  ),
                  tileColor: FlutterFlowTheme.of(context).secondaryBackground,
                  dense: false,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(0.0),
                  ),
                ),
              ),
            ),
          ),
        ),
        Container(
          height: 60.0,
          decoration: BoxDecoration(
            color: FlutterFlowTheme.of(context).secondaryBackground,
          ),
          child: Align(
            alignment: AlignmentDirectional(0.00, 0.00),
            child: Padding(
              padding: EdgeInsetsDirectional.fromSTEB(16.0, 0.0, 0.0, 0.0),
              child: InkWell(
                splashColor: Colors.transparent,
                focusColor: Colors.transparent,
                hoverColor: Colors.transparent,
                highlightColor: Colors.transparent,
                onTap: () async {
                  context.pushNamed('Walk_in');
                },
                child: ListTile(
                  leading: Icon(
                    Icons.directions_walk,
                    color: FlutterFlowTheme.of(context).secondaryText,
                    size: 20.0,
                  ),
                  title: Text(
                    'Walk-In',
                    textAlign: TextAlign.justify,
                    style: FlutterFlowTheme.of(context).titleLarge.override(
                          fontFamily: 'Poppins',
                          fontSize: 16.0,
                        ),
                  ),
                  tileColor: FlutterFlowTheme.of(context).secondaryBackground,
                  dense: false,
                ),
              ),
            ),
          ),
        ),
        Container(
          height: 60.0,
          decoration: BoxDecoration(
            color: FlutterFlowTheme.of(context).secondaryBackground,
          ),
          child: Align(
            alignment: AlignmentDirectional(0.00, 0.00),
            child: Padding(
              padding: EdgeInsetsDirectional.fromSTEB(16.0, 0.0, 0.0, 0.0),
              child: InkWell(
                splashColor: Colors.transparent,
                focusColor: Colors.transparent,
                hoverColor: Colors.transparent,
                highlightColor: Colors.transparent,
                onTap: () async {
                  context.pushNamed('BookingList');
                },
                child: ListTile(
                  leading: FaIcon(
                    FontAwesomeIcons.userFriends,
                    size: 18.0,
                  ),
                  title: Text(
                    'Booking',
                    style: FlutterFlowTheme.of(context).titleLarge.override(
                          fontFamily: 'Poppins',
                          fontSize: 16.0,
                        ),
                  ),
                  tileColor: FlutterFlowTheme.of(context).secondaryBackground,
                  dense: false,
                ),
              ),
            ),
          ),
        ),
        Container(
          height: 60.0,
          decoration: BoxDecoration(
            color: FlutterFlowTheme.of(context).secondaryBackground,
          ),
          child: Align(
            alignment: AlignmentDirectional(0.00, 0.00),
            child: Padding(
              padding: EdgeInsetsDirectional.fromSTEB(16.0, 0.0, 0.0, 0.0),
              child: InkWell(
                splashColor: Colors.transparent,
                focusColor: Colors.transparent,
                hoverColor: Colors.transparent,
                highlightColor: Colors.transparent,
                onTap: () async {
                  context.pushNamed('PaymentHist');
                },
                child: ListTile(
                  leading: Icon(
                    Icons.currency_rupee,
                    size: 18.0,
                  ),
                  title: Text(
                    'Payments',
                    style: FlutterFlowTheme.of(context).titleLarge.override(
                          fontFamily: 'Poppins',
                          fontSize: 16.0,
                        ),
                  ),
                  tileColor: FlutterFlowTheme.of(context).secondaryBackground,
                  dense: false,
                ),
              ),
            ),
          ),
        ),
        Container(
          height: 60.0,
          decoration: BoxDecoration(
            color: FlutterFlowTheme.of(context).secondaryBackground,
          ),
          child: Align(
            alignment: AlignmentDirectional(0.00, 0.00),
            child: Padding(
              padding: EdgeInsetsDirectional.fromSTEB(16.0, 0.0, 0.0, 0.0),
              child: InkWell(
                splashColor: Colors.transparent,
                focusColor: Colors.transparent,
                hoverColor: Colors.transparent,
                highlightColor: Colors.transparent,
                onTap: () async {
                  context.pushNamed('Projects');
                },
                child: ListTile(
                  leading: Icon(
                    Icons.receipt_sharp,
                    size: 18.0,
                  ),
                  title: Text(
                    'Projects',
                    style: FlutterFlowTheme.of(context).titleLarge.override(
                          fontFamily: 'Poppins',
                          fontSize: 16.0,
                        ),
                  ),
                  tileColor: FlutterFlowTheme.of(context).secondaryBackground,
                  dense: false,
                ),
              ),
            ),
          ),
        ),
        InkWell(
          splashColor: Colors.transparent,
          focusColor: Colors.transparent,
          hoverColor: Colors.transparent,
          highlightColor: Colors.transparent,
          onTap: () async {
            context.pushNamed('Settings');
          },
          child: Container(
            height: 60.0,
            decoration: BoxDecoration(
              color: FlutterFlowTheme.of(context).secondaryBackground,
            ),
            child: Align(
              alignment: AlignmentDirectional(0.00, 0.00),
              child: Padding(
                padding: EdgeInsetsDirectional.fromSTEB(16.0, 0.0, 0.0, 0.0),
                child: ListTile(
                  leading: Icon(
                    Icons.settings,
                    color: FlutterFlowTheme.of(context).accent2,
                    size: 22.0,
                  ),
                  title: Text(
                    'Settings',
                    style: FlutterFlowTheme.of(context).titleLarge.override(
                          fontFamily: 'Poppins',
                          fontSize: 16.0,
                        ),
                  ),
                  tileColor: FlutterFlowTheme.of(context).secondaryBackground,
                  dense: false,
                ),
              ),
            ),
          ),
        ),
        Align(
          alignment: AlignmentDirectional(-1.00, 1.00),
          child: Padding(
            padding: EdgeInsetsDirectional.fromSTEB(16.0, 24.0, 0.0, 0.0),
            child: Text(
              'Version 2.4',
              style: FlutterFlowTheme.of(context).bodyMedium.override(
                    fontFamily: 'Poppins',
                    color: FlutterFlowTheme.of(context).primaryText,
                  ),
            ),
          ),
        ),
      ],
    );
  }
}
