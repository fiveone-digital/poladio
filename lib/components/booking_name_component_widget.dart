import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/custom_code/actions/index.dart' as actions;
import 'package:easy_debounce/easy_debounce.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'booking_name_component_model.dart';
export 'booking_name_component_model.dart';

class BookingNameComponentWidget extends StatefulWidget {
  const BookingNameComponentWidget({
    Key? key,
    required this.bookingName,
    required this.ownerList,
    required this.index,
  }) : super(key: key);

  final String? bookingName;
  final List<dynamic>? ownerList;
  final int? index;

  @override
  _BookingNameComponentWidgetState createState() =>
      _BookingNameComponentWidgetState();
}

class _BookingNameComponentWidgetState
    extends State<BookingNameComponentWidget> {
  late BookingNameComponentModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => BookingNameComponentModel());

    _model.bookingNameController ??= TextEditingController(
        text: (widget.ownerList?[widget.index!]) != null
            ? getJsonField(
                widget.ownerList?[widget.index!],
                r'''$.name''',
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

    return TextFormField(
      controller: _model.bookingNameController,
      onChanged: (_) => EasyDebounce.debounce(
        '_model.bookingNameController',
        Duration(milliseconds: 2000),
        () async {
          await actions.updateOwnerItemData(
            widget.index!,
            _model.bookingNameController.text,
            null,
            null,
          );
        },
      ),
      autofocus: true,
      obscureText: false,
      decoration: InputDecoration(
        isDense: true,
        labelText: 'Booking Name',
        labelStyle: FlutterFlowTheme.of(context).labelMedium.override(
              fontFamily: 'Poppins',
              color: Color(0xFF606A85),
              fontSize: 14.0,
            ),
        enabledBorder: OutlineInputBorder(
          borderSide: BorderSide(
            color: FlutterFlowTheme.of(context).textFieldBorder,
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
        contentPadding: EdgeInsetsDirectional.fromSTEB(20.0, 12.0, 20.0, 16.0),
      ),
      style: FlutterFlowTheme.of(context).bodyMedium.override(
            fontFamily: 'Poppins',
            color: FlutterFlowTheme.of(context).primaryText,
            fontSize: 14.0,
            fontWeight: FontWeight.w500,
          ),
      maxLines: null,
      cursorColor: Color(0xFF6F61EF),
      validator: _model.bookingNameControllerValidator.asValidator(context),
    );
  }
}
