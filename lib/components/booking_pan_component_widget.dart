import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/custom_code/actions/index.dart' as actions;
import 'package:easy_debounce/easy_debounce.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'booking_pan_component_model.dart';
export 'booking_pan_component_model.dart';

class BookingPanComponentWidget extends StatefulWidget {
  const BookingPanComponentWidget({
    Key? key,
    required this.pan,
    required this.index,
    required this.ownerList,
  }) : super(key: key);

  final String? pan;
  final int? index;
  final List<dynamic>? ownerList;

  @override
  _BookingPanComponentWidgetState createState() =>
      _BookingPanComponentWidgetState();
}

class _BookingPanComponentWidgetState extends State<BookingPanComponentWidget> {
  late BookingPanComponentModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => BookingPanComponentModel());

    _model.panCardController ??= TextEditingController(
        text: (widget.ownerList?[widget.index!]) != null
            ? getJsonField(
                widget.ownerList?[widget.index!],
                r'''$.pan''',
              ).toString().toString()
            : ' ');
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
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: EdgeInsetsDirectional.fromSTEB(5.0, 0.0, 0.0, 0.0),
          child: Text(
            'PAN CARD NO',
            style: FlutterFlowTheme.of(context).labelMedium,
          ),
        ),
        Padding(
          padding: EdgeInsetsDirectional.fromSTEB(5.0, 0.0, 0.0, 0.0),
          child: Container(
            width: 150.0,
            child: TextFormField(
              controller: _model.panCardController,
              onChanged: (_) => EasyDebounce.debounce(
                '_model.panCardController',
                Duration(milliseconds: 2000),
                () async {
                  await actions.updateOwnerItemData(
                    widget.index!,
                    null,
                    null,
                    _model.panCardController.text,
                  );
                },
              ),
              autofocus: true,
              obscureText: false,
              decoration: InputDecoration(
                isDense: true,
                labelStyle: FlutterFlowTheme.of(context).labelMedium.override(
                      fontFamily: 'Poppins',
                      color: Color(0xFF606A85),
                      fontSize: 14.0,
                      fontWeight: FontWeight.w500,
                    ),
                hintStyle: FlutterFlowTheme.of(context).bodyMedium.override(
                      fontFamily: 'Plus Jakarta Sans',
                      color: Color(0xFF15161E),
                      fontSize: 14.0,
                      fontWeight: FontWeight.w500,
                    ),
                enabledBorder: OutlineInputBorder(
                  borderSide: BorderSide(
                    color: Color(0xFFE5E7EB),
                    width: 1.0,
                  ),
                  borderRadius: const BorderRadius.only(
                    topLeft: Radius.circular(4.0),
                    topRight: Radius.circular(4.0),
                  ),
                ),
                focusedBorder: OutlineInputBorder(
                  borderSide: BorderSide(
                    color: Color(0xFF6F61EF),
                    width: 1.0,
                  ),
                  borderRadius: const BorderRadius.only(
                    topLeft: Radius.circular(4.0),
                    topRight: Radius.circular(4.0),
                  ),
                ),
                errorBorder: OutlineInputBorder(
                  borderSide: BorderSide(
                    color: Color(0xFFFF5963),
                    width: 1.0,
                  ),
                  borderRadius: const BorderRadius.only(
                    topLeft: Radius.circular(4.0),
                    topRight: Radius.circular(4.0),
                  ),
                ),
                focusedErrorBorder: OutlineInputBorder(
                  borderSide: BorderSide(
                    color: Color(0xFFFF5963),
                    width: 1.0,
                  ),
                  borderRadius: const BorderRadius.only(
                    topLeft: Radius.circular(4.0),
                    topRight: Radius.circular(4.0),
                  ),
                ),
                filled: true,
                fillColor: Colors.white,
                contentPadding:
                    EdgeInsetsDirectional.fromSTEB(20.0, 10.0, 20.0, 16.0),
              ),
              style: FlutterFlowTheme.of(context).bodyMedium.override(
                    fontFamily: 'Poppins',
                    color: FlutterFlowTheme.of(context).primaryText,
                    fontSize: 14.0,
                    fontWeight: FontWeight.w500,
                  ),
              maxLines: null,
              cursorColor: Color(0xFF6F61EF),
              validator: _model.panCardControllerValidator.asValidator(context),
            ),
          ),
        ),
      ],
    );
  }
}
