import '../backend/api_requests/api_calls.dart';
import '../components/web_nav_widget.dart';
import '../flutter_flow/flutter_flow_animations.dart';
import '../flutter_flow/flutter_flow_icon_button.dart';
import '../flutter_flow/flutter_flow_theme.dart';
import '../flutter_flow/flutter_flow_util.dart';
import 'dart:async';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:google_fonts/google_fonts.dart';

class MainBizListWidget extends StatefulWidget {
  const MainBizListWidget({Key? key}) : super(key: key);

  @override
  _MainBizListWidgetState createState() => _MainBizListWidgetState();
}

class _MainBizListWidgetState extends State<MainBizListWidget>
    with TickerProviderStateMixin {
  final animationsMap = {
    'containerOnPageLoadAnimation1': AnimationInfo(
      trigger: AnimationTrigger.onPageLoad,
      effects: [
        VisibilityEffect(duration: 1.ms),
        FadeEffect(
          curve: Curves.easeInOut,
          delay: 0.ms,
          duration: 300.ms,
          begin: 0,
          end: 1,
        ),
        MoveEffect(
          curve: Curves.easeInOut,
          delay: 0.ms,
          duration: 300.ms,
          begin: Offset(0, 20),
          end: Offset(0, 0),
        ),
      ],
    ),
    'containerOnPageLoadAnimation2': AnimationInfo(
      trigger: AnimationTrigger.onPageLoad,
      effects: [
        VisibilityEffect(duration: 1.ms),
        FadeEffect(
          curve: Curves.easeInOut,
          delay: 0.ms,
          duration: 300.ms,
          begin: 0,
          end: 1,
        ),
        MoveEffect(
          curve: Curves.easeInOut,
          delay: 0.ms,
          duration: 300.ms,
          begin: Offset(0, 20),
          end: Offset(0, 0),
        ),
      ],
    ),
    'containerOnPageLoadAnimation3': AnimationInfo(
      trigger: AnimationTrigger.onPageLoad,
      effects: [
        VisibilityEffect(duration: 1.ms),
        FadeEffect(
          curve: Curves.easeInOut,
          delay: 0.ms,
          duration: 300.ms,
          begin: 0,
          end: 1,
        ),
        MoveEffect(
          curve: Curves.easeInOut,
          delay: 0.ms,
          duration: 300.ms,
          begin: Offset(0, 20),
          end: Offset(0, 0),
        ),
      ],
    ),
    'containerOnPageLoadAnimation4': AnimationInfo(
      trigger: AnimationTrigger.onPageLoad,
      effects: [
        VisibilityEffect(duration: 1.ms),
        FadeEffect(
          curve: Curves.easeInOut,
          delay: 0.ms,
          duration: 300.ms,
          begin: 0,
          end: 1,
        ),
        MoveEffect(
          curve: Curves.easeInOut,
          delay: 0.ms,
          duration: 300.ms,
          begin: Offset(0, 20),
          end: Offset(0, 0),
        ),
      ],
    ),
    'containerOnPageLoadAnimation5': AnimationInfo(
      trigger: AnimationTrigger.onPageLoad,
      effects: [
        VisibilityEffect(duration: 1.ms),
        FadeEffect(
          curve: Curves.easeInOut,
          delay: 0.ms,
          duration: 300.ms,
          begin: 0,
          end: 1,
        ),
        MoveEffect(
          curve: Curves.easeInOut,
          delay: 0.ms,
          duration: 300.ms,
          begin: Offset(0, 20),
          end: Offset(0, 0),
        ),
      ],
    ),
    'containerOnPageLoadAnimation6': AnimationInfo(
      trigger: AnimationTrigger.onPageLoad,
      effects: [
        VisibilityEffect(duration: 1.ms),
        FadeEffect(
          curve: Curves.easeInOut,
          delay: 0.ms,
          duration: 300.ms,
          begin: 0,
          end: 1,
        ),
        MoveEffect(
          curve: Curves.easeInOut,
          delay: 0.ms,
          duration: 300.ms,
          begin: Offset(0, 20),
          end: Offset(0, 0),
        ),
      ],
    ),
  };
  Completer<ApiCallResponse>? _apiRequestCompleter1;
  Completer<ApiCallResponse>? _apiRequestCompleter2;
  Completer<ApiCallResponse>? _apiRequestCompleter3;
  Completer<ApiCallResponse>? _apiRequestCompleter5;
  Completer<ApiCallResponse>? _apiRequestCompleter4;
  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    setupAnimations(
      animationsMap.values.where((anim) =>
          anim.trigger == AnimationTrigger.onActionTrigger ||
          !anim.applyInitialState),
      this,
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: scaffoldKey,
      backgroundColor: FlutterFlowTheme.of(context).primaryBackground,
      appBar: !isWeb
          ? AppBar(
              backgroundColor: FlutterFlowTheme.of(context).primaryBackground,
              automaticallyImplyLeading: false,
              title: Text(
                'Customers',
                style: FlutterFlowTheme.of(context).title1,
              ),
              actions: [],
              centerTitle: false,
              elevation: 0,
            )
          : null,
      body: GestureDetector(
        onTap: () => FocusScope.of(context).unfocus(),
        child: Row(
          mainAxisSize: MainAxisSize.max,
          children: [
            if (responsiveVisibility(
              context: context,
              phone: false,
              tablet: false,
            ))
              WebNavWidget(
                iconOne: Icon(
                  Icons.dashboard_rounded,
                  color: FlutterFlowTheme.of(context).secondaryText,
                ),
                iconTwo: Icon(
                  Icons.group,
                  color: FlutterFlowTheme.of(context).primaryColor,
                ),
                iconThree: Icon(
                  Icons.home_work_rounded,
                  color: FlutterFlowTheme.of(context).secondaryText,
                ),
                iconFour: Icon(
                  Icons.account_circle,
                  color: FlutterFlowTheme.of(context).secondaryText,
                ),
                colorBgOne: FlutterFlowTheme.of(context).secondaryBackground,
                colorBgTwo: FlutterFlowTheme.of(context).primaryBackground,
                colorBgThree: FlutterFlowTheme.of(context).secondaryBackground,
                colorBgFour: FlutterFlowTheme.of(context).secondaryBackground,
                textOne: FlutterFlowTheme.of(context).secondaryText,
                textTwo: FlutterFlowTheme.of(context).primaryText,
                textThree: FlutterFlowTheme.of(context).secondaryText,
                textFour: FlutterFlowTheme.of(context).secondaryText,
                iconFive: Icon(
                  Icons.reduce_capacity,
                  color: FlutterFlowTheme.of(context).secondaryText,
                ),
                colorBgFive: FlutterFlowTheme.of(context).secondaryBackground,
                textFive: FlutterFlowTheme.of(context).secondaryText,
              ),
            Expanded(
              child: Column(
                mainAxisSize: MainAxisSize.max,
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Expanded(
                    child: SingleChildScrollView(
                      child: Column(
                        mainAxisSize: MainAxisSize.max,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          if (responsiveVisibility(
                            context: context,
                            tablet: false,
                            tabletLandscape: false,
                            desktop: false,
                          ))
                            Container(
                              width: double.infinity,
                              height: 34,
                              decoration: BoxDecoration(
                                color: FlutterFlowTheme.of(context)
                                    .primaryBackground,
                              ),
                            ),
                          Padding(
                            padding:
                                EdgeInsetsDirectional.fromSTEB(0, 0, 16, 0),
                            child: Row(
                              mainAxisSize: MainAxisSize.max,
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Padding(
                                  padding: EdgeInsetsDirectional.fromSTEB(
                                      16, 16, 0, 0),
                                  child: Text(
                                    'List of Busineses',
                                    style: FlutterFlowTheme.of(context).title1,
                                  ),
                                ),
                                FlutterFlowIconButton(
                                  borderColor: Colors.transparent,
                                  borderRadius: 30,
                                  borderWidth: 1,
                                  buttonSize: 60,
                                  icon: Icon(
                                    Icons.search_rounded,
                                    color: FlutterFlowTheme.of(context)
                                        .primaryText,
                                    size: 30,
                                  ),
                                  onPressed: () async {
                                    context.pushNamed('searchPage');
                                  },
                                ),
                              ],
                            ),
                          ),
                          Padding(
                            padding: EdgeInsetsDirectional.fromSTEB(4, 0, 4, 0),
                            child: Container(
                              width: MediaQuery.of(context).size.width,
                              height: MediaQuery.of(context).size.height * 0.94,
                              decoration: BoxDecoration(),
                              child: DefaultTabController(
                                length: 6,
                                initialIndex: 0,
                                child: Column(
                                  children: [
                                    TabBar(
                                      isScrollable: true,
                                      labelColor: FlutterFlowTheme.of(context)
                                          .primaryText,
                                      unselectedLabelColor:
                                          FlutterFlowTheme.of(context)
                                              .secondaryText,
                                      labelStyle: FlutterFlowTheme.of(context)
                                          .subtitle1,
                                      indicatorColor:
                                          FlutterFlowTheme.of(context)
                                              .primaryColor,
                                      indicatorWeight: 3,
                                      tabs: [
                                        Tab(
                                          text: 'All',
                                        ),
                                        Tab(
                                          text: 'Restaurants',
                                        ),
                                        Tab(
                                          text: 'Stores',
                                        ),
                                        Tab(
                                          text: 'Services',
                                        ),
                                        Tab(
                                          text: 'Government',
                                        ),
                                        Tab(
                                          text: 'Auctions',
                                        ),
                                      ],
                                    ),
                                    Expanded(
                                      child: TabBarView(
                                        children: [
                                          KeepAliveWidgetWrapper(
                                            builder: (context) => Padding(
                                              padding: EdgeInsetsDirectional
                                                  .fromSTEB(0, 0, 0, 24),
                                              child: Container(
                                                width: 100,
                                                decoration: BoxDecoration(
                                                  color: FlutterFlowTheme.of(
                                                          context)
                                                      .primaryBackground,
                                                ),
                                                child: FutureBuilder<
                                                    ApiCallResponse>(
                                                  future: (_apiRequestCompleter2 ??=
                                                          Completer<
                                                              ApiCallResponse>()
                                                            ..complete(
                                                                MainAPICall
                                                                    .call()))
                                                      .future,
                                                  builder: (context, snapshot) {
                                                    // Customize what your widget looks like when it's loading.
                                                    if (!snapshot.hasData) {
                                                      return Center(
                                                        child: SizedBox(
                                                          width: 50,
                                                          height: 50,
                                                          child:
                                                              CircularProgressIndicator(
                                                            color: FlutterFlowTheme
                                                                    .of(context)
                                                                .primaryColor,
                                                          ),
                                                        ),
                                                      );
                                                    }
                                                    final listViewMainAPIResponse =
                                                        snapshot.data!;
                                                    return Builder(
                                                      builder: (context) {
                                                        final pullData =
                                                            MainAPICall
                                                                .dataPull(
                                                          listViewMainAPIResponse
                                                              .jsonBody,
                                                        ).toList();
                                                        return RefreshIndicator(
                                                          onRefresh: () async {
                                                            setState(() =>
                                                                _apiRequestCompleter2 =
                                                                    null);
                                                            await waitForApiRequestCompleter2();
                                                          },
                                                          child:
                                                              ListView.builder(
                                                            padding:
                                                                EdgeInsets.zero,
                                                            scrollDirection:
                                                                Axis.vertical,
                                                            itemCount:
                                                                pullData.length,
                                                            itemBuilder: (context,
                                                                pullDataIndex) {
                                                              final pullDataItem =
                                                                  pullData[
                                                                      pullDataIndex];
                                                              return Padding(
                                                                padding:
                                                                    EdgeInsetsDirectional
                                                                        .fromSTEB(
                                                                            16,
                                                                            8,
                                                                            16,
                                                                            0),
                                                                child: InkWell(
                                                                  onTap:
                                                                      () async {
                                                                    if (Navigator.of(
                                                                            context)
                                                                        .canPop()) {
                                                                      context
                                                                          .pop();
                                                                    }
                                                                    context
                                                                        .pushNamed(
                                                                      'bizDetails',
                                                                      queryParams:
                                                                          {
                                                                        'bizID':
                                                                            serializeParam(
                                                                          getJsonField(
                                                                            pullDataItem,
                                                                            r'''$.id''',
                                                                          ),
                                                                          ParamType
                                                                              .int,
                                                                        ),
                                                                      }.withoutNulls,
                                                                    );
                                                                  },
                                                                  child:
                                                                      Container(
                                                                    width: double
                                                                        .infinity,
                                                                    decoration:
                                                                        BoxDecoration(
                                                                      color: FlutterFlowTheme.of(
                                                                              context)
                                                                          .secondaryBackground,
                                                                      boxShadow: [
                                                                        BoxShadow(
                                                                          blurRadius:
                                                                              3,
                                                                          color:
                                                                              Color(0x20000000),
                                                                          offset: Offset(
                                                                              0,
                                                                              1),
                                                                        )
                                                                      ],
                                                                      borderRadius:
                                                                          BorderRadius.circular(
                                                                              12),
                                                                    ),
                                                                    child:
                                                                        Padding(
                                                                      padding: EdgeInsetsDirectional
                                                                          .fromSTEB(
                                                                              8,
                                                                              8,
                                                                              12,
                                                                              8),
                                                                      child:
                                                                          Row(
                                                                        mainAxisSize:
                                                                            MainAxisSize.max,
                                                                        crossAxisAlignment:
                                                                            CrossAxisAlignment.center,
                                                                        children: [
                                                                          Hero(
                                                                            tag:
                                                                                'https://admin.creditcardfees.ca/${getJsonField(
                                                                              pullDataItem,
                                                                              r'''$.attributes.logo.data.attributes.url''',
                                                                            ).toString()}',
                                                                            transitionOnUserGestures:
                                                                                true,
                                                                            child:
                                                                                ClipRRect(
                                                                              borderRadius: BorderRadius.circular(8),
                                                                              child: CachedNetworkImage(
                                                                                imageUrl: 'https://admin.creditcardfees.ca/${getJsonField(
                                                                                  pullDataItem,
                                                                                  r'''$.attributes.logo.data.attributes.url''',
                                                                                ).toString()}',
                                                                                width: 70,
                                                                                height: 70,
                                                                                fit: BoxFit.contain,
                                                                              ),
                                                                            ),
                                                                          ),
                                                                          Expanded(
                                                                            child:
                                                                                Column(
                                                                              mainAxisSize: MainAxisSize.max,
                                                                              crossAxisAlignment: CrossAxisAlignment.start,
                                                                              children: [
                                                                                Padding(
                                                                                  padding: EdgeInsetsDirectional.fromSTEB(16, 0, 0, 0),
                                                                                  child: Text(
                                                                                    getJsonField(
                                                                                      pullDataItem,
                                                                                      r'''$.attributes.name''',
                                                                                    ).toString(),
                                                                                    style: FlutterFlowTheme.of(context).subtitle1,
                                                                                  ),
                                                                                ),
                                                                                Padding(
                                                                                  padding: EdgeInsetsDirectional.fromSTEB(16, 2, 0, 0),
                                                                                  child: Text(
                                                                                    '${getJsonField(
                                                                                      pullDataItem,
                                                                                      r'''$.attributes.businessAddress[0].city''',
                                                                                    ).toString()}, ${getJsonField(
                                                                                      pullDataItem,
                                                                                      r'''$.attributes.businessAddress[0].province''',
                                                                                    ).toString()}',
                                                                                    style: FlutterFlowTheme.of(context).bodyText2,
                                                                                  ),
                                                                                ),
                                                                                Padding(
                                                                                  padding: EdgeInsetsDirectional.fromSTEB(16, 0, 0, 0),
                                                                                  child: Text(
                                                                                    '${'${getJsonField(
                                                                                      pullDataItem,
                                                                                      r'''$.attributes.categories.data[0].attributes.name''',
                                                                                    ).toString()}'}',
                                                                                    style: FlutterFlowTheme.of(context).bodyText2.override(
                                                                                          fontFamily: FlutterFlowTheme.of(context).bodyText2Family,
                                                                                          color: FlutterFlowTheme.of(context).primaryColor,
                                                                                          fontSize: 12,
                                                                                          useGoogleFonts: GoogleFonts.asMap().containsKey(FlutterFlowTheme.of(context).bodyText2Family),
                                                                                        ),
                                                                                  ),
                                                                                ),
                                                                              ],
                                                                            ),
                                                                          ),
                                                                          InkWell(
                                                                            onTap:
                                                                                () async {
                                                                              if (getJsonField(
                                                                                    pullDataItem,
                                                                                    r'''$.attributes.listOfCreditCardFees[0].creditCardFeeAdditionalInfo''',
                                                                                  ) ==
                                                                                  null) {
                                                                                await showDialog(
                                                                                  context: context,
                                                                                  builder: (alertDialogContext) {
                                                                                    return AlertDialog(
                                                                                      title: Text('Additional Information'),
                                                                                      content: Text('This business has no additional information for the fee.'),
                                                                                      actions: [
                                                                                        TextButton(
                                                                                          onPressed: () => Navigator.pop(alertDialogContext),
                                                                                          child: Text('Ok'),
                                                                                        ),
                                                                                      ],
                                                                                    );
                                                                                  },
                                                                                );
                                                                              } else {
                                                                                await showDialog(
                                                                                  context: context,
                                                                                  builder: (alertDialogContext) {
                                                                                    return AlertDialog(
                                                                                      title: Text('Additional Information'),
                                                                                      content: Text(getJsonField(
                                                                                        pullDataItem,
                                                                                        r'''$.attributes.listOfCreditCardFees[0].creditCardFeeAdditionalInfo''',
                                                                                      ).toString()),
                                                                                      actions: [
                                                                                        TextButton(
                                                                                          onPressed: () => Navigator.pop(alertDialogContext),
                                                                                          child: Text('Ok'),
                                                                                        ),
                                                                                      ],
                                                                                    );
                                                                                  },
                                                                                );
                                                                              }
                                                                            },
                                                                            child:
                                                                                Text(
                                                                              '${getJsonField(
                                                                                pullDataItem,
                                                                                r'''$.attributes.listOfCreditCardFees[0].creditCardFeeAmount''',
                                                                              ).toString()}',
                                                                              style: FlutterFlowTheme.of(context).bodyText1.override(
                                                                                    fontFamily: FlutterFlowTheme.of(context).bodyText1Family,
                                                                                    color: FlutterFlowTheme.of(context).primaryColor,
                                                                                    useGoogleFonts: GoogleFonts.asMap().containsKey(FlutterFlowTheme.of(context).bodyText1Family),
                                                                                  ),
                                                                            ),
                                                                          ),
                                                                        ],
                                                                      ),
                                                                    ),
                                                                  ),
                                                                ).animateOnPageLoad(
                                                                    animationsMap[
                                                                        'containerOnPageLoadAnimation1']!),
                                                              );
                                                            },
                                                          ),
                                                        );
                                                      },
                                                    );
                                                  },
                                                ),
                                              ),
                                            ),
                                          ),
                                          KeepAliveWidgetWrapper(
                                            builder: (context) => ListView(
                                              padding: EdgeInsets.zero,
                                              scrollDirection: Axis.vertical,
                                              children: [
                                                FutureBuilder<ApiCallResponse>(
                                                  future:
                                                      FilterCategoryCall.call(
                                                    categoryName: 'Restaurant',
                                                  ),
                                                  builder: (context, snapshot) {
                                                    // Customize what your widget looks like when it's loading.
                                                    if (!snapshot.hasData) {
                                                      return Center(
                                                        child: SizedBox(
                                                          width: 50,
                                                          height: 50,
                                                          child:
                                                              CircularProgressIndicator(
                                                            color: FlutterFlowTheme
                                                                    .of(context)
                                                                .primaryColor,
                                                          ),
                                                        ),
                                                      );
                                                    }
                                                    final listViewFilterCategoryResponse =
                                                        snapshot.data!;
                                                    return Builder(
                                                      builder: (context) {
                                                        final pullData =
                                                            FilterCategoryCall
                                                                .filterCatsData(
                                                          listViewFilterCategoryResponse
                                                              .jsonBody,
                                                        ).toList();
                                                        return ListView.builder(
                                                          padding:
                                                              EdgeInsets.zero,
                                                          shrinkWrap: true,
                                                          scrollDirection:
                                                              Axis.vertical,
                                                          itemCount:
                                                              pullData.length,
                                                          itemBuilder: (context,
                                                              pullDataIndex) {
                                                            final pullDataItem =
                                                                pullData[
                                                                    pullDataIndex];
                                                            return Padding(
                                                              padding:
                                                                  EdgeInsetsDirectional
                                                                      .fromSTEB(
                                                                          16,
                                                                          8,
                                                                          16,
                                                                          0),
                                                              child: InkWell(
                                                                onTap:
                                                                    () async {
                                                                  if (Navigator.of(
                                                                          context)
                                                                      .canPop()) {
                                                                    context
                                                                        .pop();
                                                                  }
                                                                  context
                                                                      .pushNamed(
                                                                    'bizDetails',
                                                                    queryParams:
                                                                        {
                                                                      'bizID':
                                                                          serializeParam(
                                                                        getJsonField(
                                                                          pullDataItem,
                                                                          r'''$.id''',
                                                                        ),
                                                                        ParamType
                                                                            .int,
                                                                      ),
                                                                    }.withoutNulls,
                                                                  );
                                                                },
                                                                child:
                                                                    Container(
                                                                  width: double
                                                                      .infinity,
                                                                  decoration:
                                                                      BoxDecoration(
                                                                    color: FlutterFlowTheme.of(
                                                                            context)
                                                                        .secondaryBackground,
                                                                    boxShadow: [
                                                                      BoxShadow(
                                                                        blurRadius:
                                                                            3,
                                                                        color: Color(
                                                                            0x20000000),
                                                                        offset: Offset(
                                                                            0,
                                                                            1),
                                                                      )
                                                                    ],
                                                                    borderRadius:
                                                                        BorderRadius.circular(
                                                                            12),
                                                                  ),
                                                                  child:
                                                                      Padding(
                                                                    padding: EdgeInsetsDirectional
                                                                        .fromSTEB(
                                                                            8,
                                                                            8,
                                                                            12,
                                                                            8),
                                                                    child: Row(
                                                                      mainAxisSize:
                                                                          MainAxisSize
                                                                              .max,
                                                                      crossAxisAlignment:
                                                                          CrossAxisAlignment
                                                                              .center,
                                                                      children: [
                                                                        ClipRRect(
                                                                          borderRadius:
                                                                              BorderRadius.circular(8),
                                                                          child:
                                                                              Image.network(
                                                                            'https://admin.creditcardfees.ca/${getJsonField(
                                                                              pullDataItem,
                                                                              r'''$.attributes.logo.data.attributes.url''',
                                                                            ).toString()}',
                                                                            width:
                                                                                70,
                                                                            height:
                                                                                70,
                                                                            fit:
                                                                                BoxFit.fill,
                                                                          ),
                                                                        ),
                                                                        Expanded(
                                                                          child:
                                                                              Column(
                                                                            mainAxisSize:
                                                                                MainAxisSize.max,
                                                                            crossAxisAlignment:
                                                                                CrossAxisAlignment.start,
                                                                            children: [
                                                                              Padding(
                                                                                padding: EdgeInsetsDirectional.fromSTEB(16, 0, 0, 0),
                                                                                child: Text(
                                                                                  getJsonField(
                                                                                    pullDataItem,
                                                                                    r'''$.attributes.name''',
                                                                                  ).toString(),
                                                                                  style: FlutterFlowTheme.of(context).subtitle1,
                                                                                ),
                                                                              ),
                                                                              Padding(
                                                                                padding: EdgeInsetsDirectional.fromSTEB(16, 2, 0, 0),
                                                                                child: Text(
                                                                                  '${getJsonField(
                                                                                    pullDataItem,
                                                                                    r'''$.attributes.businessAddress[0].city''',
                                                                                  ).toString()}, ${getJsonField(
                                                                                    pullDataItem,
                                                                                    r'''$.attributes.businessAddress[0].province''',
                                                                                  ).toString()}',
                                                                                  style: FlutterFlowTheme.of(context).bodyText2,
                                                                                ),
                                                                              ),
                                                                              Padding(
                                                                                padding: EdgeInsetsDirectional.fromSTEB(16, 0, 0, 0),
                                                                                child: Text(
                                                                                  '${'${getJsonField(
                                                                                    pullDataItem,
                                                                                    r'''$.attributes.categories.data[0].attributes.name''',
                                                                                  ).toString()}'}',
                                                                                  style: FlutterFlowTheme.of(context).bodyText2.override(
                                                                                        fontFamily: FlutterFlowTheme.of(context).bodyText2Family,
                                                                                        color: FlutterFlowTheme.of(context).primaryColor,
                                                                                        fontSize: 12,
                                                                                        useGoogleFonts: GoogleFonts.asMap().containsKey(FlutterFlowTheme.of(context).bodyText2Family),
                                                                                      ),
                                                                                ),
                                                                              ),
                                                                            ],
                                                                          ),
                                                                        ),
                                                                        InkWell(
                                                                          onTap:
                                                                              () async {
                                                                            if (getJsonField(
                                                                                  pullDataItem,
                                                                                  r'''$.attributes.listOfCreditCardFees[0].creditCardFeeAdditionalInfo''',
                                                                                ) ==
                                                                                null) {
                                                                              await showDialog(
                                                                                context: context,
                                                                                builder: (alertDialogContext) {
                                                                                  return AlertDialog(
                                                                                    title: Text('Additional Information'),
                                                                                    content: Text('This business has no additional information for the fee.'),
                                                                                    actions: [
                                                                                      TextButton(
                                                                                        onPressed: () => Navigator.pop(alertDialogContext),
                                                                                        child: Text('Ok'),
                                                                                      ),
                                                                                    ],
                                                                                  );
                                                                                },
                                                                              );
                                                                            } else {
                                                                              await showDialog(
                                                                                context: context,
                                                                                builder: (alertDialogContext) {
                                                                                  return AlertDialog(
                                                                                    title: Text('Additional Information'),
                                                                                    content: Text(getJsonField(
                                                                                      pullDataItem,
                                                                                      r'''$.attributes.listOfCreditCardFees[0].creditCardFeeAdditionalInfo''',
                                                                                    ).toString()),
                                                                                    actions: [
                                                                                      TextButton(
                                                                                        onPressed: () => Navigator.pop(alertDialogContext),
                                                                                        child: Text('Ok'),
                                                                                      ),
                                                                                    ],
                                                                                  );
                                                                                },
                                                                              );
                                                                            }
                                                                          },
                                                                          child:
                                                                              Text(
                                                                            '${getJsonField(
                                                                              pullDataItem,
                                                                              r'''$.attributes.listOfCreditCardFees[0].creditCardFeeAmount''',
                                                                            ).toString()}',
                                                                            style: FlutterFlowTheme.of(context).bodyText1.override(
                                                                                  fontFamily: FlutterFlowTheme.of(context).bodyText1Family,
                                                                                  color: FlutterFlowTheme.of(context).primaryColor,
                                                                                  useGoogleFonts: GoogleFonts.asMap().containsKey(FlutterFlowTheme.of(context).bodyText1Family),
                                                                                ),
                                                                          ),
                                                                        ),
                                                                      ],
                                                                    ),
                                                                  ),
                                                                ),
                                                              ).animateOnPageLoad(
                                                                  animationsMap[
                                                                      'containerOnPageLoadAnimation2']!),
                                                            );
                                                          },
                                                        );
                                                      },
                                                    );
                                                  },
                                                ),
                                              ],
                                            ),
                                          ),
                                          KeepAliveWidgetWrapper(
                                            builder: (context) => ListView(
                                              padding: EdgeInsets.zero,
                                              scrollDirection: Axis.vertical,
                                              children: [
                                                FutureBuilder<ApiCallResponse>(
                                                  future: (_apiRequestCompleter3 ??=
                                                          Completer<
                                                              ApiCallResponse>()
                                                            ..complete(
                                                                FilterCategoryCall
                                                                    .call(
                                                              categoryName:
                                                                  'Store',
                                                            )))
                                                      .future,
                                                  builder: (context, snapshot) {
                                                    // Customize what your widget looks like when it's loading.
                                                    if (!snapshot.hasData) {
                                                      return Center(
                                                        child: SizedBox(
                                                          width: 50,
                                                          height: 50,
                                                          child:
                                                              CircularProgressIndicator(
                                                            color: FlutterFlowTheme
                                                                    .of(context)
                                                                .primaryColor,
                                                          ),
                                                        ),
                                                      );
                                                    }
                                                    final listViewFilterCategoryResponse =
                                                        snapshot.data!;
                                                    return Builder(
                                                      builder: (context) {
                                                        final pullData =
                                                            FilterCategoryCall
                                                                .filterCatsData(
                                                          listViewFilterCategoryResponse
                                                              .jsonBody,
                                                        ).toList();
                                                        return RefreshIndicator(
                                                          onRefresh: () async {
                                                            setState(() =>
                                                                _apiRequestCompleter3 =
                                                                    null);
                                                            await waitForApiRequestCompleter3();
                                                          },
                                                          child:
                                                              ListView.builder(
                                                            padding:
                                                                EdgeInsets.zero,
                                                            shrinkWrap: true,
                                                            scrollDirection:
                                                                Axis.vertical,
                                                            itemCount:
                                                                pullData.length,
                                                            itemBuilder: (context,
                                                                pullDataIndex) {
                                                              final pullDataItem =
                                                                  pullData[
                                                                      pullDataIndex];
                                                              return Padding(
                                                                padding:
                                                                    EdgeInsetsDirectional
                                                                        .fromSTEB(
                                                                            16,
                                                                            8,
                                                                            16,
                                                                            0),
                                                                child: InkWell(
                                                                  onTap:
                                                                      () async {
                                                                    if (Navigator.of(
                                                                            context)
                                                                        .canPop()) {
                                                                      context
                                                                          .pop();
                                                                    }
                                                                    context
                                                                        .pushNamed(
                                                                      'bizDetails',
                                                                      queryParams:
                                                                          {
                                                                        'bizID':
                                                                            serializeParam(
                                                                          getJsonField(
                                                                            pullDataItem,
                                                                            r'''$.id''',
                                                                          ),
                                                                          ParamType
                                                                              .int,
                                                                        ),
                                                                      }.withoutNulls,
                                                                    );
                                                                  },
                                                                  child:
                                                                      Container(
                                                                    width: double
                                                                        .infinity,
                                                                    decoration:
                                                                        BoxDecoration(
                                                                      color: FlutterFlowTheme.of(
                                                                              context)
                                                                          .secondaryBackground,
                                                                      boxShadow: [
                                                                        BoxShadow(
                                                                          blurRadius:
                                                                              3,
                                                                          color:
                                                                              Color(0x20000000),
                                                                          offset: Offset(
                                                                              0,
                                                                              1),
                                                                        )
                                                                      ],
                                                                      borderRadius:
                                                                          BorderRadius.circular(
                                                                              12),
                                                                    ),
                                                                    child:
                                                                        Padding(
                                                                      padding: EdgeInsetsDirectional
                                                                          .fromSTEB(
                                                                              8,
                                                                              8,
                                                                              12,
                                                                              8),
                                                                      child:
                                                                          Row(
                                                                        mainAxisSize:
                                                                            MainAxisSize.max,
                                                                        crossAxisAlignment:
                                                                            CrossAxisAlignment.center,
                                                                        children: [
                                                                          ClipRRect(
                                                                            borderRadius:
                                                                                BorderRadius.circular(8),
                                                                            child:
                                                                                Image.network(
                                                                              'https://admin.creditcardfees.ca/${getJsonField(
                                                                                pullDataItem,
                                                                                r'''$.attributes.logo.data.attributes.url''',
                                                                              ).toString()}',
                                                                              width: 70,
                                                                              height: 70,
                                                                              fit: BoxFit.fill,
                                                                            ),
                                                                          ),
                                                                          Expanded(
                                                                            child:
                                                                                Column(
                                                                              mainAxisSize: MainAxisSize.max,
                                                                              crossAxisAlignment: CrossAxisAlignment.start,
                                                                              children: [
                                                                                Padding(
                                                                                  padding: EdgeInsetsDirectional.fromSTEB(16, 0, 0, 0),
                                                                                  child: Text(
                                                                                    getJsonField(
                                                                                      pullDataItem,
                                                                                      r'''$.attributes.name''',
                                                                                    ).toString(),
                                                                                    style: FlutterFlowTheme.of(context).subtitle1,
                                                                                  ),
                                                                                ),
                                                                                Padding(
                                                                                  padding: EdgeInsetsDirectional.fromSTEB(16, 2, 0, 0),
                                                                                  child: Text(
                                                                                    '${getJsonField(
                                                                                      pullDataItem,
                                                                                      r'''$.attributes.businessAddress[0].city''',
                                                                                    ).toString()}, ${getJsonField(
                                                                                      pullDataItem,
                                                                                      r'''$.attributes.businessAddress[0].province''',
                                                                                    ).toString()}',
                                                                                    style: FlutterFlowTheme.of(context).bodyText2,
                                                                                  ),
                                                                                ),
                                                                                Padding(
                                                                                  padding: EdgeInsetsDirectional.fromSTEB(16, 0, 0, 0),
                                                                                  child: Text(
                                                                                    '${'${getJsonField(
                                                                                      pullDataItem,
                                                                                      r'''$.attributes.categories.data[0].attributes.name''',
                                                                                    ).toString()}'}',
                                                                                    style: FlutterFlowTheme.of(context).bodyText2.override(
                                                                                          fontFamily: FlutterFlowTheme.of(context).bodyText2Family,
                                                                                          color: FlutterFlowTheme.of(context).primaryColor,
                                                                                          fontSize: 12,
                                                                                          useGoogleFonts: GoogleFonts.asMap().containsKey(FlutterFlowTheme.of(context).bodyText2Family),
                                                                                        ),
                                                                                  ),
                                                                                ),
                                                                              ],
                                                                            ),
                                                                          ),
                                                                          InkWell(
                                                                            onTap:
                                                                                () async {
                                                                              if (getJsonField(
                                                                                    pullDataItem,
                                                                                    r'''$.attributes.listOfCreditCardFees[0].creditCardFeeAdditionalInfo''',
                                                                                  ) ==
                                                                                  null) {
                                                                                await showDialog(
                                                                                  context: context,
                                                                                  builder: (alertDialogContext) {
                                                                                    return AlertDialog(
                                                                                      title: Text('Additional Information'),
                                                                                      content: Text('This business has no additional information for the fee.'),
                                                                                      actions: [
                                                                                        TextButton(
                                                                                          onPressed: () => Navigator.pop(alertDialogContext),
                                                                                          child: Text('Ok'),
                                                                                        ),
                                                                                      ],
                                                                                    );
                                                                                  },
                                                                                );
                                                                              } else {
                                                                                await showDialog(
                                                                                  context: context,
                                                                                  builder: (alertDialogContext) {
                                                                                    return AlertDialog(
                                                                                      title: Text('Additional Information'),
                                                                                      content: Text(getJsonField(
                                                                                        pullDataItem,
                                                                                        r'''$.attributes.listOfCreditCardFees[0].creditCardFeeAdditionalInfo''',
                                                                                      ).toString()),
                                                                                      actions: [
                                                                                        TextButton(
                                                                                          onPressed: () => Navigator.pop(alertDialogContext),
                                                                                          child: Text('Ok'),
                                                                                        ),
                                                                                      ],
                                                                                    );
                                                                                  },
                                                                                );
                                                                              }
                                                                            },
                                                                            child:
                                                                                Text(
                                                                              '${getJsonField(
                                                                                pullDataItem,
                                                                                r'''$.attributes.listOfCreditCardFees[0].creditCardFeeAmount''',
                                                                              ).toString()}',
                                                                              style: FlutterFlowTheme.of(context).bodyText1.override(
                                                                                    fontFamily: FlutterFlowTheme.of(context).bodyText1Family,
                                                                                    color: FlutterFlowTheme.of(context).primaryColor,
                                                                                    useGoogleFonts: GoogleFonts.asMap().containsKey(FlutterFlowTheme.of(context).bodyText1Family),
                                                                                  ),
                                                                            ),
                                                                          ),
                                                                        ],
                                                                      ),
                                                                    ),
                                                                  ),
                                                                ).animateOnPageLoad(
                                                                    animationsMap[
                                                                        'containerOnPageLoadAnimation3']!),
                                                              );
                                                            },
                                                          ),
                                                        );
                                                      },
                                                    );
                                                  },
                                                ),
                                              ],
                                            ),
                                          ),
                                          KeepAliveWidgetWrapper(
                                            builder: (context) => ListView(
                                              padding: EdgeInsets.zero,
                                              scrollDirection: Axis.vertical,
                                              children: [
                                                FutureBuilder<ApiCallResponse>(
                                                  future: (_apiRequestCompleter5 ??=
                                                          Completer<
                                                              ApiCallResponse>()
                                                            ..complete(
                                                                FilterCategoryCall
                                                                    .call(
                                                              categoryName:
                                                                  'Services',
                                                            )))
                                                      .future,
                                                  builder: (context, snapshot) {
                                                    // Customize what your widget looks like when it's loading.
                                                    if (!snapshot.hasData) {
                                                      return Center(
                                                        child: SizedBox(
                                                          width: 50,
                                                          height: 50,
                                                          child:
                                                              CircularProgressIndicator(
                                                            color: FlutterFlowTheme
                                                                    .of(context)
                                                                .primaryColor,
                                                          ),
                                                        ),
                                                      );
                                                    }
                                                    final listViewFilterCategoryResponse =
                                                        snapshot.data!;
                                                    return Builder(
                                                      builder: (context) {
                                                        final pullData =
                                                            FilterCategoryCall
                                                                .filterCatsData(
                                                          listViewFilterCategoryResponse
                                                              .jsonBody,
                                                        ).toList();
                                                        return RefreshIndicator(
                                                          onRefresh: () async {
                                                            setState(() =>
                                                                _apiRequestCompleter5 =
                                                                    null);
                                                            await waitForApiRequestCompleter5();
                                                          },
                                                          child:
                                                              ListView.builder(
                                                            padding:
                                                                EdgeInsets.zero,
                                                            shrinkWrap: true,
                                                            scrollDirection:
                                                                Axis.vertical,
                                                            itemCount:
                                                                pullData.length,
                                                            itemBuilder: (context,
                                                                pullDataIndex) {
                                                              final pullDataItem =
                                                                  pullData[
                                                                      pullDataIndex];
                                                              return Padding(
                                                                padding:
                                                                    EdgeInsetsDirectional
                                                                        .fromSTEB(
                                                                            16,
                                                                            8,
                                                                            16,
                                                                            0),
                                                                child: InkWell(
                                                                  onTap:
                                                                      () async {
                                                                    if (Navigator.of(
                                                                            context)
                                                                        .canPop()) {
                                                                      context
                                                                          .pop();
                                                                    }
                                                                    context
                                                                        .pushNamed(
                                                                      'bizDetails',
                                                                      queryParams:
                                                                          {
                                                                        'bizID':
                                                                            serializeParam(
                                                                          getJsonField(
                                                                            pullDataItem,
                                                                            r'''$.id''',
                                                                          ),
                                                                          ParamType
                                                                              .int,
                                                                        ),
                                                                      }.withoutNulls,
                                                                    );
                                                                  },
                                                                  child:
                                                                      Container(
                                                                    width: double
                                                                        .infinity,
                                                                    decoration:
                                                                        BoxDecoration(
                                                                      color: FlutterFlowTheme.of(
                                                                              context)
                                                                          .secondaryBackground,
                                                                      boxShadow: [
                                                                        BoxShadow(
                                                                          blurRadius:
                                                                              3,
                                                                          color:
                                                                              Color(0x20000000),
                                                                          offset: Offset(
                                                                              0,
                                                                              1),
                                                                        )
                                                                      ],
                                                                      borderRadius:
                                                                          BorderRadius.circular(
                                                                              12),
                                                                    ),
                                                                    child:
                                                                        Padding(
                                                                      padding: EdgeInsetsDirectional
                                                                          .fromSTEB(
                                                                              8,
                                                                              8,
                                                                              12,
                                                                              8),
                                                                      child:
                                                                          Row(
                                                                        mainAxisSize:
                                                                            MainAxisSize.max,
                                                                        crossAxisAlignment:
                                                                            CrossAxisAlignment.center,
                                                                        children: [
                                                                          ClipRRect(
                                                                            borderRadius:
                                                                                BorderRadius.circular(8),
                                                                            child:
                                                                                Image.network(
                                                                              'https://admin.creditcardfees.ca/${getJsonField(
                                                                                pullDataItem,
                                                                                r'''$.attributes.logo.data.attributes.url''',
                                                                              ).toString()}',
                                                                              width: 70,
                                                                              height: 70,
                                                                              fit: BoxFit.fill,
                                                                            ),
                                                                          ),
                                                                          Expanded(
                                                                            child:
                                                                                Column(
                                                                              mainAxisSize: MainAxisSize.max,
                                                                              crossAxisAlignment: CrossAxisAlignment.start,
                                                                              children: [
                                                                                Padding(
                                                                                  padding: EdgeInsetsDirectional.fromSTEB(16, 0, 0, 0),
                                                                                  child: Text(
                                                                                    getJsonField(
                                                                                      pullDataItem,
                                                                                      r'''$.attributes.name''',
                                                                                    ).toString(),
                                                                                    style: FlutterFlowTheme.of(context).subtitle1,
                                                                                  ),
                                                                                ),
                                                                                Padding(
                                                                                  padding: EdgeInsetsDirectional.fromSTEB(16, 2, 0, 0),
                                                                                  child: Text(
                                                                                    '${getJsonField(
                                                                                      pullDataItem,
                                                                                      r'''$.attributes.businessAddress[0].city''',
                                                                                    ).toString()}, ${getJsonField(
                                                                                      pullDataItem,
                                                                                      r'''$.attributes.businessAddress[0].province''',
                                                                                    ).toString()}',
                                                                                    style: FlutterFlowTheme.of(context).bodyText2,
                                                                                  ),
                                                                                ),
                                                                                Padding(
                                                                                  padding: EdgeInsetsDirectional.fromSTEB(16, 0, 0, 0),
                                                                                  child: Text(
                                                                                    '${'${getJsonField(
                                                                                      pullDataItem,
                                                                                      r'''$.attributes.categories.data[0].attributes.name''',
                                                                                    ).toString()}'}',
                                                                                    style: FlutterFlowTheme.of(context).bodyText2.override(
                                                                                          fontFamily: FlutterFlowTheme.of(context).bodyText2Family,
                                                                                          color: FlutterFlowTheme.of(context).primaryColor,
                                                                                          fontSize: 12,
                                                                                          useGoogleFonts: GoogleFonts.asMap().containsKey(FlutterFlowTheme.of(context).bodyText2Family),
                                                                                        ),
                                                                                  ),
                                                                                ),
                                                                              ],
                                                                            ),
                                                                          ),
                                                                          InkWell(
                                                                            onTap:
                                                                                () async {
                                                                              if (getJsonField(
                                                                                    pullDataItem,
                                                                                    r'''$.attributes.listOfCreditCardFees[0].creditCardFeeAdditionalInfo''',
                                                                                  ) ==
                                                                                  null) {
                                                                                await showDialog(
                                                                                  context: context,
                                                                                  builder: (alertDialogContext) {
                                                                                    return AlertDialog(
                                                                                      title: Text('Additional Information'),
                                                                                      content: Text('This business has no additional information for the fee.'),
                                                                                      actions: [
                                                                                        TextButton(
                                                                                          onPressed: () => Navigator.pop(alertDialogContext),
                                                                                          child: Text('Ok'),
                                                                                        ),
                                                                                      ],
                                                                                    );
                                                                                  },
                                                                                );
                                                                              } else {
                                                                                await showDialog(
                                                                                  context: context,
                                                                                  builder: (alertDialogContext) {
                                                                                    return AlertDialog(
                                                                                      title: Text('Additional Information'),
                                                                                      content: Text(getJsonField(
                                                                                        pullDataItem,
                                                                                        r'''$.attributes.listOfCreditCardFees[0].creditCardFeeAdditionalInfo''',
                                                                                      ).toString()),
                                                                                      actions: [
                                                                                        TextButton(
                                                                                          onPressed: () => Navigator.pop(alertDialogContext),
                                                                                          child: Text('Ok'),
                                                                                        ),
                                                                                      ],
                                                                                    );
                                                                                  },
                                                                                );
                                                                              }
                                                                            },
                                                                            child:
                                                                                Text(
                                                                              '${getJsonField(
                                                                                pullDataItem,
                                                                                r'''$.attributes.listOfCreditCardFees[0].creditCardFeeAmount''',
                                                                              ).toString()}',
                                                                              style: FlutterFlowTheme.of(context).bodyText1.override(
                                                                                    fontFamily: FlutterFlowTheme.of(context).bodyText1Family,
                                                                                    color: FlutterFlowTheme.of(context).primaryColor,
                                                                                    useGoogleFonts: GoogleFonts.asMap().containsKey(FlutterFlowTheme.of(context).bodyText1Family),
                                                                                  ),
                                                                            ),
                                                                          ),
                                                                        ],
                                                                      ),
                                                                    ),
                                                                  ),
                                                                ).animateOnPageLoad(
                                                                    animationsMap[
                                                                        'containerOnPageLoadAnimation4']!),
                                                              );
                                                            },
                                                          ),
                                                        );
                                                      },
                                                    );
                                                  },
                                                ),
                                              ],
                                            ),
                                          ),
                                          KeepAliveWidgetWrapper(
                                            builder: (context) => ListView(
                                              padding: EdgeInsets.zero,
                                              scrollDirection: Axis.vertical,
                                              children: [
                                                FutureBuilder<ApiCallResponse>(
                                                  future: (_apiRequestCompleter4 ??=
                                                          Completer<
                                                              ApiCallResponse>()
                                                            ..complete(
                                                                FilterCategoryCall
                                                                    .call(
                                                              categoryName:
                                                                  'Government',
                                                            )))
                                                      .future,
                                                  builder: (context, snapshot) {
                                                    // Customize what your widget looks like when it's loading.
                                                    if (!snapshot.hasData) {
                                                      return Center(
                                                        child: SizedBox(
                                                          width: 50,
                                                          height: 50,
                                                          child:
                                                              CircularProgressIndicator(
                                                            color: FlutterFlowTheme
                                                                    .of(context)
                                                                .primaryColor,
                                                          ),
                                                        ),
                                                      );
                                                    }
                                                    final listViewFilterCategoryResponse =
                                                        snapshot.data!;
                                                    return Builder(
                                                      builder: (context) {
                                                        final pullData =
                                                            FilterCategoryCall
                                                                .filterCatsData(
                                                          listViewFilterCategoryResponse
                                                              .jsonBody,
                                                        ).toList();
                                                        return RefreshIndicator(
                                                          onRefresh: () async {
                                                            setState(() =>
                                                                _apiRequestCompleter4 =
                                                                    null);
                                                            await waitForApiRequestCompleter4();
                                                          },
                                                          child:
                                                              ListView.builder(
                                                            padding:
                                                                EdgeInsets.zero,
                                                            shrinkWrap: true,
                                                            scrollDirection:
                                                                Axis.vertical,
                                                            itemCount:
                                                                pullData.length,
                                                            itemBuilder: (context,
                                                                pullDataIndex) {
                                                              final pullDataItem =
                                                                  pullData[
                                                                      pullDataIndex];
                                                              return Padding(
                                                                padding:
                                                                    EdgeInsetsDirectional
                                                                        .fromSTEB(
                                                                            16,
                                                                            8,
                                                                            16,
                                                                            0),
                                                                child: InkWell(
                                                                  onTap:
                                                                      () async {
                                                                    if (Navigator.of(
                                                                            context)
                                                                        .canPop()) {
                                                                      context
                                                                          .pop();
                                                                    }
                                                                    context
                                                                        .pushNamed(
                                                                      'bizDetails',
                                                                      queryParams:
                                                                          {
                                                                        'bizID':
                                                                            serializeParam(
                                                                          getJsonField(
                                                                            pullDataItem,
                                                                            r'''$.id''',
                                                                          ),
                                                                          ParamType
                                                                              .int,
                                                                        ),
                                                                      }.withoutNulls,
                                                                    );
                                                                  },
                                                                  child:
                                                                      Container(
                                                                    width: double
                                                                        .infinity,
                                                                    decoration:
                                                                        BoxDecoration(
                                                                      color: FlutterFlowTheme.of(
                                                                              context)
                                                                          .secondaryBackground,
                                                                      boxShadow: [
                                                                        BoxShadow(
                                                                          blurRadius:
                                                                              3,
                                                                          color:
                                                                              Color(0x20000000),
                                                                          offset: Offset(
                                                                              0,
                                                                              1),
                                                                        )
                                                                      ],
                                                                      borderRadius:
                                                                          BorderRadius.circular(
                                                                              12),
                                                                    ),
                                                                    child:
                                                                        Padding(
                                                                      padding: EdgeInsetsDirectional
                                                                          .fromSTEB(
                                                                              8,
                                                                              8,
                                                                              12,
                                                                              8),
                                                                      child:
                                                                          Row(
                                                                        mainAxisSize:
                                                                            MainAxisSize.max,
                                                                        crossAxisAlignment:
                                                                            CrossAxisAlignment.center,
                                                                        children: [
                                                                          ClipRRect(
                                                                            borderRadius:
                                                                                BorderRadius.circular(8),
                                                                            child:
                                                                                Image.network(
                                                                              'https://admin.creditcardfees.ca/${getJsonField(
                                                                                pullDataItem,
                                                                                r'''$.attributes.logo.data.attributes.url''',
                                                                              ).toString()}',
                                                                              width: 70,
                                                                              height: 70,
                                                                              fit: BoxFit.fill,
                                                                            ),
                                                                          ),
                                                                          Expanded(
                                                                            child:
                                                                                Column(
                                                                              mainAxisSize: MainAxisSize.max,
                                                                              crossAxisAlignment: CrossAxisAlignment.start,
                                                                              children: [
                                                                                Padding(
                                                                                  padding: EdgeInsetsDirectional.fromSTEB(16, 0, 0, 0),
                                                                                  child: Text(
                                                                                    getJsonField(
                                                                                      pullDataItem,
                                                                                      r'''$.attributes.name''',
                                                                                    ).toString(),
                                                                                    style: FlutterFlowTheme.of(context).subtitle1,
                                                                                  ),
                                                                                ),
                                                                                Padding(
                                                                                  padding: EdgeInsetsDirectional.fromSTEB(16, 2, 0, 0),
                                                                                  child: Text(
                                                                                    '${getJsonField(
                                                                                      pullDataItem,
                                                                                      r'''$.attributes.businessAddress[0].city''',
                                                                                    ).toString()}, ${getJsonField(
                                                                                      pullDataItem,
                                                                                      r'''$.attributes.businessAddress[0].province''',
                                                                                    ).toString()}',
                                                                                    style: FlutterFlowTheme.of(context).bodyText2,
                                                                                  ),
                                                                                ),
                                                                                Padding(
                                                                                  padding: EdgeInsetsDirectional.fromSTEB(16, 0, 0, 0),
                                                                                  child: Text(
                                                                                    '${'${getJsonField(
                                                                                      pullDataItem,
                                                                                      r'''$.attributes.categories.data[0].attributes.name''',
                                                                                    ).toString()}'}',
                                                                                    style: FlutterFlowTheme.of(context).bodyText2.override(
                                                                                          fontFamily: FlutterFlowTheme.of(context).bodyText2Family,
                                                                                          color: FlutterFlowTheme.of(context).primaryColor,
                                                                                          fontSize: 12,
                                                                                          useGoogleFonts: GoogleFonts.asMap().containsKey(FlutterFlowTheme.of(context).bodyText2Family),
                                                                                        ),
                                                                                  ),
                                                                                ),
                                                                              ],
                                                                            ),
                                                                          ),
                                                                          InkWell(
                                                                            onTap:
                                                                                () async {
                                                                              if (getJsonField(
                                                                                    pullDataItem,
                                                                                    r'''$.attributes.listOfCreditCardFees[0].creditCardFeeAdditionalInfo''',
                                                                                  ) ==
                                                                                  null) {
                                                                                await showDialog(
                                                                                  context: context,
                                                                                  builder: (alertDialogContext) {
                                                                                    return AlertDialog(
                                                                                      title: Text('Additional Information'),
                                                                                      content: Text('This business has no additional information for the fee.'),
                                                                                      actions: [
                                                                                        TextButton(
                                                                                          onPressed: () => Navigator.pop(alertDialogContext),
                                                                                          child: Text('Ok'),
                                                                                        ),
                                                                                      ],
                                                                                    );
                                                                                  },
                                                                                );
                                                                              } else {
                                                                                await showDialog(
                                                                                  context: context,
                                                                                  builder: (alertDialogContext) {
                                                                                    return AlertDialog(
                                                                                      title: Text('Additional Information'),
                                                                                      content: Text(getJsonField(
                                                                                        pullDataItem,
                                                                                        r'''$.attributes.listOfCreditCardFees[0].creditCardFeeAdditionalInfo''',
                                                                                      ).toString()),
                                                                                      actions: [
                                                                                        TextButton(
                                                                                          onPressed: () => Navigator.pop(alertDialogContext),
                                                                                          child: Text('Ok'),
                                                                                        ),
                                                                                      ],
                                                                                    );
                                                                                  },
                                                                                );
                                                                              }
                                                                            },
                                                                            child:
                                                                                Text(
                                                                              '${getJsonField(
                                                                                pullDataItem,
                                                                                r'''$.attributes.listOfCreditCardFees[0].creditCardFeeAmount''',
                                                                              ).toString()}',
                                                                              style: FlutterFlowTheme.of(context).bodyText1.override(
                                                                                    fontFamily: FlutterFlowTheme.of(context).bodyText1Family,
                                                                                    color: FlutterFlowTheme.of(context).primaryColor,
                                                                                    useGoogleFonts: GoogleFonts.asMap().containsKey(FlutterFlowTheme.of(context).bodyText1Family),
                                                                                  ),
                                                                            ),
                                                                          ),
                                                                        ],
                                                                      ),
                                                                    ),
                                                                  ),
                                                                ).animateOnPageLoad(
                                                                    animationsMap[
                                                                        'containerOnPageLoadAnimation5']!),
                                                              );
                                                            },
                                                          ),
                                                        );
                                                      },
                                                    );
                                                  },
                                                ),
                                              ],
                                            ),
                                          ),
                                          KeepAliveWidgetWrapper(
                                            builder: (context) => ListView(
                                              padding: EdgeInsets.zero,
                                              scrollDirection: Axis.vertical,
                                              children: [
                                                FutureBuilder<ApiCallResponse>(
                                                  future: (_apiRequestCompleter1 ??=
                                                          Completer<
                                                              ApiCallResponse>()
                                                            ..complete(
                                                                FilterCategoryCall
                                                                    .call(
                                                              categoryName:
                                                                  'Auctions',
                                                            )))
                                                      .future,
                                                  builder: (context, snapshot) {
                                                    // Customize what your widget looks like when it's loading.
                                                    if (!snapshot.hasData) {
                                                      return Center(
                                                        child: SizedBox(
                                                          width: 50,
                                                          height: 50,
                                                          child:
                                                              CircularProgressIndicator(
                                                            color: FlutterFlowTheme
                                                                    .of(context)
                                                                .primaryColor,
                                                          ),
                                                        ),
                                                      );
                                                    }
                                                    final listViewFilterCategoryResponse =
                                                        snapshot.data!;
                                                    return Builder(
                                                      builder: (context) {
                                                        final pullData =
                                                            FilterCategoryCall
                                                                .filterCatsData(
                                                          listViewFilterCategoryResponse
                                                              .jsonBody,
                                                        ).toList();
                                                        return RefreshIndicator(
                                                          onRefresh: () async {
                                                            setState(() =>
                                                                _apiRequestCompleter1 =
                                                                    null);
                                                            await waitForApiRequestCompleter1();
                                                          },
                                                          child:
                                                              ListView.builder(
                                                            padding:
                                                                EdgeInsets.zero,
                                                            shrinkWrap: true,
                                                            scrollDirection:
                                                                Axis.vertical,
                                                            itemCount:
                                                                pullData.length,
                                                            itemBuilder: (context,
                                                                pullDataIndex) {
                                                              final pullDataItem =
                                                                  pullData[
                                                                      pullDataIndex];
                                                              return Padding(
                                                                padding:
                                                                    EdgeInsetsDirectional
                                                                        .fromSTEB(
                                                                            16,
                                                                            8,
                                                                            16,
                                                                            0),
                                                                child: InkWell(
                                                                  onTap:
                                                                      () async {
                                                                    if (Navigator.of(
                                                                            context)
                                                                        .canPop()) {
                                                                      context
                                                                          .pop();
                                                                    }
                                                                    context
                                                                        .pushNamed(
                                                                      'bizDetails',
                                                                      queryParams:
                                                                          {
                                                                        'bizID':
                                                                            serializeParam(
                                                                          getJsonField(
                                                                            pullDataItem,
                                                                            r'''$.id''',
                                                                          ),
                                                                          ParamType
                                                                              .int,
                                                                        ),
                                                                      }.withoutNulls,
                                                                    );
                                                                  },
                                                                  child:
                                                                      Container(
                                                                    width: double
                                                                        .infinity,
                                                                    decoration:
                                                                        BoxDecoration(
                                                                      color: FlutterFlowTheme.of(
                                                                              context)
                                                                          .secondaryBackground,
                                                                      boxShadow: [
                                                                        BoxShadow(
                                                                          blurRadius:
                                                                              3,
                                                                          color:
                                                                              Color(0x20000000),
                                                                          offset: Offset(
                                                                              0,
                                                                              1),
                                                                        )
                                                                      ],
                                                                      borderRadius:
                                                                          BorderRadius.circular(
                                                                              12),
                                                                    ),
                                                                    child:
                                                                        Padding(
                                                                      padding: EdgeInsetsDirectional
                                                                          .fromSTEB(
                                                                              8,
                                                                              8,
                                                                              12,
                                                                              8),
                                                                      child:
                                                                          Row(
                                                                        mainAxisSize:
                                                                            MainAxisSize.max,
                                                                        crossAxisAlignment:
                                                                            CrossAxisAlignment.center,
                                                                        children: [
                                                                          ClipRRect(
                                                                            borderRadius:
                                                                                BorderRadius.circular(8),
                                                                            child:
                                                                                Image.network(
                                                                              'https://admin.creditcardfees.ca/${getJsonField(
                                                                                pullDataItem,
                                                                                r'''$.attributes.logo.data.attributes.url''',
                                                                              ).toString()}',
                                                                              width: 70,
                                                                              height: 70,
                                                                              fit: BoxFit.fill,
                                                                            ),
                                                                          ),
                                                                          Expanded(
                                                                            child:
                                                                                Column(
                                                                              mainAxisSize: MainAxisSize.max,
                                                                              crossAxisAlignment: CrossAxisAlignment.start,
                                                                              children: [
                                                                                Padding(
                                                                                  padding: EdgeInsetsDirectional.fromSTEB(16, 0, 0, 0),
                                                                                  child: Text(
                                                                                    getJsonField(
                                                                                      pullDataItem,
                                                                                      r'''$.attributes.name''',
                                                                                    ).toString(),
                                                                                    style: FlutterFlowTheme.of(context).subtitle1,
                                                                                  ),
                                                                                ),
                                                                                Padding(
                                                                                  padding: EdgeInsetsDirectional.fromSTEB(16, 2, 0, 0),
                                                                                  child: Text(
                                                                                    '${getJsonField(
                                                                                      pullDataItem,
                                                                                      r'''$.attributes.businessAddress[0].city''',
                                                                                    ).toString()}, ${getJsonField(
                                                                                      pullDataItem,
                                                                                      r'''$.attributes.businessAddress[0].province''',
                                                                                    ).toString()}',
                                                                                    style: FlutterFlowTheme.of(context).bodyText2,
                                                                                  ),
                                                                                ),
                                                                                Padding(
                                                                                  padding: EdgeInsetsDirectional.fromSTEB(16, 0, 0, 0),
                                                                                  child: Text(
                                                                                    '${'${getJsonField(
                                                                                      pullDataItem,
                                                                                      r'''$.attributes.categories.data[0].attributes.name''',
                                                                                    ).toString()}'}',
                                                                                    style: FlutterFlowTheme.of(context).bodyText2.override(
                                                                                          fontFamily: FlutterFlowTheme.of(context).bodyText2Family,
                                                                                          color: FlutterFlowTheme.of(context).primaryColor,
                                                                                          fontSize: 12,
                                                                                          useGoogleFonts: GoogleFonts.asMap().containsKey(FlutterFlowTheme.of(context).bodyText2Family),
                                                                                        ),
                                                                                  ),
                                                                                ),
                                                                              ],
                                                                            ),
                                                                          ),
                                                                          InkWell(
                                                                            onTap:
                                                                                () async {
                                                                              if (getJsonField(
                                                                                    pullDataItem,
                                                                                    r'''$.attributes.listOfCreditCardFees[0].creditCardFeeAdditionalInfo''',
                                                                                  ) ==
                                                                                  null) {
                                                                                await showDialog(
                                                                                  context: context,
                                                                                  builder: (alertDialogContext) {
                                                                                    return AlertDialog(
                                                                                      title: Text('Additional Information'),
                                                                                      content: Text('This business has no additional information for the fee.'),
                                                                                      actions: [
                                                                                        TextButton(
                                                                                          onPressed: () => Navigator.pop(alertDialogContext),
                                                                                          child: Text('Ok'),
                                                                                        ),
                                                                                      ],
                                                                                    );
                                                                                  },
                                                                                );
                                                                              } else {
                                                                                await showDialog(
                                                                                  context: context,
                                                                                  builder: (alertDialogContext) {
                                                                                    return AlertDialog(
                                                                                      title: Text('Additional Information'),
                                                                                      content: Text(getJsonField(
                                                                                        pullDataItem,
                                                                                        r'''$.attributes.listOfCreditCardFees[0].creditCardFeeAdditionalInfo''',
                                                                                      ).toString()),
                                                                                      actions: [
                                                                                        TextButton(
                                                                                          onPressed: () => Navigator.pop(alertDialogContext),
                                                                                          child: Text('Ok'),
                                                                                        ),
                                                                                      ],
                                                                                    );
                                                                                  },
                                                                                );
                                                                              }
                                                                            },
                                                                            child:
                                                                                Text(
                                                                              '${getJsonField(
                                                                                pullDataItem,
                                                                                r'''$.attributes.listOfCreditCardFees[0].creditCardFeeAmount''',
                                                                              ).toString()}',
                                                                              style: FlutterFlowTheme.of(context).bodyText1.override(
                                                                                    fontFamily: FlutterFlowTheme.of(context).bodyText1Family,
                                                                                    color: FlutterFlowTheme.of(context).primaryColor,
                                                                                    useGoogleFonts: GoogleFonts.asMap().containsKey(FlutterFlowTheme.of(context).bodyText1Family),
                                                                                  ),
                                                                            ),
                                                                          ),
                                                                        ],
                                                                      ),
                                                                    ),
                                                                  ),
                                                                ).animateOnPageLoad(
                                                                    animationsMap[
                                                                        'containerOnPageLoadAnimation6']!),
                                                              );
                                                            },
                                                          ),
                                                        );
                                                      },
                                                    );
                                                  },
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
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  Future waitForApiRequestCompleter1({
    double minWait = 0,
    double maxWait = double.infinity,
  }) async {
    final stopwatch = Stopwatch()..start();
    while (true) {
      await Future.delayed(Duration(milliseconds: 50));
      final timeElapsed = stopwatch.elapsedMilliseconds;
      final requestComplete = _apiRequestCompleter1?.isCompleted ?? false;
      if (timeElapsed > maxWait || (requestComplete && timeElapsed > minWait)) {
        break;
      }
    }
  }

  Future waitForApiRequestCompleter2({
    double minWait = 0,
    double maxWait = double.infinity,
  }) async {
    final stopwatch = Stopwatch()..start();
    while (true) {
      await Future.delayed(Duration(milliseconds: 50));
      final timeElapsed = stopwatch.elapsedMilliseconds;
      final requestComplete = _apiRequestCompleter2?.isCompleted ?? false;
      if (timeElapsed > maxWait || (requestComplete && timeElapsed > minWait)) {
        break;
      }
    }
  }

  Future waitForApiRequestCompleter3({
    double minWait = 0,
    double maxWait = double.infinity,
  }) async {
    final stopwatch = Stopwatch()..start();
    while (true) {
      await Future.delayed(Duration(milliseconds: 50));
      final timeElapsed = stopwatch.elapsedMilliseconds;
      final requestComplete = _apiRequestCompleter3?.isCompleted ?? false;
      if (timeElapsed > maxWait || (requestComplete && timeElapsed > minWait)) {
        break;
      }
    }
  }

  Future waitForApiRequestCompleter5({
    double minWait = 0,
    double maxWait = double.infinity,
  }) async {
    final stopwatch = Stopwatch()..start();
    while (true) {
      await Future.delayed(Duration(milliseconds: 50));
      final timeElapsed = stopwatch.elapsedMilliseconds;
      final requestComplete = _apiRequestCompleter5?.isCompleted ?? false;
      if (timeElapsed > maxWait || (requestComplete && timeElapsed > minWait)) {
        break;
      }
    }
  }

  Future waitForApiRequestCompleter4({
    double minWait = 0,
    double maxWait = double.infinity,
  }) async {
    final stopwatch = Stopwatch()..start();
    while (true) {
      await Future.delayed(Duration(milliseconds: 50));
      final timeElapsed = stopwatch.elapsedMilliseconds;
      final requestComplete = _apiRequestCompleter4?.isCompleted ?? false;
      if (timeElapsed > maxWait || (requestComplete && timeElapsed > minWait)) {
        break;
      }
    }
  }
}
