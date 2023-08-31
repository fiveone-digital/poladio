import '/components/log_out/log_out_widget.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
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
          height: 100.0,
          decoration: BoxDecoration(
            color: FlutterFlowTheme.of(context).secondary,
          ),
          child: Row(
            mainAxisSize: MainAxisSize.max,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                'POLADIO',
                textAlign: TextAlign.center,
                style: FlutterFlowTheme.of(context).bodyMedium.override(
                      fontFamily: 'Poppins',
                      color: FlutterFlowTheme.of(context).primaryText,
                      fontSize: 28.0,
                    ),
              ),
            ],
          ),
        ),
        Divider(
          height: 1.0,
          thickness: 1.0,
          color: Color(0xFFA3AEBB),
        ),
        InkWell(
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
              size: 18.0,
            ),
            title: Text(
              'Dashboard',
              style: FlutterFlowTheme.of(context).titleLarge.override(
                    fontFamily: 'Poppins',
                    fontSize: 16.0,
                  ),
            ),
            trailing: Icon(
              Icons.arrow_forward_ios,
              color: FlutterFlowTheme.of(context).secondaryText,
              size: 20.0,
            ),
            tileColor: FlutterFlowTheme.of(context).secondaryBackground,
            dense: false,
          ),
        ),
        Divider(
          height: 1.0,
          color: Color(0xFFE6E6E6),
        ),
        InkWell(
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
            trailing: Icon(
              Icons.arrow_forward_ios,
              color: FlutterFlowTheme.of(context).secondaryText,
              size: 20.0,
            ),
            tileColor: FlutterFlowTheme.of(context).secondaryBackground,
            dense: false,
          ),
        ),
        InkWell(
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
            trailing: Icon(
              Icons.arrow_forward_ios,
              color: FlutterFlowTheme.of(context).secondaryText,
              size: 20.0,
            ),
            tileColor: FlutterFlowTheme.of(context).secondaryBackground,
            dense: false,
          ),
        ),
        InkWell(
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
            trailing: Icon(
              Icons.arrow_forward_ios,
              color: FlutterFlowTheme.of(context).secondaryText,
              size: 20.0,
            ),
            tileColor: FlutterFlowTheme.of(context).secondaryBackground,
            dense: false,
          ),
        ),
        Divider(
          thickness: 1.0,
          color: Color(0xFFCDCDCD),
        ),
        InkWell(
          splashColor: Colors.transparent,
          focusColor: Colors.transparent,
          hoverColor: Colors.transparent,
          highlightColor: Colors.transparent,
          onTap: () async {
            context.pushNamed('Schemes');
          },
          child: ListTile(
            leading: Icon(
              Icons.receipt_sharp,
              size: 18.0,
            ),
            title: Text(
              'Schemes',
              style: FlutterFlowTheme.of(context).titleLarge.override(
                    fontFamily: 'Poppins',
                    fontSize: 16.0,
                  ),
            ),
            trailing: Icon(
              Icons.arrow_forward_ios,
              color: FlutterFlowTheme.of(context).secondaryText,
              size: 20.0,
            ),
            tileColor: FlutterFlowTheme.of(context).secondaryBackground,
            dense: false,
          ),
        ),
        InkWell(
          splashColor: Colors.transparent,
          focusColor: Colors.transparent,
          hoverColor: Colors.transparent,
          highlightColor: Colors.transparent,
          onTap: () async {
            context.pushNamed('UserList');
          },
          child: ListTile(
            leading: Icon(
              Icons.person,
              size: 18.0,
            ),
            title: Text(
              'Users',
              style: FlutterFlowTheme.of(context).titleLarge.override(
                    fontFamily: 'Poppins',
                    fontSize: 16.0,
                  ),
            ),
            trailing: Icon(
              Icons.arrow_forward_ios,
              color: FlutterFlowTheme.of(context).secondaryText,
              size: 20.0,
            ),
            tileColor: FlutterFlowTheme.of(context).secondaryBackground,
            dense: false,
          ),
        ),
        InkWell(
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
            trailing: Icon(
              Icons.arrow_forward_ios,
              color: FlutterFlowTheme.of(context).secondaryText,
              size: 20.0,
            ),
            tileColor: FlutterFlowTheme.of(context).secondaryBackground,
            dense: false,
          ),
        ),
        Align(
          alignment: AlignmentDirectional(-1.0, 1.0),
          child: Padding(
            padding: EdgeInsetsDirectional.fromSTEB(16.0, 16.0, 0.0, 0.0),
            child: Text(
              'Version 2.4',
              style: FlutterFlowTheme.of(context).bodyMedium.override(
                    fontFamily: 'Poppins',
                    color: FlutterFlowTheme.of(context).primaryText,
                  ),
            ),
          ),
        ),
        Padding(
          padding: EdgeInsetsDirectional.fromSTEB(0.0, 16.0, 0.0, 0.0),
          child: FFButtonWidget(
            onPressed: () async {
              await showModalBottomSheet(
                isScrollControlled: true,
                backgroundColor: Colors.transparent,
                enableDrag: false,
                context: context,
                builder: (context) {
                  return Padding(
                    padding: MediaQuery.viewInsetsOf(context),
                    child: LogOutWidget(),
                  );
                },
              ).then((value) => setState(() {}));
            },
            text: 'Log Out',
            options: FFButtonOptions(
              height: 40.0,
              padding: EdgeInsetsDirectional.fromSTEB(24.0, 0.0, 24.0, 0.0),
              iconPadding: EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 0.0, 0.0),
              color: FlutterFlowTheme.of(context).primary,
              textStyle: FlutterFlowTheme.of(context).titleSmall.override(
                    fontFamily: 'Poppins',
                    color: Colors.white,
                    fontSize: 18.0,
                  ),
              borderSide: BorderSide(
                color: FlutterFlowTheme.of(context).primaryText,
                width: 2.0,
              ),
              borderRadius: BorderRadius.circular(8.0),
            ),
          ),
        ),
      ],
    );
  }
}
