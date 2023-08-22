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
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'enter_new_booking_model.dart';
export 'enter_new_booking_model.dart';

class EnterNewBookingWidget extends StatefulWidget {
  const EnterNewBookingWidget({Key? key}) : super(key: key);

  @override
  _EnterNewBookingWidgetState createState() => _EnterNewBookingWidgetState();
}

class _EnterNewBookingWidgetState extends State<EnterNewBookingWidget>
    with TickerProviderStateMixin {
  late EnterNewBookingModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  final animationsMap = {
    'containerOnPageLoadAnimation1': AnimationInfo(
      trigger: AnimationTrigger.onPageLoad,
      effects: [
        VisibilityEffect(duration: 300.ms),
        MoveEffect(
          curve: Curves.bounceOut,
          delay: 300.ms,
          duration: 400.ms,
          begin: Offset(0.0, 100.0),
          end: Offset(0.0, 0.0),
        ),
        FadeEffect(
          curve: Curves.easeInOut,
          delay: 300.ms,
          duration: 400.ms,
          begin: 0.0,
          end: 1.0,
        ),
      ],
    ),
    'containerOnPageLoadAnimation2': AnimationInfo(
      trigger: AnimationTrigger.onPageLoad,
      effects: [
        VisibilityEffect(duration: 300.ms),
        MoveEffect(
          curve: Curves.bounceOut,
          delay: 300.ms,
          duration: 400.ms,
          begin: Offset(0.0, 100.0),
          end: Offset(0.0, 0.0),
        ),
        FadeEffect(
          curve: Curves.easeInOut,
          delay: 300.ms,
          duration: 400.ms,
          begin: 0.0,
          end: 1.0,
        ),
      ],
    ),
    'containerOnPageLoadAnimation3': AnimationInfo(
      trigger: AnimationTrigger.onPageLoad,
      effects: [
        VisibilityEffect(duration: 300.ms),
        MoveEffect(
          curve: Curves.bounceOut,
          delay: 300.ms,
          duration: 400.ms,
          begin: Offset(0.0, 100.0),
          end: Offset(0.0, 0.0),
        ),
        FadeEffect(
          curve: Curves.easeInOut,
          delay: 300.ms,
          duration: 400.ms,
          begin: 0.0,
          end: 1.0,
        ),
      ],
    ),
    'containerOnPageLoadAnimation4': AnimationInfo(
      trigger: AnimationTrigger.onPageLoad,
      effects: [
        VisibilityEffect(duration: 300.ms),
        MoveEffect(
          curve: Curves.bounceOut,
          delay: 300.ms,
          duration: 400.ms,
          begin: Offset(0.0, 100.0),
          end: Offset(0.0, 0.0),
        ),
        FadeEffect(
          curve: Curves.easeInOut,
          delay: 300.ms,
          duration: 400.ms,
          begin: 0.0,
          end: 1.0,
        ),
      ],
    ),
  };

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => EnterNewBookingModel());

    // On page load action.
    SchedulerBinding.instance.addPostFrameCallback((_) async {
      setState(() {
        FFAppState().addToOwnerList(FFAppState().ownerJson);
      });
    });

    _model.contactController1 ??= TextEditingController();
    _model.contactController2 ??= TextEditingController();
    _model.contactController3 ??= TextEditingController();
    _model.addressController1 ??= TextEditingController();
    _model.branchController1 ??= TextEditingController();
    _model.amtController ??= TextEditingController();
    _model.checkRefNoController ??= TextEditingController();
    _model.dateController ??=
        TextEditingController(text: dateTimeFormat('d/M/y', _model.datePicked));
    _model.bankController ??= TextEditingController();
    _model.branchController2 ??= TextEditingController();
    _model.branchController3 ??= TextEditingController();
    _model.paymentTermsController ??= TextEditingController();
    _model.companyNameController ??= TextEditingController();
    _model.nameController ??= TextEditingController();
    _model.phoneController ??= TextEditingController();
    _model.addressController2 ??= TextEditingController();
    setupAnimations(
      animationsMap.values.where((anim) =>
          anim.trigger == AnimationTrigger.onActionTrigger ||
          !anim.applyInitialState),
      this,
    );
  }

  @override
  void dispose() {
    _model.dispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    context.watch<FFAppState>();

    return GestureDetector(
      onTap: () => FocusScope.of(context).requestFocus(_model.unfocusNode),
      child: Scaffold(
        key: scaffoldKey,
        backgroundColor: FlutterFlowTheme.of(context).primaryBackground,
        appBar: PreferredSize(
          preferredSize: Size.fromHeight(80.0),
          child: AppBar(
            backgroundColor: FlutterFlowTheme.of(context).secondaryBackground,
            automaticallyImplyLeading: false,
            leading: FlutterFlowIconButton(
              borderColor: Colors.transparent,
              borderRadius: 30.0,
              borderWidth: 1.0,
              buttonSize: 60.0,
              icon: Icon(
                Icons.keyboard_backspace,
                color: FlutterFlowTheme.of(context).primary,
                size: 30.0,
              ),
              onPressed: () async {
                context.pop();
              },
            ),
            title: Text(
              'New Booking',
              textAlign: TextAlign.center,
              style: FlutterFlowTheme.of(context).headlineMedium.override(
                    fontFamily: 'Poppins',
                    color: FlutterFlowTheme.of(context).primaryText,
                    fontSize: 18.0,
                  ),
            ),
            actions: [],
            centerTitle: true,
            toolbarHeight: 80.0,
            elevation: 0.0,
          ),
        ),
        body: SafeArea(
          top: true,
          child: SingleChildScrollView(
            child: Column(
              mainAxisSize: MainAxisSize.max,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Align(
                  alignment: AlignmentDirectional(-1.0, 0.0),
                  child: Container(
                    width: () {
                      if (_model.currentTab == 0) {
                        return 25.0;
                      } else if (_model.currentTab == 1) {
                        return 50.0;
                      } else if (_model.currentTab == 2) {
                        return 75.0;
                      } else {
                        return 100.0;
                      }
                    }(),
                    height: 5.0,
                    decoration: BoxDecoration(
                      color: FlutterFlowTheme.of(context).primaryText,
                    ),
                  ),
                ),
                if (_model.currentTab == 0)
                  Padding(
                    padding:
                        EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 0.0, 16.0),
                    child: Container(
                      width: double.infinity,
                      height: MediaQuery.sizeOf(context).height * 1.0,
                      constraints: BoxConstraints(
                        maxWidth: 670.0,
                      ),
                      decoration: BoxDecoration(
                        color: Colors.white,
                        boxShadow: [
                          BoxShadow(
                            blurRadius: 12.0,
                            color: Color(0x1E000000),
                            offset: Offset(0.0, 5.0),
                          )
                        ],
                        borderRadius: BorderRadius.circular(0.0),
                      ),
                      child: Padding(
                        padding: EdgeInsetsDirectional.fromSTEB(
                            24.0, 0.0, 24.0, 0.0),
                        child: SingleChildScrollView(
                          child: Column(
                            mainAxisSize: MainAxisSize.max,
                            mainAxisAlignment: MainAxisAlignment.start,
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              Padding(
                                padding: EdgeInsetsDirectional.fromSTEB(
                                    0.0, 10.0, 0.0, 0.0),
                                child: Row(
                                  mainAxisSize: MainAxisSize.max,
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    Expanded(
                                      child: Align(
                                        alignment:
                                            AlignmentDirectional(0.0, 0.0),
                                        child: Padding(
                                          padding:
                                              EdgeInsetsDirectional.fromSTEB(
                                                  8.0, 16.0, 0.0, 16.0),
                                          child: Text(
                                            'Step 1',
                                            style: FlutterFlowTheme.of(context)
                                                .labelMedium
                                                .override(
                                                  fontFamily:
                                                      'Plus Jakarta Sans',
                                                  color: Color(0xFF606A85),
                                                  fontSize: 16.0,
                                                  fontWeight: FontWeight.w500,
                                                ),
                                          ),
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                              Padding(
                                padding: EdgeInsetsDirectional.fromSTEB(
                                    0.0, 10.0, 0.0, 0.0),
                                child: Row(
                                  mainAxisSize: MainAxisSize.max,
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  children: [
                                    Expanded(
                                      child: Text(
                                        'LET\'S START WITH BOOKING DETAILS',
                                        textAlign: TextAlign.start,
                                        style: FlutterFlowTheme.of(context)
                                            .labelMedium,
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                              Builder(
                                builder: (context) {
                                  final owner = FFAppState()
                                      .ownerList
                                      .map((e) => e)
                                      .toList();
                                  return ListView.builder(
                                    padding: EdgeInsets.zero,
                                    shrinkWrap: true,
                                    scrollDirection: Axis.vertical,
                                    itemCount: owner.length,
                                    itemBuilder: (context, ownerIndex) {
                                      final ownerItem = owner[ownerIndex];
                                      return Column(
                                        mainAxisSize: MainAxisSize.max,
                                        children: [
                                          Padding(
                                            padding:
                                                EdgeInsetsDirectional.fromSTEB(
                                                    0.0, 10.0, 0.0, 0.0),
                                            child: InkWell(
                                              splashColor: Colors.transparent,
                                              focusColor: Colors.transparent,
                                              hoverColor: Colors.transparent,
                                              highlightColor:
                                                  Colors.transparent,
                                              onTap: () async {
                                                setState(() {
                                                  _model.ownerCollapse =
                                                      ownerIndex;
                                                });
                                              },
                                              child: Row(
                                                mainAxisSize: MainAxisSize.max,
                                                mainAxisAlignment:
                                                    MainAxisAlignment.center,
                                                crossAxisAlignment:
                                                    CrossAxisAlignment.start,
                                                children: [
                                                  Flexible(
                                                    child: Container(
                                                      height: 50.0,
                                                      decoration: BoxDecoration(
                                                        color: FlutterFlowTheme
                                                                .of(context)
                                                            .secondaryBackground,
                                                        border: Border.all(
                                                          color: FlutterFlowTheme
                                                                  .of(context)
                                                              .subHeadingColor,
                                                        ),
                                                      ),
                                                      child: Row(
                                                        mainAxisSize:
                                                            MainAxisSize.max,
                                                        mainAxisAlignment:
                                                            MainAxisAlignment
                                                                .spaceBetween,
                                                        children: [
                                                          Row(
                                                            mainAxisSize:
                                                                MainAxisSize
                                                                    .max,
                                                            children: [
                                                              Container(
                                                                width: 60.0,
                                                                height: 100.0,
                                                                decoration:
                                                                    BoxDecoration(
                                                                  color: FlutterFlowTheme.of(
                                                                          context)
                                                                      .secondaryBackground,
                                                                ),
                                                                child: Icon(
                                                                  Icons.person,
                                                                  color: FlutterFlowTheme.of(
                                                                          context)
                                                                      .subHeadingColor,
                                                                  size: 24.0,
                                                                ),
                                                              ),
                                                              Align(
                                                                alignment:
                                                                    AlignmentDirectional(
                                                                        0.0,
                                                                        0.0),
                                                                child: Text(
                                                                  getJsonField(
                                                                            ownerItem,
                                                                            r'''$.name''',
                                                                          ) !=
                                                                          null
                                                                      ? getJsonField(
                                                                          ownerItem,
                                                                          r'''$.name''',
                                                                        ).toString()
                                                                      : 'FIRST OWNER',
                                                                  style: FlutterFlowTheme.of(
                                                                          context)
                                                                      .labelLarge
                                                                      .override(
                                                                        fontFamily:
                                                                            'Poppins',
                                                                        color: FlutterFlowTheme.of(context)
                                                                            .secondaryText,
                                                                      ),
                                                                ),
                                                              ),
                                                            ],
                                                          ),
                                                          Row(
                                                            mainAxisSize:
                                                                MainAxisSize
                                                                    .max,
                                                            children: [
                                                              if (ownerIndex !=
                                                                  _model
                                                                      .ownerCollapse)
                                                                Container(
                                                                  height: 100.0,
                                                                  decoration:
                                                                      BoxDecoration(
                                                                    color: FlutterFlowTheme.of(
                                                                            context)
                                                                        .secondaryBackground,
                                                                  ),
                                                                  child: Align(
                                                                    alignment:
                                                                        AlignmentDirectional(
                                                                            1.0,
                                                                            0.0),
                                                                    child:
                                                                        Padding(
                                                                      padding: EdgeInsetsDirectional.fromSTEB(
                                                                          0.0,
                                                                          0.0,
                                                                          16.0,
                                                                          0.0),
                                                                      child:
                                                                          FaIcon(
                                                                        FontAwesomeIcons
                                                                            .angleRight,
                                                                        color: FlutterFlowTheme.of(context)
                                                                            .secondaryText,
                                                                        size:
                                                                            24.0,
                                                                      ),
                                                                    ),
                                                                  ),
                                                                ),
                                                              if (ownerIndex ==
                                                                  _model
                                                                      .ownerCollapse)
                                                                Container(
                                                                  height: 100.0,
                                                                  decoration:
                                                                      BoxDecoration(
                                                                    color: FlutterFlowTheme.of(
                                                                            context)
                                                                        .secondaryBackground,
                                                                  ),
                                                                  child: Align(
                                                                    alignment:
                                                                        AlignmentDirectional(
                                                                            1.0,
                                                                            0.0),
                                                                    child:
                                                                        Padding(
                                                                      padding: EdgeInsetsDirectional.fromSTEB(
                                                                          0.0,
                                                                          0.0,
                                                                          16.0,
                                                                          0.0),
                                                                      child:
                                                                          FaIcon(
                                                                        FontAwesomeIcons
                                                                            .angleDown,
                                                                        color: FlutterFlowTheme.of(context)
                                                                            .secondaryText,
                                                                        size:
                                                                            24.0,
                                                                      ),
                                                                    ),
                                                                  ),
                                                                ),
                                                            ],
                                                          ),
                                                        ],
                                                      ),
                                                    ),
                                                  ),
                                                ],
                                              ),
                                            ),
                                          ),
                                          if (ownerIndex ==
                                              _model.ownerCollapse)
                                            Container(
                                              decoration: BoxDecoration(
                                                color:
                                                    FlutterFlowTheme.of(context)
                                                        .secondaryBackground,
                                              ),
                                              child: Column(
                                                mainAxisSize: MainAxisSize.max,
                                                children: [
                                                  Padding(
                                                    padding:
                                                        EdgeInsetsDirectional
                                                            .fromSTEB(0.0, 12.0,
                                                                0.0, 0.0),
                                                    child: Row(
                                                      mainAxisSize:
                                                          MainAxisSize.max,
                                                      mainAxisAlignment:
                                                          MainAxisAlignment
                                                              .start,
                                                      crossAxisAlignment:
                                                          CrossAxisAlignment
                                                              .start,
                                                      children: [
                                                        Expanded(
                                                          child: wrapWithModel(
                                                            model: _model
                                                                .bookingNameComponentModels
                                                                .getModel(
                                                              'booking_name_${ownerIndex.toString()}',
                                                              ownerIndex,
                                                            ),
                                                            updateCallback:
                                                                () => setState(
                                                                    () {}),
                                                            child:
                                                                BookingNameComponentWidget(
                                                              key: Key(
                                                                'Keyldw_${'booking_name_${ownerIndex.toString()}'}',
                                                              ),
                                                              bookingName:
                                                                  getJsonField(
                                                                ownerItem,
                                                                r'''$.name''',
                                                              ).toString(),
                                                              index: ownerIndex,
                                                              ownerList:
                                                                  FFAppState()
                                                                      .ownerList,
                                                            ),
                                                          ),
                                                        ),
                                                      ],
                                                    ),
                                                  ),
                                                  Padding(
                                                    padding:
                                                        EdgeInsetsDirectional
                                                            .fromSTEB(0.0, 12.0,
                                                                0.0, 0.0),
                                                    child: Row(
                                                      mainAxisSize:
                                                          MainAxisSize.max,
                                                      mainAxisAlignment:
                                                          MainAxisAlignment
                                                              .start,
                                                      crossAxisAlignment:
                                                          CrossAxisAlignment
                                                              .start,
                                                      children: [
                                                        Expanded(
                                                          child: wrapWithModel(
                                                            model: _model
                                                                .bookingEmailComponentModels
                                                                .getModel(
                                                              'booking_email_${ownerIndex.toString()}',
                                                              ownerIndex,
                                                            ),
                                                            updateCallback:
                                                                () => setState(
                                                                    () {}),
                                                            child:
                                                                BookingEmailComponentWidget(
                                                              key: Key(
                                                                'Keyuw8_${'booking_email_${ownerIndex.toString()}'}',
                                                              ),
                                                              email:
                                                                  getJsonField(
                                                                ownerItem,
                                                                r'''$.email''',
                                                              ).toString(),
                                                              index: ownerIndex,
                                                            ),
                                                          ),
                                                        ),
                                                        BookingPanComponentWidget(
                                                          key: Key(
                                                              'Key5g2_${ownerIndex}_of_${owner.length}'),
                                                          pan: getJsonField(
                                                            ownerItem,
                                                            r'''$.pan''',
                                                          ).toString(),
                                                          index: ownerIndex,
                                                        ),
                                                      ],
                                                    ),
                                                  ),
                                                  Padding(
                                                    padding:
                                                        EdgeInsetsDirectional
                                                            .fromSTEB(0.0, 10.0,
                                                                0.0, 0.0),
                                                    child: Row(
                                                      mainAxisSize:
                                                          MainAxisSize.max,
                                                      mainAxisAlignment:
                                                          MainAxisAlignment
                                                              .spaceEvenly,
                                                      crossAxisAlignment:
                                                          CrossAxisAlignment
                                                              .start,
                                                      children: [
                                                        Column(
                                                          mainAxisSize:
                                                              MainAxisSize.max,
                                                          children: [
                                                            Container(
                                                              width: 40.0,
                                                              height: 40.0,
                                                              decoration:
                                                                  BoxDecoration(
                                                                color: FlutterFlowTheme.of(
                                                                        context)
                                                                    .secondaryBackground,
                                                                border:
                                                                    Border.all(
                                                                  color: FlutterFlowTheme.of(
                                                                          context)
                                                                      .textFieldBorder,
                                                                ),
                                                              ),
                                                              child: InkWell(
                                                                splashColor: Colors
                                                                    .transparent,
                                                                focusColor: Colors
                                                                    .transparent,
                                                                hoverColor: Colors
                                                                    .transparent,
                                                                highlightColor:
                                                                    Colors
                                                                        .transparent,
                                                                onTap:
                                                                    () async {
                                                                  final selectedMedia =
                                                                      await selectMediaWithSourceBottomSheet(
                                                                    context:
                                                                        context,
                                                                    allowPhoto:
                                                                        true,
                                                                  );
                                                                  if (selectedMedia !=
                                                                          null &&
                                                                      selectedMedia.every((m) => validateFileFormat(
                                                                          m.storagePath,
                                                                          context))) {
                                                                    setState(() =>
                                                                        _model.isDataUploading1 =
                                                                            true);
                                                                    var selectedUploadedFiles =
                                                                        <FFUploadedFile>[];

                                                                    try {
                                                                      selectedUploadedFiles = selectedMedia
                                                                          .map((m) => FFUploadedFile(
                                                                                name: m.storagePath.split('/').last,
                                                                                bytes: m.bytes,
                                                                                height: m.dimensions?.height,
                                                                                width: m.dimensions?.width,
                                                                                blurHash: m.blurHash,
                                                                              ))
                                                                          .toList();
                                                                    } finally {
                                                                      _model.isDataUploading1 =
                                                                          false;
                                                                    }
                                                                    if (selectedUploadedFiles
                                                                            .length ==
                                                                        selectedMedia
                                                                            .length) {
                                                                      setState(
                                                                          () {
                                                                        _model.uploadedLocalFile1 =
                                                                            selectedUploadedFiles.first;
                                                                      });
                                                                    } else {
                                                                      setState(
                                                                          () {});
                                                                      return;
                                                                    }
                                                                  }
                                                                },
                                                                child: Icon(
                                                                  Icons
                                                                      .file_upload_outlined,
                                                                  color: FlutterFlowTheme.of(
                                                                          context)
                                                                      .secondaryText,
                                                                  size: 18.0,
                                                                ),
                                                              ),
                                                            ),
                                                            Padding(
                                                              padding:
                                                                  EdgeInsetsDirectional
                                                                      .fromSTEB(
                                                                          0.0,
                                                                          4.0,
                                                                          0.0,
                                                                          0.0),
                                                              child: Text(
                                                                'Pan',
                                                                style: FlutterFlowTheme.of(
                                                                        context)
                                                                    .bodyMedium
                                                                    .override(
                                                                      fontFamily:
                                                                          'Poppins',
                                                                      fontSize:
                                                                          12.0,
                                                                    ),
                                                              ),
                                                            ),
                                                          ],
                                                        ),
                                                        Padding(
                                                          padding:
                                                              EdgeInsetsDirectional
                                                                  .fromSTEB(
                                                                      16.0,
                                                                      0.0,
                                                                      0.0,
                                                                      0.0),
                                                          child: Column(
                                                            mainAxisSize:
                                                                MainAxisSize
                                                                    .max,
                                                            children: [
                                                              Container(
                                                                width: 40.0,
                                                                height: 40.0,
                                                                decoration:
                                                                    BoxDecoration(
                                                                  color: FlutterFlowTheme.of(
                                                                          context)
                                                                      .secondaryBackground,
                                                                  border: Border
                                                                      .all(
                                                                    color: FlutterFlowTheme.of(
                                                                            context)
                                                                        .textFieldBorder,
                                                                  ),
                                                                ),
                                                                child: InkWell(
                                                                  splashColor:
                                                                      Colors
                                                                          .transparent,
                                                                  focusColor: Colors
                                                                      .transparent,
                                                                  hoverColor: Colors
                                                                      .transparent,
                                                                  highlightColor:
                                                                      Colors
                                                                          .transparent,
                                                                  onTap:
                                                                      () async {
                                                                    final selectedMedia =
                                                                        await selectMediaWithSourceBottomSheet(
                                                                      context:
                                                                          context,
                                                                      allowPhoto:
                                                                          true,
                                                                    );
                                                                    if (selectedMedia !=
                                                                            null &&
                                                                        selectedMedia.every((m) => validateFileFormat(
                                                                            m.storagePath,
                                                                            context))) {
                                                                      setState(() =>
                                                                          _model.isDataUploading2 =
                                                                              true);
                                                                      var selectedUploadedFiles =
                                                                          <FFUploadedFile>[];

                                                                      try {
                                                                        selectedUploadedFiles = selectedMedia
                                                                            .map((m) => FFUploadedFile(
                                                                                  name: m.storagePath.split('/').last,
                                                                                  bytes: m.bytes,
                                                                                  height: m.dimensions?.height,
                                                                                  width: m.dimensions?.width,
                                                                                  blurHash: m.blurHash,
                                                                                ))
                                                                            .toList();
                                                                      } finally {
                                                                        _model.isDataUploading2 =
                                                                            false;
                                                                      }
                                                                      if (selectedUploadedFiles
                                                                              .length ==
                                                                          selectedMedia
                                                                              .length) {
                                                                        setState(
                                                                            () {
                                                                          _model.uploadedLocalFile2 =
                                                                              selectedUploadedFiles.first;
                                                                        });
                                                                      } else {
                                                                        setState(
                                                                            () {});
                                                                        return;
                                                                      }
                                                                    }
                                                                  },
                                                                  child: Icon(
                                                                    Icons
                                                                        .file_upload_outlined,
                                                                    color: FlutterFlowTheme.of(
                                                                            context)
                                                                        .secondaryText,
                                                                    size: 18.0,
                                                                  ),
                                                                ),
                                                              ),
                                                              Padding(
                                                                padding:
                                                                    EdgeInsetsDirectional
                                                                        .fromSTEB(
                                                                            0.0,
                                                                            4.0,
                                                                            0.0,
                                                                            0.0),
                                                                child: Text(
                                                                  'Aadhar',
                                                                  style: FlutterFlowTheme.of(
                                                                          context)
                                                                      .bodyMedium
                                                                      .override(
                                                                        fontFamily:
                                                                            'Poppins',
                                                                        fontSize:
                                                                            12.0,
                                                                      ),
                                                                ),
                                                              ),
                                                            ],
                                                          ),
                                                        ),
                                                        Padding(
                                                          padding:
                                                              EdgeInsetsDirectional
                                                                  .fromSTEB(
                                                                      16.0,
                                                                      0.0,
                                                                      0.0,
                                                                      0.0),
                                                          child: Column(
                                                            mainAxisSize:
                                                                MainAxisSize
                                                                    .max,
                                                            children: [
                                                              Container(
                                                                width: 40.0,
                                                                height: 40.0,
                                                                decoration:
                                                                    BoxDecoration(
                                                                  color: FlutterFlowTheme.of(
                                                                          context)
                                                                      .secondaryBackground,
                                                                  border: Border
                                                                      .all(
                                                                    color: FlutterFlowTheme.of(
                                                                            context)
                                                                        .textFieldBorder,
                                                                  ),
                                                                ),
                                                                child: InkWell(
                                                                  splashColor:
                                                                      Colors
                                                                          .transparent,
                                                                  focusColor: Colors
                                                                      .transparent,
                                                                  hoverColor: Colors
                                                                      .transparent,
                                                                  highlightColor:
                                                                      Colors
                                                                          .transparent,
                                                                  onTap:
                                                                      () async {
                                                                    final selectedMedia =
                                                                        await selectMediaWithSourceBottomSheet(
                                                                      context:
                                                                          context,
                                                                      allowPhoto:
                                                                          true,
                                                                    );
                                                                    if (selectedMedia !=
                                                                            null &&
                                                                        selectedMedia.every((m) => validateFileFormat(
                                                                            m.storagePath,
                                                                            context))) {
                                                                      setState(() =>
                                                                          _model.isDataUploading3 =
                                                                              true);
                                                                      var selectedUploadedFiles =
                                                                          <FFUploadedFile>[];

                                                                      try {
                                                                        selectedUploadedFiles = selectedMedia
                                                                            .map((m) => FFUploadedFile(
                                                                                  name: m.storagePath.split('/').last,
                                                                                  bytes: m.bytes,
                                                                                  height: m.dimensions?.height,
                                                                                  width: m.dimensions?.width,
                                                                                  blurHash: m.blurHash,
                                                                                ))
                                                                            .toList();
                                                                      } finally {
                                                                        _model.isDataUploading3 =
                                                                            false;
                                                                      }
                                                                      if (selectedUploadedFiles
                                                                              .length ==
                                                                          selectedMedia
                                                                              .length) {
                                                                        setState(
                                                                            () {
                                                                          _model.uploadedLocalFile3 =
                                                                              selectedUploadedFiles.first;
                                                                        });
                                                                      } else {
                                                                        setState(
                                                                            () {});
                                                                        return;
                                                                      }
                                                                    }
                                                                  },
                                                                  child: Icon(
                                                                    Icons
                                                                        .file_upload_outlined,
                                                                    color: FlutterFlowTheme.of(
                                                                            context)
                                                                        .secondaryText,
                                                                    size: 18.0,
                                                                  ),
                                                                ),
                                                              ),
                                                              Padding(
                                                                padding:
                                                                    EdgeInsetsDirectional
                                                                        .fromSTEB(
                                                                            0.0,
                                                                            4.0,
                                                                            0.0,
                                                                            0.0),
                                                                child: Text(
                                                                  'Image',
                                                                  style: FlutterFlowTheme.of(
                                                                          context)
                                                                      .bodyMedium
                                                                      .override(
                                                                        fontFamily:
                                                                            'Poppins',
                                                                        fontSize:
                                                                            12.0,
                                                                      ),
                                                                ),
                                                              ),
                                                            ],
                                                          ),
                                                        ),
                                                      ],
                                                    ),
                                                  ),
                                                ],
                                              ),
                                            ),
                                        ],
                                      );
                                    },
                                  );
                                },
                              ),
                              Padding(
                                padding: EdgeInsetsDirectional.fromSTEB(
                                    0.0, 12.0, 0.0, 0.0),
                                child: Row(
                                  mainAxisSize: MainAxisSize.max,
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                  children: [
                                    Text(
                                      'Add Owner',
                                      style: FlutterFlowTheme.of(context)
                                          .bodyMedium
                                          .override(
                                            fontFamily: 'Poppins',
                                            fontSize: 14.0,
                                          ),
                                    ),
                                    FlutterFlowIconButton(
                                      borderWidth: 1.0,
                                      buttonSize: 40.0,
                                      icon: Icon(
                                        Icons.add,
                                        color: FlutterFlowTheme.of(context)
                                            .primary,
                                        size: 26.0,
                                      ),
                                      onPressed: () async {
                                        setState(() {
                                          _model.multipleOwners = 1;
                                        });
                                        setState(() {
                                          FFAppState().addToOwnerList(
                                              FFAppState().ownerJson);
                                        });
                                      },
                                    ),
                                    Padding(
                                      padding: EdgeInsetsDirectional.fromSTEB(
                                          0.0, 0.0, 0.0, 5.0),
                                      child: FlutterFlowIconButton(
                                        borderWidth: 1.0,
                                        buttonSize: 40.0,
                                        icon: FaIcon(
                                          FontAwesomeIcons.minus,
                                          color: FlutterFlowTheme.of(context)
                                              .primary,
                                          size: 26.0,
                                        ),
                                        onPressed: () async {
                                          setState(() {
                                            _model.multipleOwners =
                                                _model.multipleOwners + -1;
                                          });
                                          setState(() {
                                            FFAppState().removeFromOwnerList(
                                                FFAppState().ownerJson);
                                          });
                                        },
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                              Padding(
                                padding: EdgeInsetsDirectional.fromSTEB(
                                    0.0, 12.0, 0.0, 24.0),
                                child: Row(
                                  mainAxisSize: MainAxisSize.max,
                                  mainAxisAlignment: MainAxisAlignment.end,
                                  children: [
                                    Align(
                                      alignment:
                                          AlignmentDirectional(0.0, 0.05),
                                      child: FFButtonWidget(
                                        onPressed: () async {
                                          setState(() {
                                            _model.currentTab =
                                                _model.currentTab + 1;
                                          });
                                        },
                                        text: '',
                                        icon: Icon(
                                          Icons.chevron_right_outlined,
                                          size: 30.0,
                                        ),
                                        options: FFButtonOptions(
                                          width: 60.0,
                                          height: 60.0,
                                          padding:
                                              EdgeInsetsDirectional.fromSTEB(
                                                  10.0, 0.0, 0.0, 0.0),
                                          iconPadding:
                                              EdgeInsetsDirectional.fromSTEB(
                                                  0.0, 0.0, 0.0, 0.0),
                                          color: FlutterFlowTheme.of(context)
                                              .primaryText,
                                          textStyle:
                                              FlutterFlowTheme.of(context)
                                                  .titleSmall
                                                  .override(
                                                    fontFamily:
                                                        'Plus Jakarta Sans',
                                                    color: Colors.white,
                                                    fontSize: 16.0,
                                                    fontWeight: FontWeight.w300,
                                                  ),
                                          borderSide: BorderSide(
                                            width: 2.0,
                                          ),
                                          borderRadius:
                                              BorderRadius.circular(30.0),
                                          hoverColor:
                                              FlutterFlowTheme.of(context)
                                                  .secondaryText,
                                          hoverBorderSide: BorderSide(
                                            color: Color(0xFF6F61EF),
                                            width: 2.0,
                                          ),
                                          hoverTextColor: Color(0xFF15161E),
                                          hoverElevation: 0.0,
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ).animateOnPageLoad(
                        animationsMap['containerOnPageLoadAnimation1']!),
                  ),
                if (_model.currentTab == 1)
                  Container(
                    width: double.infinity,
                    height: MediaQuery.sizeOf(context).height * 1.0,
                    constraints: BoxConstraints(
                      maxWidth: 670.0,
                    ),
                    decoration: BoxDecoration(
                      color: Colors.white,
                      boxShadow: [
                        BoxShadow(
                          blurRadius: 12.0,
                          color: Color(0x1E000000),
                          offset: Offset(0.0, 5.0),
                        )
                      ],
                    ),
                    child: Padding(
                      padding:
                          EdgeInsetsDirectional.fromSTEB(24.0, 0.0, 24.0, 0.0),
                      child: Column(
                        mainAxisSize: MainAxisSize.max,
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Padding(
                            padding: EdgeInsetsDirectional.fromSTEB(
                                0.0, 10.0, 0.0, 0.0),
                            child: InkWell(
                              splashColor: Colors.transparent,
                              focusColor: Colors.transparent,
                              hoverColor: Colors.transparent,
                              highlightColor: Colors.transparent,
                              onTap: () async {
                                setState(() {
                                  _model.currentTab = 1;
                                });
                                setState(() {});
                              },
                              child: Row(
                                mainAxisSize: MainAxisSize.max,
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Expanded(
                                    child: Align(
                                      alignment: AlignmentDirectional(0.0, 0.0),
                                      child: Padding(
                                        padding: EdgeInsetsDirectional.fromSTEB(
                                            8.0, 16.0, 0.0, 16.0),
                                        child: Text(
                                          'Step 2',
                                          style: FlutterFlowTheme.of(context)
                                              .labelMedium
                                              .override(
                                                fontFamily: 'Plus Jakarta Sans',
                                                color: Color(0xFF606A85),
                                                fontSize: 16.0,
                                              ),
                                        ),
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                          Padding(
                            padding: EdgeInsetsDirectional.fromSTEB(
                                0.0, 10.0, 0.0, 10.0),
                            child: Row(
                              mainAxisSize: MainAxisSize.max,
                              children: [
                                Text(
                                  'LET\'S FILL AGREEMENT DETAILS',
                                  style: FlutterFlowTheme.of(context)
                                      .labelMedium
                                      .override(
                                        fontFamily: 'Plus Jakarta Sans',
                                        color: FlutterFlowTheme.of(context)
                                            .labelColor,
                                        fontSize: 12.0,
                                        fontWeight: FontWeight.w500,
                                      ),
                                ),
                              ],
                            ),
                          ),
                          Padding(
                            padding: EdgeInsetsDirectional.fromSTEB(
                                0.0, 0.0, 0.0, 10.0),
                            child: Row(
                              mainAxisSize: MainAxisSize.max,
                              children: [
                                Expanded(
                                  child: Container(
                                    width: 200.0,
                                    child: TextFormField(
                                      controller: _model.contactController1,
                                      autofocus: true,
                                      obscureText: false,
                                      decoration: InputDecoration(
                                        isDense: true,
                                        labelText: 'Contact No',
                                        labelStyle: FlutterFlowTheme.of(context)
                                            .labelMedium
                                            .override(
                                              fontFamily: 'Plus Jakarta Sans',
                                              color: Color(0xFF606A85),
                                              fontSize: 14.0,
                                              fontWeight: FontWeight.w500,
                                            ),
                                        hintStyle: FlutterFlowTheme.of(context)
                                            .labelMedium
                                            .override(
                                              fontFamily: 'Plus Jakarta Sans',
                                              color: Color(0xFF606A85),
                                              fontSize: 14.0,
                                              fontWeight: FontWeight.w500,
                                            ),
                                        enabledBorder: OutlineInputBorder(
                                          borderSide: BorderSide(
                                            color: Color(0xFFE5E7EB),
                                            width: 2.0,
                                          ),
                                          borderRadius: const BorderRadius.only(
                                            topLeft: Radius.circular(4.0),
                                            topRight: Radius.circular(4.0),
                                          ),
                                        ),
                                        focusedBorder: OutlineInputBorder(
                                          borderSide: BorderSide(
                                            color: Color(0xFF6F61EF),
                                            width: 2.0,
                                          ),
                                          borderRadius: const BorderRadius.only(
                                            topLeft: Radius.circular(4.0),
                                            topRight: Radius.circular(4.0),
                                          ),
                                        ),
                                        errorBorder: OutlineInputBorder(
                                          borderSide: BorderSide(
                                            color: Color(0xFFFF5963),
                                            width: 2.0,
                                          ),
                                          borderRadius: const BorderRadius.only(
                                            topLeft: Radius.circular(4.0),
                                            topRight: Radius.circular(4.0),
                                          ),
                                        ),
                                        focusedErrorBorder: OutlineInputBorder(
                                          borderSide: BorderSide(
                                            color: Color(0xFFFF5963),
                                            width: 2.0,
                                          ),
                                          borderRadius: const BorderRadius.only(
                                            topLeft: Radius.circular(4.0),
                                            topRight: Radius.circular(4.0),
                                          ),
                                        ),
                                        filled: true,
                                        fillColor: Colors.white,
                                        contentPadding:
                                            EdgeInsetsDirectional.fromSTEB(
                                                15.0, 10.0, 15.0, 20.0),
                                      ),
                                      style: FlutterFlowTheme.of(context)
                                          .bodyMedium
                                          .override(
                                            fontFamily: 'Plus Jakarta Sans',
                                            color: Color(0xFF15161E),
                                            fontSize: 14.0,
                                            fontWeight: FontWeight.w500,
                                          ),
                                      maxLines: null,
                                      cursorColor: Color(0xFF6F61EF),
                                      validator: _model
                                          .contactController1Validator
                                          .asValidator(context),
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                          Padding(
                            padding: EdgeInsetsDirectional.fromSTEB(
                                0.0, 0.0, 0.0, 10.0),
                            child: Row(
                              mainAxisSize: MainAxisSize.max,
                              children: [
                                Expanded(
                                  child: Padding(
                                    padding: EdgeInsetsDirectional.fromSTEB(
                                        0.0, 0.0, 5.0, 0.0),
                                    child: Container(
                                      width: 200.0,
                                      child: TextFormField(
                                        controller: _model.contactController2,
                                        autofocus: true,
                                        obscureText: false,
                                        decoration: InputDecoration(
                                          isDense: true,
                                          labelText: 'Office No',
                                          labelStyle:
                                              FlutterFlowTheme.of(context)
                                                  .labelMedium
                                                  .override(
                                                    fontFamily:
                                                        'Plus Jakarta Sans',
                                                    color: Color(0xFF606A85),
                                                    fontSize: 14.0,
                                                    fontWeight: FontWeight.w500,
                                                  ),
                                          hintStyle:
                                              FlutterFlowTheme.of(context)
                                                  .labelMedium
                                                  .override(
                                                    fontFamily:
                                                        'Plus Jakarta Sans',
                                                    color: Color(0xFF606A85),
                                                    fontSize: 14.0,
                                                    fontWeight: FontWeight.w500,
                                                  ),
                                          enabledBorder: OutlineInputBorder(
                                            borderSide: BorderSide(
                                              color: Color(0xFFE5E7EB),
                                              width: 2.0,
                                            ),
                                            borderRadius:
                                                const BorderRadius.only(
                                              topLeft: Radius.circular(4.0),
                                              topRight: Radius.circular(4.0),
                                            ),
                                          ),
                                          focusedBorder: OutlineInputBorder(
                                            borderSide: BorderSide(
                                              color: Color(0xFF6F61EF),
                                              width: 2.0,
                                            ),
                                            borderRadius:
                                                const BorderRadius.only(
                                              topLeft: Radius.circular(4.0),
                                              topRight: Radius.circular(4.0),
                                            ),
                                          ),
                                          errorBorder: OutlineInputBorder(
                                            borderSide: BorderSide(
                                              color: Color(0xFFFF5963),
                                              width: 2.0,
                                            ),
                                            borderRadius:
                                                const BorderRadius.only(
                                              topLeft: Radius.circular(4.0),
                                              topRight: Radius.circular(4.0),
                                            ),
                                          ),
                                          focusedErrorBorder:
                                              OutlineInputBorder(
                                            borderSide: BorderSide(
                                              color: Color(0xFFFF5963),
                                              width: 2.0,
                                            ),
                                            borderRadius:
                                                const BorderRadius.only(
                                              topLeft: Radius.circular(4.0),
                                              topRight: Radius.circular(4.0),
                                            ),
                                          ),
                                          filled: true,
                                          fillColor: Colors.white,
                                          contentPadding:
                                              EdgeInsetsDirectional.fromSTEB(
                                                  15.0, 10.0, 15.0, 20.0),
                                        ),
                                        style: FlutterFlowTheme.of(context)
                                            .bodyMedium
                                            .override(
                                              fontFamily: 'Plus Jakarta Sans',
                                              color: Color(0xFF15161E),
                                              fontSize: 14.0,
                                              fontWeight: FontWeight.w500,
                                            ),
                                        maxLines: null,
                                        cursorColor: Color(0xFF6F61EF),
                                        validator: _model
                                            .contactController2Validator
                                            .asValidator(context),
                                      ),
                                    ),
                                  ),
                                ),
                                Expanded(
                                  child: Padding(
                                    padding: EdgeInsetsDirectional.fromSTEB(
                                        5.0, 0.0, 0.0, 0.0),
                                    child: Container(
                                      width: 200.0,
                                      child: TextFormField(
                                        controller: _model.contactController3,
                                        autofocus: true,
                                        obscureText: false,
                                        decoration: InputDecoration(
                                          isDense: true,
                                          labelText: 'Resident No',
                                          labelStyle:
                                              FlutterFlowTheme.of(context)
                                                  .labelMedium
                                                  .override(
                                                    fontFamily:
                                                        'Plus Jakarta Sans',
                                                    color: Color(0xFF606A85),
                                                    fontSize: 14.0,
                                                    fontWeight: FontWeight.w500,
                                                  ),
                                          hintStyle:
                                              FlutterFlowTheme.of(context)
                                                  .labelMedium
                                                  .override(
                                                    fontFamily:
                                                        'Plus Jakarta Sans',
                                                    color: Color(0xFF606A85),
                                                    fontSize: 14.0,
                                                    fontWeight: FontWeight.w500,
                                                  ),
                                          enabledBorder: OutlineInputBorder(
                                            borderSide: BorderSide(
                                              color: Color(0xFFE5E7EB),
                                              width: 2.0,
                                            ),
                                            borderRadius:
                                                const BorderRadius.only(
                                              topLeft: Radius.circular(4.0),
                                              topRight: Radius.circular(4.0),
                                            ),
                                          ),
                                          focusedBorder: OutlineInputBorder(
                                            borderSide: BorderSide(
                                              color: Color(0xFF6F61EF),
                                              width: 2.0,
                                            ),
                                            borderRadius:
                                                const BorderRadius.only(
                                              topLeft: Radius.circular(4.0),
                                              topRight: Radius.circular(4.0),
                                            ),
                                          ),
                                          errorBorder: OutlineInputBorder(
                                            borderSide: BorderSide(
                                              color: Color(0xFFFF5963),
                                              width: 2.0,
                                            ),
                                            borderRadius:
                                                const BorderRadius.only(
                                              topLeft: Radius.circular(4.0),
                                              topRight: Radius.circular(4.0),
                                            ),
                                          ),
                                          focusedErrorBorder:
                                              OutlineInputBorder(
                                            borderSide: BorderSide(
                                              color: Color(0xFFFF5963),
                                              width: 2.0,
                                            ),
                                            borderRadius:
                                                const BorderRadius.only(
                                              topLeft: Radius.circular(4.0),
                                              topRight: Radius.circular(4.0),
                                            ),
                                          ),
                                          filled: true,
                                          fillColor: Colors.white,
                                          contentPadding:
                                              EdgeInsetsDirectional.fromSTEB(
                                                  15.0, 10.0, 15.0, 20.0),
                                        ),
                                        style: FlutterFlowTheme.of(context)
                                            .bodyMedium
                                            .override(
                                              fontFamily: 'Plus Jakarta Sans',
                                              color: Color(0xFF15161E),
                                              fontSize: 14.0,
                                              fontWeight: FontWeight.w500,
                                            ),
                                        maxLines: null,
                                        cursorColor: Color(0xFF6F61EF),
                                        validator: _model
                                            .contactController3Validator
                                            .asValidator(context),
                                      ),
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                          Row(
                            mainAxisSize: MainAxisSize.max,
                            mainAxisAlignment: MainAxisAlignment.start,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Expanded(
                                child: Container(
                                  width: 200.0,
                                  child: TextFormField(
                                    controller: _model.addressController1,
                                    autofocus: true,
                                    obscureText: false,
                                    decoration: InputDecoration(
                                      isDense: true,
                                      labelText: 'Address',
                                      labelStyle: FlutterFlowTheme.of(context)
                                          .labelMedium
                                          .override(
                                            fontFamily: 'Plus Jakarta Sans',
                                            color: Color(0xFF606A85),
                                            fontSize: 14.0,
                                            fontWeight: FontWeight.w500,
                                          ),
                                      hintStyle: FlutterFlowTheme.of(context)
                                          .labelMedium
                                          .override(
                                            fontFamily: 'Plus Jakarta Sans',
                                            color: Color(0xFF606A85),
                                            fontSize: 14.0,
                                            fontWeight: FontWeight.w500,
                                          ),
                                      enabledBorder: OutlineInputBorder(
                                        borderSide: BorderSide(
                                          color: Color(0xFFE5E7EB),
                                          width: 2.0,
                                        ),
                                        borderRadius: const BorderRadius.only(
                                          topLeft: Radius.circular(4.0),
                                          topRight: Radius.circular(4.0),
                                        ),
                                      ),
                                      focusedBorder: OutlineInputBorder(
                                        borderSide: BorderSide(
                                          color: Color(0xFF6F61EF),
                                          width: 2.0,
                                        ),
                                        borderRadius: const BorderRadius.only(
                                          topLeft: Radius.circular(4.0),
                                          topRight: Radius.circular(4.0),
                                        ),
                                      ),
                                      errorBorder: OutlineInputBorder(
                                        borderSide: BorderSide(
                                          color: Color(0xFFFF5963),
                                          width: 2.0,
                                        ),
                                        borderRadius: const BorderRadius.only(
                                          topLeft: Radius.circular(4.0),
                                          topRight: Radius.circular(4.0),
                                        ),
                                      ),
                                      focusedErrorBorder: OutlineInputBorder(
                                        borderSide: BorderSide(
                                          color: Color(0xFFFF5963),
                                          width: 2.0,
                                        ),
                                        borderRadius: const BorderRadius.only(
                                          topLeft: Radius.circular(4.0),
                                          topRight: Radius.circular(4.0),
                                        ),
                                      ),
                                      filled: true,
                                      fillColor: Colors.white,
                                      contentPadding:
                                          EdgeInsetsDirectional.fromSTEB(
                                              20.0, 12.0, 20.0, 16.0),
                                    ),
                                    style: FlutterFlowTheme.of(context)
                                        .bodyMedium
                                        .override(
                                          fontFamily: 'Plus Jakarta Sans',
                                          color: Color(0xFF15161E),
                                          fontSize: 14.0,
                                          fontWeight: FontWeight.w500,
                                        ),
                                    maxLines: null,
                                    cursorColor: Color(0xFF6F61EF),
                                    validator: _model
                                        .addressController1Validator
                                        .asValidator(context),
                                  ),
                                ),
                              ),
                            ],
                          ),
                          Row(
                            mainAxisSize: MainAxisSize.max,
                            mainAxisAlignment: MainAxisAlignment.start,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Expanded(
                                child: Padding(
                                  padding: EdgeInsetsDirectional.fromSTEB(
                                      0.0, 10.0, 0.0, 0.0),
                                  child: Container(
                                    width: 200.0,
                                    child: TextFormField(
                                      controller: _model.branchController1,
                                      autofocus: true,
                                      obscureText: false,
                                      decoration: InputDecoration(
                                        isDense: true,
                                        labelText: 'Agreement Value',
                                        labelStyle: FlutterFlowTheme.of(context)
                                            .labelMedium
                                            .override(
                                              fontFamily: 'Plus Jakarta Sans',
                                              color: Color(0xFF606A85),
                                              fontSize: 14.0,
                                              fontWeight: FontWeight.w500,
                                            ),
                                        hintStyle: FlutterFlowTheme.of(context)
                                            .labelMedium
                                            .override(
                                              fontFamily: 'Plus Jakarta Sans',
                                              color: Color(0xFF606A85),
                                              fontSize: 14.0,
                                              fontWeight: FontWeight.w500,
                                            ),
                                        enabledBorder: OutlineInputBorder(
                                          borderSide: BorderSide(
                                            color: FlutterFlowTheme.of(context)
                                                .textFieldBorder,
                                            width: 2.0,
                                          ),
                                          borderRadius: const BorderRadius.only(
                                            topLeft: Radius.circular(4.0),
                                            topRight: Radius.circular(4.0),
                                          ),
                                        ),
                                        focusedBorder: OutlineInputBorder(
                                          borderSide: BorderSide(
                                            color: Color(0xFF6F61EF),
                                            width: 2.0,
                                          ),
                                          borderRadius: const BorderRadius.only(
                                            topLeft: Radius.circular(4.0),
                                            topRight: Radius.circular(4.0),
                                          ),
                                        ),
                                        errorBorder: OutlineInputBorder(
                                          borderSide: BorderSide(
                                            color: Color(0xFFFF5963),
                                            width: 2.0,
                                          ),
                                          borderRadius: const BorderRadius.only(
                                            topLeft: Radius.circular(4.0),
                                            topRight: Radius.circular(4.0),
                                          ),
                                        ),
                                        focusedErrorBorder: OutlineInputBorder(
                                          borderSide: BorderSide(
                                            color: Color(0xFFFF5963),
                                            width: 2.0,
                                          ),
                                          borderRadius: const BorderRadius.only(
                                            topLeft: Radius.circular(4.0),
                                            topRight: Radius.circular(4.0),
                                          ),
                                        ),
                                        filled: true,
                                        fillColor: Colors.white,
                                        contentPadding:
                                            EdgeInsetsDirectional.fromSTEB(
                                                20.0, 10.0, 20.0, 20.0),
                                      ),
                                      style: FlutterFlowTheme.of(context)
                                          .bodyMedium
                                          .override(
                                            fontFamily: 'Plus Jakarta Sans',
                                            color: Color(0xFF15161E),
                                            fontSize: 14.0,
                                            fontWeight: FontWeight.w500,
                                          ),
                                      maxLines: null,
                                      cursorColor: Color(0xFF6F61EF),
                                      validator: _model
                                          .branchController1Validator
                                          .asValidator(context),
                                    ),
                                  ),
                                ),
                              ),
                            ],
                          ),
                          Padding(
                            padding: EdgeInsetsDirectional.fromSTEB(
                                0.0, 16.0, 0.0, 24.0),
                            child: Row(
                              mainAxisSize: MainAxisSize.max,
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Align(
                                  alignment: AlignmentDirectional(0.0, 0.05),
                                  child: FFButtonWidget(
                                    onPressed: () async {
                                      setState(() {
                                        _model.currentTab =
                                            _model.currentTab + -1;
                                      });
                                    },
                                    text: '',
                                    icon: Icon(
                                      Icons.chevron_left,
                                      size: 30.0,
                                    ),
                                    options: FFButtonOptions(
                                      width: 60.0,
                                      height: 60.0,
                                      padding: EdgeInsetsDirectional.fromSTEB(
                                          8.0, 0.0, 0.0, 0.0),
                                      iconPadding:
                                          EdgeInsetsDirectional.fromSTEB(
                                              0.0, 0.0, 0.0, 0.0),
                                      color: FlutterFlowTheme.of(context)
                                          .secondaryBackground,
                                      textStyle: FlutterFlowTheme.of(context)
                                          .bodyMedium
                                          .override(
                                            fontFamily: 'Plus Jakarta Sans',
                                            color: FlutterFlowTheme.of(context)
                                                .primaryText,
                                            fontSize: 14.0,
                                            fontWeight: FontWeight.w500,
                                          ),
                                      elevation: 0.0,
                                      borderSide: BorderSide(
                                        color: Colors.black,
                                        width: 2.0,
                                      ),
                                      borderRadius: BorderRadius.circular(30.0),
                                      hoverBorderSide: BorderSide(
                                        color: FlutterFlowTheme.of(context)
                                            .primaryText,
                                        width: 2.0,
                                      ),
                                      hoverTextColor: Color(0xFF15161E),
                                      hoverElevation: 0.0,
                                    ),
                                  ),
                                ),
                                Align(
                                  alignment: AlignmentDirectional(0.0, 0.05),
                                  child: FFButtonWidget(
                                    onPressed: () async {
                                      setState(() {
                                        _model.currentTab =
                                            _model.currentTab + 1;
                                      });
                                    },
                                    text: '',
                                    icon: Icon(
                                      Icons.chevron_right_outlined,
                                      size: 30.0,
                                    ),
                                    options: FFButtonOptions(
                                      width: 60.0,
                                      height: 60.0,
                                      padding: EdgeInsetsDirectional.fromSTEB(
                                          10.0, 0.0, 0.0, 0.0),
                                      iconPadding:
                                          EdgeInsetsDirectional.fromSTEB(
                                              0.0, 0.0, 0.0, 0.0),
                                      color: FlutterFlowTheme.of(context)
                                          .primaryText,
                                      textStyle: FlutterFlowTheme.of(context)
                                          .titleSmall
                                          .override(
                                            fontFamily: 'Plus Jakarta Sans',
                                            color: Colors.white,
                                            fontSize: 16.0,
                                            fontWeight: FontWeight.w300,
                                          ),
                                      borderSide: BorderSide(
                                        width: 2.0,
                                      ),
                                      borderRadius: BorderRadius.circular(30.0),
                                      hoverBorderSide: BorderSide(
                                        color: Color(0xFF6F61EF),
                                        width: 2.0,
                                      ),
                                      hoverTextColor: Color(0xFF15161E),
                                      hoverElevation: 0.0,
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                  ).animateOnPageLoad(
                      animationsMap['containerOnPageLoadAnimation2']!),
                if (_model.currentTab == 2)
                  Container(
                    width: double.infinity,
                    height: MediaQuery.sizeOf(context).height * 1.0,
                    constraints: BoxConstraints(
                      maxWidth: 670.0,
                    ),
                    decoration: BoxDecoration(
                      color: Colors.white,
                      boxShadow: [
                        BoxShadow(
                          blurRadius: 12.0,
                          color: Color(0x1E000000),
                          offset: Offset(0.0, 5.0),
                        )
                      ],
                    ),
                    child: Padding(
                      padding:
                          EdgeInsetsDirectional.fromSTEB(24.0, 0.0, 24.0, 0.0),
                      child: Column(
                        mainAxisSize: MainAxisSize.max,
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Padding(
                            padding: EdgeInsetsDirectional.fromSTEB(
                                0.0, 10.0, 0.0, 0.0),
                            child: InkWell(
                              splashColor: Colors.transparent,
                              focusColor: Colors.transparent,
                              hoverColor: Colors.transparent,
                              highlightColor: Colors.transparent,
                              onTap: () async {
                                setState(() {
                                  _model.currentTab = 1;
                                });
                                setState(() {});
                              },
                              child: Row(
                                mainAxisSize: MainAxisSize.max,
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Expanded(
                                    child: Align(
                                      alignment: AlignmentDirectional(0.0, 0.0),
                                      child: Padding(
                                        padding: EdgeInsetsDirectional.fromSTEB(
                                            8.0, 16.0, 0.0, 16.0),
                                        child: Text(
                                          'Step 3',
                                          style: FlutterFlowTheme.of(context)
                                              .labelMedium
                                              .override(
                                                fontFamily: 'Plus Jakarta Sans',
                                                color: Color(0xFF606A85),
                                                fontSize: 16.0,
                                              ),
                                        ),
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                          Padding(
                            padding: EdgeInsetsDirectional.fromSTEB(
                                0.0, 10.0, 0.0, 10.0),
                            child: Row(
                              mainAxisSize: MainAxisSize.max,
                              children: [
                                Text(
                                  'LET\'S FILL PAYMENT DETAILS',
                                  style: FlutterFlowTheme.of(context)
                                      .labelMedium
                                      .override(
                                        fontFamily: 'Plus Jakarta Sans',
                                        color: FlutterFlowTheme.of(context)
                                            .labelColor,
                                        fontSize: 12.0,
                                        fontWeight: FontWeight.w500,
                                      ),
                                ),
                              ],
                            ),
                          ),
                          Row(
                            mainAxisSize: MainAxisSize.max,
                            mainAxisAlignment: MainAxisAlignment.start,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Expanded(
                                child: Padding(
                                  padding: EdgeInsetsDirectional.fromSTEB(
                                      0.0, 0.0, 16.0, 0.0),
                                  child: FlutterFlowDropDown<String>(
                                    controller: _model.flatNoValueController ??=
                                        FormFieldController<String>(null),
                                    options: ['101', '102', '103', '104'],
                                    onChanged: (val) => setState(
                                        () => _model.flatNoValue = val),
                                    width: 300.0,
                                    height: 40.0,
                                    textStyle:
                                        FlutterFlowTheme.of(context).bodyMedium,
                                    hintText: 'Flat No',
                                    icon: Icon(
                                      Icons.keyboard_arrow_down_rounded,
                                      color: FlutterFlowTheme.of(context)
                                          .secondaryText,
                                      size: 24.0,
                                    ),
                                    fillColor: FlutterFlowTheme.of(context)
                                        .secondaryBackground,
                                    elevation: 0.0,
                                    borderColor: FlutterFlowTheme.of(context)
                                        .textFieldBorder,
                                    borderWidth: 0.0,
                                    borderRadius: 0.0,
                                    margin: EdgeInsetsDirectional.fromSTEB(
                                        16.0, 4.0, 16.0, 4.0),
                                    hidesUnderline: true,
                                    isSearchable: false,
                                    isMultiSelect: false,
                                  ),
                                ),
                              ),
                            ],
                          ),
                          Row(
                            mainAxisSize: MainAxisSize.max,
                            children: [
                              Expanded(
                                child: Padding(
                                  padding: EdgeInsetsDirectional.fromSTEB(
                                      0.0, 10.0, 5.0, 0.0),
                                  child: Container(
                                    width: 200.0,
                                    child: TextFormField(
                                      controller: _model.amtController,
                                      autofocus: true,
                                      obscureText: false,
                                      decoration: InputDecoration(
                                        isDense: true,
                                        labelText: 'Booking Amount',
                                        labelStyle: FlutterFlowTheme.of(context)
                                            .labelMedium
                                            .override(
                                              fontFamily: 'Plus Jakarta Sans',
                                              color: Color(0xFF606A85),
                                              fontSize: 14.0,
                                              fontWeight: FontWeight.w500,
                                            ),
                                        hintStyle: FlutterFlowTheme.of(context)
                                            .labelMedium
                                            .override(
                                              fontFamily: 'Plus Jakarta Sans',
                                              color: Color(0xFF606A85),
                                              fontSize: 14.0,
                                              fontWeight: FontWeight.w500,
                                            ),
                                        enabledBorder: OutlineInputBorder(
                                          borderSide: BorderSide(
                                            color: FlutterFlowTheme.of(context)
                                                .textFieldBorder,
                                            width: 2.0,
                                          ),
                                          borderRadius: const BorderRadius.only(
                                            topLeft: Radius.circular(4.0),
                                            topRight: Radius.circular(4.0),
                                          ),
                                        ),
                                        focusedBorder: OutlineInputBorder(
                                          borderSide: BorderSide(
                                            color: Color(0xFF6F61EF),
                                            width: 2.0,
                                          ),
                                          borderRadius: const BorderRadius.only(
                                            topLeft: Radius.circular(4.0),
                                            topRight: Radius.circular(4.0),
                                          ),
                                        ),
                                        errorBorder: OutlineInputBorder(
                                          borderSide: BorderSide(
                                            color: Color(0xFFFF5963),
                                            width: 2.0,
                                          ),
                                          borderRadius: const BorderRadius.only(
                                            topLeft: Radius.circular(4.0),
                                            topRight: Radius.circular(4.0),
                                          ),
                                        ),
                                        focusedErrorBorder: OutlineInputBorder(
                                          borderSide: BorderSide(
                                            color: Color(0xFFFF5963),
                                            width: 2.0,
                                          ),
                                          borderRadius: const BorderRadius.only(
                                            topLeft: Radius.circular(4.0),
                                            topRight: Radius.circular(4.0),
                                          ),
                                        ),
                                        filled: true,
                                        fillColor: Colors.white,
                                        contentPadding:
                                            EdgeInsetsDirectional.fromSTEB(
                                                20.0, 10.0, 20.0, 20.0),
                                      ),
                                      style: FlutterFlowTheme.of(context)
                                          .bodyMedium
                                          .override(
                                            fontFamily: 'Plus Jakarta Sans',
                                            color: Color(0xFF15161E),
                                            fontSize: 14.0,
                                            fontWeight: FontWeight.w500,
                                          ),
                                      maxLines: null,
                                      cursorColor: Color(0xFF6F61EF),
                                      validator: _model.amtControllerValidator
                                          .asValidator(context),
                                    ),
                                  ),
                                ),
                              ),
                              Expanded(
                                child: Padding(
                                  padding: EdgeInsetsDirectional.fromSTEB(
                                      5.0, 10.0, 0.0, 0.0),
                                  child: Container(
                                    width: 150.0,
                                    child: TextFormField(
                                      controller: _model.checkRefNoController,
                                      autofocus: true,
                                      obscureText: false,
                                      decoration: InputDecoration(
                                        isDense: true,
                                        labelText: 'Check/Ref No',
                                        labelStyle: FlutterFlowTheme.of(context)
                                            .labelMedium
                                            .override(
                                              fontFamily: 'Plus Jakarta Sans',
                                              color: Color(0xFF606A85),
                                              fontSize: 14.0,
                                              fontWeight: FontWeight.w500,
                                            ),
                                        hintStyle: FlutterFlowTheme.of(context)
                                            .labelMedium
                                            .override(
                                              fontFamily: 'Plus Jakarta Sans',
                                              color: Color(0xFF606A85),
                                              fontSize: 14.0,
                                              fontWeight: FontWeight.w500,
                                            ),
                                        enabledBorder: OutlineInputBorder(
                                          borderSide: BorderSide(
                                            color: FlutterFlowTheme.of(context)
                                                .textFieldBorder,
                                            width: 2.0,
                                          ),
                                          borderRadius: const BorderRadius.only(
                                            topLeft: Radius.circular(4.0),
                                            topRight: Radius.circular(4.0),
                                          ),
                                        ),
                                        focusedBorder: OutlineInputBorder(
                                          borderSide: BorderSide(
                                            color: Color(0xFF6F61EF),
                                            width: 2.0,
                                          ),
                                          borderRadius: const BorderRadius.only(
                                            topLeft: Radius.circular(4.0),
                                            topRight: Radius.circular(4.0),
                                          ),
                                        ),
                                        errorBorder: OutlineInputBorder(
                                          borderSide: BorderSide(
                                            color: Color(0xFFFF5963),
                                            width: 2.0,
                                          ),
                                          borderRadius: const BorderRadius.only(
                                            topLeft: Radius.circular(4.0),
                                            topRight: Radius.circular(4.0),
                                          ),
                                        ),
                                        focusedErrorBorder: OutlineInputBorder(
                                          borderSide: BorderSide(
                                            color: Color(0xFFFF5963),
                                            width: 2.0,
                                          ),
                                          borderRadius: const BorderRadius.only(
                                            topLeft: Radius.circular(4.0),
                                            topRight: Radius.circular(4.0),
                                          ),
                                        ),
                                        filled: true,
                                        fillColor: Colors.white,
                                        contentPadding:
                                            EdgeInsetsDirectional.fromSTEB(
                                                20.0, 10.0, 20.0, 20.0),
                                      ),
                                      style: FlutterFlowTheme.of(context)
                                          .bodyMedium
                                          .override(
                                            fontFamily: 'Plus Jakarta Sans',
                                            color: Color(0xFF15161E),
                                            fontSize: 14.0,
                                            fontWeight: FontWeight.w500,
                                          ),
                                      maxLines: null,
                                      cursorColor: Color(0xFF6F61EF),
                                      validator: _model
                                          .checkRefNoControllerValidator
                                          .asValidator(context),
                                    ),
                                  ),
                                ),
                              ),
                            ],
                          ),
                          Row(
                            mainAxisSize: MainAxisSize.max,
                            children: [
                              Padding(
                                padding: EdgeInsetsDirectional.fromSTEB(
                                    5.0, 0.0, 0.0, 0.0),
                                child: InkWell(
                                  splashColor: Colors.transparent,
                                  focusColor: Colors.transparent,
                                  hoverColor: Colors.transparent,
                                  highlightColor: Colors.transparent,
                                  onTap: () async {
                                    final _datePickedDate =
                                        await showDatePicker(
                                      context: context,
                                      initialDate: getCurrentTimestamp,
                                      firstDate: DateTime(1900),
                                      lastDate: getCurrentTimestamp,
                                    );

                                    if (_datePickedDate != null) {
                                      setState(() {
                                        _model.datePicked = DateTime(
                                          _datePickedDate.year,
                                          _datePickedDate.month,
                                          _datePickedDate.day,
                                        );
                                      });
                                    }
                                  },
                                  child: Icon(
                                    Icons.edit_calendar_outlined,
                                    color:
                                        FlutterFlowTheme.of(context).secondary,
                                    size: 24.0,
                                  ),
                                ),
                              ),
                              Expanded(
                                child: Padding(
                                  padding: EdgeInsetsDirectional.fromSTEB(
                                      0.0, 10.0, 5.0, 0.0),
                                  child: Container(
                                    width: 150.0,
                                    child: TextFormField(
                                      controller: _model.dateController,
                                      autofocus: true,
                                      textCapitalization:
                                          TextCapitalization.none,
                                      obscureText: false,
                                      decoration: InputDecoration(
                                        isDense: true,
                                        labelText: 'Date',
                                        labelStyle: FlutterFlowTheme.of(context)
                                            .labelMedium
                                            .override(
                                              fontFamily: 'Plus Jakarta Sans',
                                              color: Color(0xFF606A85),
                                              fontSize: 14.0,
                                              fontWeight: FontWeight.w500,
                                            ),
                                        hintStyle: FlutterFlowTheme.of(context)
                                            .labelMedium
                                            .override(
                                              fontFamily: 'Plus Jakarta Sans',
                                              color: Color(0xFF606A85),
                                              fontSize: 14.0,
                                              fontWeight: FontWeight.w500,
                                            ),
                                        enabledBorder: OutlineInputBorder(
                                          borderSide: BorderSide(
                                            color: FlutterFlowTheme.of(context)
                                                .textFieldBorder,
                                            width: 2.0,
                                          ),
                                          borderRadius: const BorderRadius.only(
                                            topLeft: Radius.circular(4.0),
                                            topRight: Radius.circular(4.0),
                                          ),
                                        ),
                                        focusedBorder: OutlineInputBorder(
                                          borderSide: BorderSide(
                                            color: Color(0xFF6F61EF),
                                            width: 2.0,
                                          ),
                                          borderRadius: const BorderRadius.only(
                                            topLeft: Radius.circular(4.0),
                                            topRight: Radius.circular(4.0),
                                          ),
                                        ),
                                        errorBorder: OutlineInputBorder(
                                          borderSide: BorderSide(
                                            color: Color(0xFFFF5963),
                                            width: 2.0,
                                          ),
                                          borderRadius: const BorderRadius.only(
                                            topLeft: Radius.circular(4.0),
                                            topRight: Radius.circular(4.0),
                                          ),
                                        ),
                                        focusedErrorBorder: OutlineInputBorder(
                                          borderSide: BorderSide(
                                            color: Color(0xFFFF5963),
                                            width: 2.0,
                                          ),
                                          borderRadius: const BorderRadius.only(
                                            topLeft: Radius.circular(4.0),
                                            topRight: Radius.circular(4.0),
                                          ),
                                        ),
                                        filled: true,
                                        fillColor: Colors.white,
                                        contentPadding:
                                            EdgeInsetsDirectional.fromSTEB(
                                                20.0, 10.0, 20.0, 20.0),
                                      ),
                                      style: FlutterFlowTheme.of(context)
                                          .bodyMedium
                                          .override(
                                            fontFamily: 'Plus Jakarta Sans',
                                            color: Color(0xFF15161E),
                                            fontSize: 14.0,
                                            fontWeight: FontWeight.w500,
                                          ),
                                      maxLines: null,
                                      keyboardType: TextInputType.datetime,
                                      cursorColor: Color(0xFF6F61EF),
                                      validator: _model.dateControllerValidator
                                          .asValidator(context),
                                    ),
                                  ),
                                ),
                              ),
                              Expanded(
                                child: Padding(
                                  padding: EdgeInsetsDirectional.fromSTEB(
                                      5.0, 10.0, 0.0, 0.0),
                                  child: FlutterFlowDropDown<String>(
                                    controller: _model.modeValueController ??=
                                        FormFieldController<String>(null),
                                    options: ['Check', 'UPI', 'Neft', 'Cash'],
                                    onChanged: (val) =>
                                        setState(() => _model.modeValue = val),
                                    height: 40.0,
                                    textStyle:
                                        FlutterFlowTheme.of(context).bodyMedium,
                                    hintText: 'Mode',
                                    icon: Icon(
                                      Icons.keyboard_arrow_down_rounded,
                                      color: FlutterFlowTheme.of(context)
                                          .secondaryText,
                                      size: 24.0,
                                    ),
                                    fillColor: FlutterFlowTheme.of(context)
                                        .secondaryBackground,
                                    elevation: 0.0,
                                    borderColor: FlutterFlowTheme.of(context)
                                        .textFieldBorder,
                                    borderWidth: 0.0,
                                    borderRadius: 0.0,
                                    margin: EdgeInsetsDirectional.fromSTEB(
                                        16.0, 4.0, 16.0, 4.0),
                                    hidesUnderline: true,
                                    isSearchable: false,
                                    isMultiSelect: false,
                                  ),
                                ),
                              ),
                            ],
                          ),
                          Row(
                            mainAxisSize: MainAxisSize.max,
                            mainAxisAlignment: MainAxisAlignment.start,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Expanded(
                                child: Padding(
                                  padding: EdgeInsetsDirectional.fromSTEB(
                                      0.0, 10.0, 0.0, 0.0),
                                  child: Container(
                                    width: 200.0,
                                    child: TextFormField(
                                      controller: _model.bankController,
                                      autofocus: true,
                                      obscureText: false,
                                      decoration: InputDecoration(
                                        isDense: true,
                                        labelText: 'Bank',
                                        labelStyle: FlutterFlowTheme.of(context)
                                            .labelMedium
                                            .override(
                                              fontFamily: 'Plus Jakarta Sans',
                                              color: Color(0xFF606A85),
                                              fontSize: 14.0,
                                              fontWeight: FontWeight.w500,
                                            ),
                                        hintStyle: FlutterFlowTheme.of(context)
                                            .labelMedium
                                            .override(
                                              fontFamily: 'Plus Jakarta Sans',
                                              color: Color(0xFF606A85),
                                              fontSize: 14.0,
                                              fontWeight: FontWeight.w500,
                                            ),
                                        enabledBorder: OutlineInputBorder(
                                          borderSide: BorderSide(
                                            color: FlutterFlowTheme.of(context)
                                                .textFieldBorder,
                                            width: 2.0,
                                          ),
                                          borderRadius: const BorderRadius.only(
                                            topLeft: Radius.circular(4.0),
                                            topRight: Radius.circular(4.0),
                                          ),
                                        ),
                                        focusedBorder: OutlineInputBorder(
                                          borderSide: BorderSide(
                                            color: Color(0xFF6F61EF),
                                            width: 2.0,
                                          ),
                                          borderRadius: const BorderRadius.only(
                                            topLeft: Radius.circular(4.0),
                                            topRight: Radius.circular(4.0),
                                          ),
                                        ),
                                        errorBorder: OutlineInputBorder(
                                          borderSide: BorderSide(
                                            color: Color(0xFFFF5963),
                                            width: 2.0,
                                          ),
                                          borderRadius: const BorderRadius.only(
                                            topLeft: Radius.circular(4.0),
                                            topRight: Radius.circular(4.0),
                                          ),
                                        ),
                                        focusedErrorBorder: OutlineInputBorder(
                                          borderSide: BorderSide(
                                            color: Color(0xFFFF5963),
                                            width: 2.0,
                                          ),
                                          borderRadius: const BorderRadius.only(
                                            topLeft: Radius.circular(4.0),
                                            topRight: Radius.circular(4.0),
                                          ),
                                        ),
                                        filled: true,
                                        fillColor: Colors.white,
                                        contentPadding:
                                            EdgeInsetsDirectional.fromSTEB(
                                                20.0, 10.0, 20.0, 20.0),
                                      ),
                                      style: FlutterFlowTheme.of(context)
                                          .bodyMedium
                                          .override(
                                            fontFamily: 'Plus Jakarta Sans',
                                            color: Color(0xFF15161E),
                                            fontSize: 14.0,
                                            fontWeight: FontWeight.w500,
                                          ),
                                      maxLines: null,
                                      cursorColor: Color(0xFF6F61EF),
                                      validator: _model.bankControllerValidator
                                          .asValidator(context),
                                    ),
                                  ),
                                ),
                              ),
                            ],
                          ),
                          Row(
                            mainAxisSize: MainAxisSize.max,
                            mainAxisAlignment: MainAxisAlignment.start,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Expanded(
                                child: Padding(
                                  padding: EdgeInsetsDirectional.fromSTEB(
                                      0.0, 10.0, 0.0, 0.0),
                                  child: Container(
                                    width: 200.0,
                                    child: TextFormField(
                                      controller: _model.branchController2,
                                      autofocus: true,
                                      obscureText: false,
                                      decoration: InputDecoration(
                                        isDense: true,
                                        labelText: 'Branch',
                                        labelStyle: FlutterFlowTheme.of(context)
                                            .labelMedium
                                            .override(
                                              fontFamily: 'Plus Jakarta Sans',
                                              color: Color(0xFF606A85),
                                              fontSize: 14.0,
                                              fontWeight: FontWeight.w500,
                                            ),
                                        hintStyle: FlutterFlowTheme.of(context)
                                            .labelMedium
                                            .override(
                                              fontFamily: 'Plus Jakarta Sans',
                                              color: Color(0xFF606A85),
                                              fontSize: 14.0,
                                              fontWeight: FontWeight.w500,
                                            ),
                                        enabledBorder: OutlineInputBorder(
                                          borderSide: BorderSide(
                                            color: FlutterFlowTheme.of(context)
                                                .textFieldBorder,
                                            width: 2.0,
                                          ),
                                          borderRadius: const BorderRadius.only(
                                            topLeft: Radius.circular(4.0),
                                            topRight: Radius.circular(4.0),
                                          ),
                                        ),
                                        focusedBorder: OutlineInputBorder(
                                          borderSide: BorderSide(
                                            color: Color(0xFF6F61EF),
                                            width: 2.0,
                                          ),
                                          borderRadius: const BorderRadius.only(
                                            topLeft: Radius.circular(4.0),
                                            topRight: Radius.circular(4.0),
                                          ),
                                        ),
                                        errorBorder: OutlineInputBorder(
                                          borderSide: BorderSide(
                                            color: Color(0xFFFF5963),
                                            width: 2.0,
                                          ),
                                          borderRadius: const BorderRadius.only(
                                            topLeft: Radius.circular(4.0),
                                            topRight: Radius.circular(4.0),
                                          ),
                                        ),
                                        focusedErrorBorder: OutlineInputBorder(
                                          borderSide: BorderSide(
                                            color: Color(0xFFFF5963),
                                            width: 2.0,
                                          ),
                                          borderRadius: const BorderRadius.only(
                                            topLeft: Radius.circular(4.0),
                                            topRight: Radius.circular(4.0),
                                          ),
                                        ),
                                        filled: true,
                                        fillColor: Colors.white,
                                        contentPadding:
                                            EdgeInsetsDirectional.fromSTEB(
                                                20.0, 10.0, 20.0, 20.0),
                                      ),
                                      style: FlutterFlowTheme.of(context)
                                          .bodyMedium
                                          .override(
                                            fontFamily: 'Plus Jakarta Sans',
                                            color: Color(0xFF15161E),
                                            fontSize: 14.0,
                                            fontWeight: FontWeight.w500,
                                          ),
                                      maxLines: null,
                                      cursorColor: Color(0xFF6F61EF),
                                      validator: _model
                                          .branchController2Validator
                                          .asValidator(context),
                                    ),
                                  ),
                                ),
                              ),
                            ],
                          ),
                          Row(
                            mainAxisSize: MainAxisSize.max,
                            mainAxisAlignment: MainAxisAlignment.start,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Expanded(
                                child: Padding(
                                  padding: EdgeInsetsDirectional.fromSTEB(
                                      0.0, 10.0, 0.0, 0.0),
                                  child: Container(
                                    width: 200.0,
                                    child: TextFormField(
                                      controller: _model.branchController3,
                                      autofocus: true,
                                      obscureText: false,
                                      decoration: InputDecoration(
                                        isDense: true,
                                        labelText: 'Payment Scheme',
                                        labelStyle: FlutterFlowTheme.of(context)
                                            .labelMedium
                                            .override(
                                              fontFamily: 'Plus Jakarta Sans',
                                              color: Color(0xFF606A85),
                                              fontSize: 14.0,
                                              fontWeight: FontWeight.w500,
                                            ),
                                        hintStyle: FlutterFlowTheme.of(context)
                                            .labelMedium
                                            .override(
                                              fontFamily: 'Plus Jakarta Sans',
                                              color: Color(0xFF606A85),
                                              fontSize: 14.0,
                                              fontWeight: FontWeight.w500,
                                            ),
                                        enabledBorder: OutlineInputBorder(
                                          borderSide: BorderSide(
                                            color: FlutterFlowTheme.of(context)
                                                .textFieldBorder,
                                            width: 2.0,
                                          ),
                                          borderRadius: const BorderRadius.only(
                                            topLeft: Radius.circular(4.0),
                                            topRight: Radius.circular(4.0),
                                          ),
                                        ),
                                        focusedBorder: OutlineInputBorder(
                                          borderSide: BorderSide(
                                            color: Color(0xFF6F61EF),
                                            width: 2.0,
                                          ),
                                          borderRadius: const BorderRadius.only(
                                            topLeft: Radius.circular(4.0),
                                            topRight: Radius.circular(4.0),
                                          ),
                                        ),
                                        errorBorder: OutlineInputBorder(
                                          borderSide: BorderSide(
                                            color: Color(0xFFFF5963),
                                            width: 2.0,
                                          ),
                                          borderRadius: const BorderRadius.only(
                                            topLeft: Radius.circular(4.0),
                                            topRight: Radius.circular(4.0),
                                          ),
                                        ),
                                        focusedErrorBorder: OutlineInputBorder(
                                          borderSide: BorderSide(
                                            color: Color(0xFFFF5963),
                                            width: 2.0,
                                          ),
                                          borderRadius: const BorderRadius.only(
                                            topLeft: Radius.circular(4.0),
                                            topRight: Radius.circular(4.0),
                                          ),
                                        ),
                                        filled: true,
                                        fillColor: Colors.white,
                                        contentPadding:
                                            EdgeInsetsDirectional.fromSTEB(
                                                20.0, 10.0, 20.0, 20.0),
                                      ),
                                      style: FlutterFlowTheme.of(context)
                                          .bodyMedium
                                          .override(
                                            fontFamily: 'Plus Jakarta Sans',
                                            color: Color(0xFF15161E),
                                            fontSize: 14.0,
                                            fontWeight: FontWeight.w500,
                                          ),
                                      maxLines: null,
                                      cursorColor: Color(0xFF6F61EF),
                                      validator: _model
                                          .branchController3Validator
                                          .asValidator(context),
                                    ),
                                  ),
                                ),
                              ),
                            ],
                          ),
                          Padding(
                            padding: EdgeInsetsDirectional.fromSTEB(
                                0.0, 0.0, 0.0, 16.0),
                            child: Row(
                              mainAxisSize: MainAxisSize.max,
                              children: [
                                Expanded(
                                  child: Padding(
                                    padding: EdgeInsetsDirectional.fromSTEB(
                                        0.0, 10.0, 0.0, 1.0),
                                    child: Container(
                                      width: 180.0,
                                      child: TextFormField(
                                        controller:
                                            _model.paymentTermsController,
                                        autofocus: true,
                                        obscureText: false,
                                        decoration: InputDecoration(
                                          isDense: true,
                                          labelText: 'Payment Terms',
                                          labelStyle:
                                              FlutterFlowTheme.of(context)
                                                  .labelMedium
                                                  .override(
                                                    fontFamily:
                                                        'Plus Jakarta Sans',
                                                    color: Color(0xFF606A85),
                                                    fontSize: 14.0,
                                                  ),
                                          hintStyle:
                                              FlutterFlowTheme.of(context)
                                                  .labelMedium,
                                          enabledBorder: OutlineInputBorder(
                                            borderSide: BorderSide(
                                              color:
                                                  FlutterFlowTheme.of(context)
                                                      .textFieldBorder,
                                              width: 2.0,
                                            ),
                                            borderRadius:
                                                const BorderRadius.only(
                                              topLeft: Radius.circular(4.0),
                                              topRight: Radius.circular(4.0),
                                            ),
                                          ),
                                          focusedBorder: OutlineInputBorder(
                                            borderSide: BorderSide(
                                              color: Color(0xFF6F61EF),
                                              width: 2.0,
                                            ),
                                            borderRadius:
                                                const BorderRadius.only(
                                              topLeft: Radius.circular(4.0),
                                              topRight: Radius.circular(4.0),
                                            ),
                                          ),
                                          errorBorder: OutlineInputBorder(
                                            borderSide: BorderSide(
                                              color:
                                                  FlutterFlowTheme.of(context)
                                                      .error,
                                              width: 2.0,
                                            ),
                                            borderRadius:
                                                const BorderRadius.only(
                                              topLeft: Radius.circular(4.0),
                                              topRight: Radius.circular(4.0),
                                            ),
                                          ),
                                          focusedErrorBorder:
                                              OutlineInputBorder(
                                            borderSide: BorderSide(
                                              color:
                                                  FlutterFlowTheme.of(context)
                                                      .error,
                                              width: 2.0,
                                            ),
                                            borderRadius:
                                                const BorderRadius.only(
                                              topLeft: Radius.circular(4.0),
                                              topRight: Radius.circular(4.0),
                                            ),
                                          ),
                                          filled: true,
                                          fillColor: Colors.white,
                                          contentPadding:
                                              EdgeInsetsDirectional.fromSTEB(
                                                  20.0, 10.0, 20.0, 20.0),
                                        ),
                                        style: FlutterFlowTheme.of(context)
                                            .bodyMedium
                                            .override(
                                              fontFamily: 'Poppins',
                                              color: Colors.black,
                                            ),
                                        maxLines: null,
                                        validator: _model
                                            .paymentTermsControllerValidator
                                            .asValidator(context),
                                      ),
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                          Padding(
                            padding: EdgeInsetsDirectional.fromSTEB(
                                0.0, 16.0, 0.0, 24.0),
                            child: Row(
                              mainAxisSize: MainAxisSize.max,
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Align(
                                  alignment: AlignmentDirectional(0.0, 0.05),
                                  child: FFButtonWidget(
                                    onPressed: () async {
                                      setState(() {
                                        _model.currentTab =
                                            _model.currentTab + -1;
                                      });
                                    },
                                    text: '',
                                    icon: Icon(
                                      Icons.chevron_left,
                                      size: 30.0,
                                    ),
                                    options: FFButtonOptions(
                                      width: 60.0,
                                      height: 60.0,
                                      padding: EdgeInsetsDirectional.fromSTEB(
                                          8.0, 0.0, 0.0, 0.0),
                                      iconPadding:
                                          EdgeInsetsDirectional.fromSTEB(
                                              0.0, 0.0, 0.0, 0.0),
                                      color: FlutterFlowTheme.of(context)
                                          .secondaryBackground,
                                      textStyle: FlutterFlowTheme.of(context)
                                          .bodyMedium
                                          .override(
                                            fontFamily: 'Plus Jakarta Sans',
                                            color: FlutterFlowTheme.of(context)
                                                .primaryText,
                                            fontSize: 14.0,
                                            fontWeight: FontWeight.w500,
                                          ),
                                      elevation: 0.0,
                                      borderSide: BorderSide(
                                        color: Colors.black,
                                        width: 2.0,
                                      ),
                                      borderRadius: BorderRadius.circular(30.0),
                                      hoverBorderSide: BorderSide(
                                        color: FlutterFlowTheme.of(context)
                                            .primaryText,
                                        width: 2.0,
                                      ),
                                      hoverTextColor: Color(0xFF15161E),
                                      hoverElevation: 0.0,
                                    ),
                                  ),
                                ),
                                Align(
                                  alignment: AlignmentDirectional(0.0, 0.05),
                                  child: FFButtonWidget(
                                    onPressed: () async {
                                      setState(() {
                                        _model.currentTab =
                                            _model.currentTab + 1;
                                      });
                                    },
                                    text: '',
                                    icon: Icon(
                                      Icons.chevron_right_outlined,
                                      size: 30.0,
                                    ),
                                    options: FFButtonOptions(
                                      width: 60.0,
                                      height: 60.0,
                                      padding: EdgeInsetsDirectional.fromSTEB(
                                          10.0, 0.0, 0.0, 0.0),
                                      iconPadding:
                                          EdgeInsetsDirectional.fromSTEB(
                                              0.0, 0.0, 0.0, 0.0),
                                      color: FlutterFlowTheme.of(context)
                                          .primaryText,
                                      textStyle: FlutterFlowTheme.of(context)
                                          .titleSmall
                                          .override(
                                            fontFamily: 'Plus Jakarta Sans',
                                            color: Colors.white,
                                            fontSize: 16.0,
                                            fontWeight: FontWeight.w300,
                                          ),
                                      borderSide: BorderSide(
                                        width: 2.0,
                                      ),
                                      borderRadius: BorderRadius.circular(30.0),
                                      hoverColor: FlutterFlowTheme.of(context)
                                          .secondaryText,
                                      hoverBorderSide: BorderSide(
                                        color: Color(0xFF6F61EF),
                                        width: 2.0,
                                      ),
                                      hoverTextColor: Color(0xFF15161E),
                                      hoverElevation: 0.0,
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                          Padding(
                            padding: EdgeInsetsDirectional.fromSTEB(
                                0.0, 0.0, 0.0, 16.0),
                            child: Row(
                              mainAxisSize: MainAxisSize.max,
                              children: [
                                Expanded(
                                  child: Align(
                                    alignment: AlignmentDirectional(0.0, 0.0),
                                    child: Text(
                                      'You are almost there!',
                                      style: FlutterFlowTheme.of(context)
                                          .bodyMedium
                                          .override(
                                            fontFamily: 'Poppins',
                                            color: FlutterFlowTheme.of(context)
                                                .labelColor,
                                            fontSize: 12.0,
                                          ),
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                  ).animateOnPageLoad(
                      animationsMap['containerOnPageLoadAnimation3']!),
                if (_model.currentTab == 3)
                  Container(
                    width: double.infinity,
                    height: MediaQuery.sizeOf(context).height * 1.0,
                    constraints: BoxConstraints(
                      maxWidth: 670.0,
                    ),
                    decoration: BoxDecoration(
                      color: Colors.white,
                      boxShadow: [
                        BoxShadow(
                          blurRadius: 12.0,
                          color: Color(0x1E000000),
                          offset: Offset(0.0, 5.0),
                        )
                      ],
                    ),
                    child: Padding(
                      padding:
                          EdgeInsetsDirectional.fromSTEB(24.0, 0.0, 24.0, 0.0),
                      child: Column(
                        mainAxisSize: MainAxisSize.max,
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Padding(
                            padding: EdgeInsetsDirectional.fromSTEB(
                                0.0, 10.0, 0.0, 0.0),
                            child: InkWell(
                              splashColor: Colors.transparent,
                              focusColor: Colors.transparent,
                              hoverColor: Colors.transparent,
                              highlightColor: Colors.transparent,
                              onTap: () async {
                                setState(() {
                                  _model.currentTab = 1;
                                });
                                setState(() {});
                              },
                              child: Row(
                                mainAxisSize: MainAxisSize.max,
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Expanded(
                                    child: Align(
                                      alignment: AlignmentDirectional(0.0, 0.0),
                                      child: Padding(
                                        padding: EdgeInsetsDirectional.fromSTEB(
                                            8.0, 16.0, 0.0, 16.0),
                                        child: Text(
                                          'Step 4',
                                          style: FlutterFlowTheme.of(context)
                                              .labelMedium
                                              .override(
                                                fontFamily: 'Plus Jakarta Sans',
                                                color: Color(0xFF606A85),
                                                fontSize: 16.0,
                                              ),
                                        ),
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                          Padding(
                            padding: EdgeInsetsDirectional.fromSTEB(
                                0.0, 10.0, 0.0, 10.0),
                            child: Row(
                              mainAxisSize: MainAxisSize.max,
                              children: [
                                Text(
                                  'FINALLY, FILL CHANEL PARTNER DETAILS',
                                  style: FlutterFlowTheme.of(context)
                                      .labelMedium
                                      .override(
                                        fontFamily: 'Plus Jakarta Sans',
                                        color: FlutterFlowTheme.of(context)
                                            .labelColor,
                                        fontSize: 12.0,
                                        fontWeight: FontWeight.w500,
                                      ),
                                ),
                              ],
                            ),
                          ),
                          Padding(
                            padding: EdgeInsetsDirectional.fromSTEB(
                                0.0, 0.0, 0.0, 10.0),
                            child: Row(
                              mainAxisSize: MainAxisSize.max,
                              mainAxisAlignment: MainAxisAlignment.start,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Expanded(
                                  child: Container(
                                    width: 200.0,
                                    child: TextFormField(
                                      controller: _model.companyNameController,
                                      autofocus: true,
                                      obscureText: false,
                                      decoration: InputDecoration(
                                        isDense: true,
                                        labelText: 'Company Name',
                                        labelStyle: FlutterFlowTheme.of(context)
                                            .labelMedium
                                            .override(
                                              fontFamily: 'Plus Jakarta Sans',
                                              color: Color(0xFF606A85),
                                              fontSize: 14.0,
                                              fontWeight: FontWeight.w500,
                                            ),
                                        hintStyle: FlutterFlowTheme.of(context)
                                            .labelMedium
                                            .override(
                                              fontFamily: 'Plus Jakarta Sans',
                                              color: Color(0xFF606A85),
                                              fontSize: 14.0,
                                              fontWeight: FontWeight.w500,
                                            ),
                                        enabledBorder: OutlineInputBorder(
                                          borderSide: BorderSide(
                                            color: FlutterFlowTheme.of(context)
                                                .textFieldBorder,
                                            width: 2.0,
                                          ),
                                          borderRadius: const BorderRadius.only(
                                            topLeft: Radius.circular(4.0),
                                            topRight: Radius.circular(4.0),
                                          ),
                                        ),
                                        focusedBorder: OutlineInputBorder(
                                          borderSide: BorderSide(
                                            color: Color(0xFF6F61EF),
                                            width: 2.0,
                                          ),
                                          borderRadius: const BorderRadius.only(
                                            topLeft: Radius.circular(4.0),
                                            topRight: Radius.circular(4.0),
                                          ),
                                        ),
                                        errorBorder: OutlineInputBorder(
                                          borderSide: BorderSide(
                                            color: Color(0xFFFF5963),
                                            width: 2.0,
                                          ),
                                          borderRadius: const BorderRadius.only(
                                            topLeft: Radius.circular(4.0),
                                            topRight: Radius.circular(4.0),
                                          ),
                                        ),
                                        focusedErrorBorder: OutlineInputBorder(
                                          borderSide: BorderSide(
                                            color: Color(0xFFFF5963),
                                            width: 2.0,
                                          ),
                                          borderRadius: const BorderRadius.only(
                                            topLeft: Radius.circular(4.0),
                                            topRight: Radius.circular(4.0),
                                          ),
                                        ),
                                        filled: true,
                                        fillColor: Colors.white,
                                        contentPadding:
                                            EdgeInsetsDirectional.fromSTEB(
                                                20.0, 10.0, 20.0, 20.0),
                                      ),
                                      style: FlutterFlowTheme.of(context)
                                          .bodyMedium
                                          .override(
                                            fontFamily: 'Plus Jakarta Sans',
                                            color: Color(0xFF15161E),
                                            fontSize: 14.0,
                                            fontWeight: FontWeight.w500,
                                          ),
                                      maxLines: null,
                                      cursorColor: Color(0xFF6F61EF),
                                      validator: _model
                                          .companyNameControllerValidator
                                          .asValidator(context),
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                          Padding(
                            padding: EdgeInsetsDirectional.fromSTEB(
                                0.0, 0.0, 0.0, 10.0),
                            child: Row(
                              mainAxisSize: MainAxisSize.max,
                              children: [
                                Expanded(
                                  child: Padding(
                                    padding: EdgeInsetsDirectional.fromSTEB(
                                        0.0, 0.0, 5.0, 0.0),
                                    child: Container(
                                      width: 150.0,
                                      child: TextFormField(
                                        controller: _model.nameController,
                                        autofocus: true,
                                        obscureText: false,
                                        decoration: InputDecoration(
                                          isDense: true,
                                          labelText: 'Name',
                                          labelStyle:
                                              FlutterFlowTheme.of(context)
                                                  .labelMedium
                                                  .override(
                                                    fontFamily:
                                                        'Plus Jakarta Sans',
                                                    color: Color(0xFF606A85),
                                                    fontSize: 14.0,
                                                    fontWeight: FontWeight.w500,
                                                  ),
                                          hintStyle:
                                              FlutterFlowTheme.of(context)
                                                  .bodyMedium
                                                  .override(
                                                    fontFamily:
                                                        'Plus Jakarta Sans',
                                                    color: Color(0xFF15161E),
                                                    fontSize: 14.0,
                                                    fontWeight: FontWeight.w500,
                                                  ),
                                          enabledBorder: OutlineInputBorder(
                                            borderSide: BorderSide(
                                              color:
                                                  FlutterFlowTheme.of(context)
                                                      .textFieldBorder,
                                              width: 2.0,
                                            ),
                                            borderRadius:
                                                const BorderRadius.only(
                                              topLeft: Radius.circular(4.0),
                                              topRight: Radius.circular(4.0),
                                            ),
                                          ),
                                          focusedBorder: OutlineInputBorder(
                                            borderSide: BorderSide(
                                              color: Color(0xFF6F61EF),
                                              width: 2.0,
                                            ),
                                            borderRadius:
                                                const BorderRadius.only(
                                              topLeft: Radius.circular(4.0),
                                              topRight: Radius.circular(4.0),
                                            ),
                                          ),
                                          errorBorder: OutlineInputBorder(
                                            borderSide: BorderSide(
                                              color: Color(0xFFFF5963),
                                              width: 2.0,
                                            ),
                                            borderRadius:
                                                const BorderRadius.only(
                                              topLeft: Radius.circular(4.0),
                                              topRight: Radius.circular(4.0),
                                            ),
                                          ),
                                          focusedErrorBorder:
                                              OutlineInputBorder(
                                            borderSide: BorderSide(
                                              color: Color(0xFFFF5963),
                                              width: 2.0,
                                            ),
                                            borderRadius:
                                                const BorderRadius.only(
                                              topLeft: Radius.circular(4.0),
                                              topRight: Radius.circular(4.0),
                                            ),
                                          ),
                                          filled: true,
                                          fillColor: Colors.white,
                                          contentPadding:
                                              EdgeInsetsDirectional.fromSTEB(
                                                  20.0, 12.0, 20.0, 20.0),
                                        ),
                                        style: FlutterFlowTheme.of(context)
                                            .bodyMedium
                                            .override(
                                              fontFamily: 'Plus Jakarta Sans',
                                              color: Color(0xFF15161E),
                                              fontSize: 14.0,
                                              fontWeight: FontWeight.w500,
                                            ),
                                        maxLines: null,
                                        cursorColor: Color(0xFF6F61EF),
                                        validator: _model
                                            .nameControllerValidator
                                            .asValidator(context),
                                      ),
                                    ),
                                  ),
                                ),
                                Padding(
                                  padding: EdgeInsetsDirectional.fromSTEB(
                                      5.0, 0.0, 0.0, 0.0),
                                  child: Container(
                                    width: 180.0,
                                    child: TextFormField(
                                      controller: _model.phoneController,
                                      autofocus: true,
                                      obscureText: false,
                                      decoration: InputDecoration(
                                        isDense: true,
                                        labelText: 'Contact No',
                                        labelStyle: FlutterFlowTheme.of(context)
                                            .labelMedium
                                            .override(
                                              fontFamily: 'Plus Jakarta Sans',
                                              color: Color(0xFF606A85),
                                              fontSize: 14.0,
                                              fontWeight: FontWeight.w500,
                                            ),
                                        hintStyle: FlutterFlowTheme.of(context)
                                            .labelMedium
                                            .override(
                                              fontFamily: 'Plus Jakarta Sans',
                                              color: Color(0xFF606A85),
                                              fontSize: 14.0,
                                              fontWeight: FontWeight.w500,
                                            ),
                                        enabledBorder: OutlineInputBorder(
                                          borderSide: BorderSide(
                                            color: FlutterFlowTheme.of(context)
                                                .textFieldBorder,
                                            width: 2.0,
                                          ),
                                          borderRadius: const BorderRadius.only(
                                            topLeft: Radius.circular(4.0),
                                            topRight: Radius.circular(4.0),
                                          ),
                                        ),
                                        focusedBorder: OutlineInputBorder(
                                          borderSide: BorderSide(
                                            color: Color(0xFF6F61EF),
                                            width: 2.0,
                                          ),
                                          borderRadius: const BorderRadius.only(
                                            topLeft: Radius.circular(4.0),
                                            topRight: Radius.circular(4.0),
                                          ),
                                        ),
                                        errorBorder: OutlineInputBorder(
                                          borderSide: BorderSide(
                                            color: Color(0xFFFF5963),
                                            width: 2.0,
                                          ),
                                          borderRadius: const BorderRadius.only(
                                            topLeft: Radius.circular(4.0),
                                            topRight: Radius.circular(4.0),
                                          ),
                                        ),
                                        focusedErrorBorder: OutlineInputBorder(
                                          borderSide: BorderSide(
                                            color: Color(0xFFFF5963),
                                            width: 2.0,
                                          ),
                                          borderRadius: const BorderRadius.only(
                                            topLeft: Radius.circular(4.0),
                                            topRight: Radius.circular(4.0),
                                          ),
                                        ),
                                        filled: true,
                                        fillColor: Colors.white,
                                        contentPadding:
                                            EdgeInsetsDirectional.fromSTEB(
                                                20.0, 12.0, 20.0, 20.0),
                                      ),
                                      style: FlutterFlowTheme.of(context)
                                          .bodyMedium
                                          .override(
                                            fontFamily: 'Plus Jakarta Sans',
                                            color: Color(0xFF15161E),
                                            fontSize: 14.0,
                                            fontWeight: FontWeight.w500,
                                          ),
                                      maxLines: null,
                                      cursorColor: Color(0xFF6F61EF),
                                      validator: _model.phoneControllerValidator
                                          .asValidator(context),
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                          Padding(
                            padding: EdgeInsetsDirectional.fromSTEB(
                                0.0, 0.0, 0.0, 16.0),
                            child: Row(
                              mainAxisSize: MainAxisSize.max,
                              mainAxisAlignment: MainAxisAlignment.start,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Expanded(
                                  child: Container(
                                    width: 200.0,
                                    child: TextFormField(
                                      controller: _model.addressController2,
                                      autofocus: true,
                                      obscureText: false,
                                      decoration: InputDecoration(
                                        isDense: true,
                                        labelText: 'Address',
                                        labelStyle: FlutterFlowTheme.of(context)
                                            .labelMedium
                                            .override(
                                              fontFamily: 'Plus Jakarta Sans',
                                              color: Color(0xFF606A85),
                                              fontSize: 14.0,
                                              fontWeight: FontWeight.w500,
                                            ),
                                        hintStyle: FlutterFlowTheme.of(context)
                                            .labelMedium
                                            .override(
                                              fontFamily: 'Plus Jakarta Sans',
                                              color: Color(0xFF606A85),
                                              fontSize: 14.0,
                                              fontWeight: FontWeight.w500,
                                            ),
                                        enabledBorder: OutlineInputBorder(
                                          borderSide: BorderSide(
                                            color: FlutterFlowTheme.of(context)
                                                .textFieldBorder,
                                            width: 2.0,
                                          ),
                                          borderRadius: const BorderRadius.only(
                                            topLeft: Radius.circular(4.0),
                                            topRight: Radius.circular(4.0),
                                          ),
                                        ),
                                        focusedBorder: OutlineInputBorder(
                                          borderSide: BorderSide(
                                            color: Color(0xFF6F61EF),
                                            width: 2.0,
                                          ),
                                          borderRadius: const BorderRadius.only(
                                            topLeft: Radius.circular(4.0),
                                            topRight: Radius.circular(4.0),
                                          ),
                                        ),
                                        errorBorder: OutlineInputBorder(
                                          borderSide: BorderSide(
                                            color: Color(0xFFFF5963),
                                            width: 2.0,
                                          ),
                                          borderRadius: const BorderRadius.only(
                                            topLeft: Radius.circular(4.0),
                                            topRight: Radius.circular(4.0),
                                          ),
                                        ),
                                        focusedErrorBorder: OutlineInputBorder(
                                          borderSide: BorderSide(
                                            color: Color(0xFFFF5963),
                                            width: 2.0,
                                          ),
                                          borderRadius: const BorderRadius.only(
                                            topLeft: Radius.circular(4.0),
                                            topRight: Radius.circular(4.0),
                                          ),
                                        ),
                                        filled: true,
                                        fillColor: Colors.white,
                                        contentPadding:
                                            EdgeInsetsDirectional.fromSTEB(
                                                20.0, 12.0, 20.0, 20.0),
                                      ),
                                      style: FlutterFlowTheme.of(context)
                                          .bodyMedium
                                          .override(
                                            fontFamily: 'Plus Jakarta Sans',
                                            color: Color(0xFF15161E),
                                            fontSize: 14.0,
                                            fontWeight: FontWeight.w500,
                                          ),
                                      maxLines: null,
                                      cursorColor: Color(0xFF6F61EF),
                                      validator: _model
                                          .addressController2Validator
                                          .asValidator(context),
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                          Padding(
                            padding: EdgeInsetsDirectional.fromSTEB(
                                0.0, 0.0, 0.0, 16.0),
                            child: Row(
                              mainAxisSize: MainAxisSize.max,
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Align(
                                  alignment: AlignmentDirectional(0.0, 0.05),
                                  child: FFButtonWidget(
                                    onPressed: () async {
                                      setState(() {
                                        _model.currentTab =
                                            _model.currentTab + -1;
                                      });
                                    },
                                    text: '',
                                    icon: Icon(
                                      Icons.chevron_left,
                                      size: 30.0,
                                    ),
                                    options: FFButtonOptions(
                                      width: 60.0,
                                      height: 60.0,
                                      padding: EdgeInsetsDirectional.fromSTEB(
                                          8.0, 0.0, 0.0, 0.0),
                                      iconPadding:
                                          EdgeInsetsDirectional.fromSTEB(
                                              0.0, 0.0, 0.0, 0.0),
                                      color: FlutterFlowTheme.of(context)
                                          .secondaryBackground,
                                      textStyle: FlutterFlowTheme.of(context)
                                          .bodyMedium
                                          .override(
                                            fontFamily: 'Plus Jakarta Sans',
                                            color: FlutterFlowTheme.of(context)
                                                .primaryText,
                                            fontSize: 14.0,
                                            fontWeight: FontWeight.w500,
                                          ),
                                      elevation: 0.0,
                                      borderSide: BorderSide(
                                        color: Colors.black,
                                        width: 2.0,
                                      ),
                                      borderRadius: BorderRadius.circular(30.0),
                                      hoverBorderSide: BorderSide(
                                        color: FlutterFlowTheme.of(context)
                                            .primaryText,
                                        width: 2.0,
                                      ),
                                      hoverTextColor: Color(0xFF15161E),
                                      hoverElevation: 0.0,
                                    ),
                                  ),
                                ),
                                Flexible(
                                  child: FFButtonWidget(
                                    onPressed: () async {
                                      context.pushNamed('BookingList');
                                    },
                                    text: 'Submit',
                                    options: FFButtonOptions(
                                      width: 200.0,
                                      height: 40.0,
                                      padding: EdgeInsetsDirectional.fromSTEB(
                                          24.0, 0.0, 24.0, 0.0),
                                      iconPadding:
                                          EdgeInsetsDirectional.fromSTEB(
                                              0.0, 0.0, 0.0, 0.0),
                                      color: FlutterFlowTheme.of(context)
                                          .primaryText,
                                      textStyle: FlutterFlowTheme.of(context)
                                          .titleSmall
                                          .override(
                                            fontFamily: 'Poppins',
                                            color: Colors.white,
                                          ),
                                      elevation: 3.0,
                                      borderSide: BorderSide(
                                        color: Colors.transparent,
                                        width: 1.0,
                                      ),
                                      borderRadius: BorderRadius.circular(12.0),
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                  ).animateOnPageLoad(
                      animationsMap['containerOnPageLoadAnimation4']!),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
