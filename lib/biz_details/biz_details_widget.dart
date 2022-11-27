import '../backend/api_requests/api_calls.dart';
import '../flutter_flow/flutter_flow_animations.dart';
import '../flutter_flow/flutter_flow_expanded_image_view.dart';
import '../flutter_flow/flutter_flow_icon_button.dart';
import '../flutter_flow/flutter_flow_theme.dart';
import '../flutter_flow/flutter_flow_util.dart';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:flutter_html/flutter_html.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:page_transition/page_transition.dart';

class BizDetailsWidget extends StatefulWidget {
  const BizDetailsWidget({
    Key? key,
    this.bizID,
  }) : super(key: key);

  final int? bizID;

  @override
  _BizDetailsWidgetState createState() => _BizDetailsWidgetState();
}

class _BizDetailsWidgetState extends State<BizDetailsWidget>
    with TickerProviderStateMixin {
  final animationsMap = {
    'imageOnPageLoadAnimation': AnimationInfo(
      trigger: AnimationTrigger.onPageLoad,
      effects: [
        VisibilityEffect(duration: 1.ms),
        FadeEffect(
          curve: Curves.easeInOut,
          delay: 0.ms,
          duration: 600.ms,
          begin: 0,
          end: 1,
        ),
        MoveEffect(
          curve: Curves.easeInOut,
          delay: 0.ms,
          duration: 600.ms,
          begin: Offset(0, -140),
          end: Offset(0, 0),
        ),
      ],
    ),
    'cardOnPageLoadAnimation': AnimationInfo(
      trigger: AnimationTrigger.onPageLoad,
      effects: [
        VisibilityEffect(duration: 400.ms),
        FadeEffect(
          curve: Curves.bounceOut,
          delay: 400.ms,
          duration: 600.ms,
          begin: 0,
          end: 1,
        ),
        ScaleEffect(
          curve: Curves.bounceOut,
          delay: 400.ms,
          duration: 600.ms,
          begin: 0.6,
          end: 1,
        ),
      ],
    ),
    'textOnPageLoadAnimation1': AnimationInfo(
      trigger: AnimationTrigger.onPageLoad,
      effects: [
        VisibilityEffect(duration: 1.ms),
        FadeEffect(
          curve: Curves.easeInOut,
          delay: 0.ms,
          duration: 600.ms,
          begin: 0,
          end: 1,
        ),
        MoveEffect(
          curve: Curves.easeInOut,
          delay: 0.ms,
          duration: 600.ms,
          begin: Offset(0, 40),
          end: Offset(0, 0),
        ),
      ],
    ),
    'textOnPageLoadAnimation2': AnimationInfo(
      trigger: AnimationTrigger.onPageLoad,
      effects: [
        VisibilityEffect(duration: 1.ms),
        FadeEffect(
          curve: Curves.easeInOut,
          delay: 0.ms,
          duration: 600.ms,
          begin: 0,
          end: 1,
        ),
        MoveEffect(
          curve: Curves.easeInOut,
          delay: 0.ms,
          duration: 600.ms,
          begin: Offset(0, 30),
          end: Offset(0, 0),
        ),
      ],
    ),
    'textOnPageLoadAnimation3': AnimationInfo(
      trigger: AnimationTrigger.onPageLoad,
      effects: [
        VisibilityEffect(duration: 1.ms),
        FadeEffect(
          curve: Curves.easeInOut,
          delay: 0.ms,
          duration: 600.ms,
          begin: 0,
          end: 1,
        ),
        MoveEffect(
          curve: Curves.easeInOut,
          delay: 0.ms,
          duration: 600.ms,
          begin: Offset(0, 40),
          end: Offset(0, 0),
        ),
      ],
    ),
    'textOnPageLoadAnimation4': AnimationInfo(
      trigger: AnimationTrigger.onPageLoad,
      effects: [
        VisibilityEffect(duration: 1.ms),
        FadeEffect(
          curve: Curves.easeInOut,
          delay: 0.ms,
          duration: 600.ms,
          begin: 0,
          end: 1,
        ),
        MoveEffect(
          curve: Curves.easeInOut,
          delay: 0.ms,
          duration: 600.ms,
          begin: Offset(0, 50),
          end: Offset(0, 0),
        ),
      ],
    ),
    'textOnPageLoadAnimation5': AnimationInfo(
      trigger: AnimationTrigger.onPageLoad,
      effects: [
        VisibilityEffect(duration: 1.ms),
        FadeEffect(
          curve: Curves.easeInOut,
          delay: 0.ms,
          duration: 600.ms,
          begin: 0,
          end: 1,
        ),
        MoveEffect(
          curve: Curves.easeInOut,
          delay: 0.ms,
          duration: 600.ms,
          begin: Offset(0, 40),
          end: Offset(0, 0),
        ),
      ],
    ),
    'textOnPageLoadAnimation6': AnimationInfo(
      trigger: AnimationTrigger.onPageLoad,
      effects: [
        VisibilityEffect(duration: 1.ms),
        FadeEffect(
          curve: Curves.easeInOut,
          delay: 0.ms,
          duration: 600.ms,
          begin: 0,
          end: 1,
        ),
        MoveEffect(
          curve: Curves.easeInOut,
          delay: 0.ms,
          duration: 600.ms,
          begin: Offset(0, 40),
          end: Offset(0, 0),
        ),
      ],
    ),
    'textOnPageLoadAnimation7': AnimationInfo(
      trigger: AnimationTrigger.onPageLoad,
      effects: [
        VisibilityEffect(duration: 1.ms),
        FadeEffect(
          curve: Curves.easeInOut,
          delay: 0.ms,
          duration: 600.ms,
          begin: 0,
          end: 1,
        ),
        MoveEffect(
          curve: Curves.easeInOut,
          delay: 0.ms,
          duration: 600.ms,
          begin: Offset(0, 50),
          end: Offset(0, 0),
        ),
      ],
    ),
    'textOnPageLoadAnimation8': AnimationInfo(
      trigger: AnimationTrigger.onPageLoad,
      effects: [
        VisibilityEffect(duration: 1.ms),
        FadeEffect(
          curve: Curves.easeInOut,
          delay: 0.ms,
          duration: 600.ms,
          begin: 0,
          end: 1,
        ),
        MoveEffect(
          curve: Curves.easeInOut,
          delay: 0.ms,
          duration: 600.ms,
          begin: Offset(0, 50),
          end: Offset(0, 0),
        ),
      ],
    ),
    'textOnPageLoadAnimation9': AnimationInfo(
      trigger: AnimationTrigger.onPageLoad,
      effects: [
        VisibilityEffect(duration: 1.ms),
        FadeEffect(
          curve: Curves.easeInOut,
          delay: 0.ms,
          duration: 600.ms,
          begin: 0,
          end: 1,
        ),
        MoveEffect(
          curve: Curves.easeInOut,
          delay: 0.ms,
          duration: 600.ms,
          begin: Offset(0, 50),
          end: Offset(0, 0),
        ),
      ],
    ),
    'textOnPageLoadAnimation10': AnimationInfo(
      trigger: AnimationTrigger.onPageLoad,
      effects: [
        VisibilityEffect(duration: 1.ms),
        FadeEffect(
          curve: Curves.easeInOut,
          delay: 0.ms,
          duration: 600.ms,
          begin: 0,
          end: 1,
        ),
        MoveEffect(
          curve: Curves.easeInOut,
          delay: 0.ms,
          duration: 600.ms,
          begin: Offset(0, 50),
          end: Offset(0, 0),
        ),
      ],
    ),
    'textOnPageLoadAnimation11': AnimationInfo(
      trigger: AnimationTrigger.onPageLoad,
      effects: [
        VisibilityEffect(duration: 1.ms),
        FadeEffect(
          curve: Curves.easeInOut,
          delay: 0.ms,
          duration: 600.ms,
          begin: 0,
          end: 1,
        ),
        MoveEffect(
          curve: Curves.easeInOut,
          delay: 0.ms,
          duration: 600.ms,
          begin: Offset(0, 60),
          end: Offset(0, 0),
        ),
      ],
    ),
    'textOnPageLoadAnimation12': AnimationInfo(
      trigger: AnimationTrigger.onPageLoad,
      effects: [
        VisibilityEffect(duration: 1.ms),
        FadeEffect(
          curve: Curves.easeInOut,
          delay: 0.ms,
          duration: 600.ms,
          begin: 0,
          end: 1,
        ),
        MoveEffect(
          curve: Curves.easeInOut,
          delay: 0.ms,
          duration: 600.ms,
          begin: Offset(0, 70),
          end: Offset(0, 0),
        ),
      ],
    ),
    'dividerOnPageLoadAnimation1': AnimationInfo(
      trigger: AnimationTrigger.onPageLoad,
      effects: [
        VisibilityEffect(duration: 1.ms),
        FadeEffect(
          curve: Curves.easeInOut,
          delay: 0.ms,
          duration: 600.ms,
          begin: 0,
          end: 1,
        ),
        MoveEffect(
          curve: Curves.easeInOut,
          delay: 0.ms,
          duration: 600.ms,
          begin: Offset(0, 80),
          end: Offset(0, 0),
        ),
      ],
    ),
    'textOnPageLoadAnimation13': AnimationInfo(
      trigger: AnimationTrigger.onPageLoad,
      effects: [
        VisibilityEffect(duration: 1.ms),
        FadeEffect(
          curve: Curves.easeInOut,
          delay: 0.ms,
          duration: 600.ms,
          begin: 0,
          end: 1,
        ),
        MoveEffect(
          curve: Curves.easeInOut,
          delay: 0.ms,
          duration: 600.ms,
          begin: Offset(0, 40),
          end: Offset(0, 0),
        ),
      ],
    ),
    'dividerOnPageLoadAnimation2': AnimationInfo(
      trigger: AnimationTrigger.onPageLoad,
      effects: [
        VisibilityEffect(duration: 1.ms),
        FadeEffect(
          curve: Curves.easeInOut,
          delay: 0.ms,
          duration: 600.ms,
          begin: 0,
          end: 1,
        ),
        MoveEffect(
          curve: Curves.easeInOut,
          delay: 0.ms,
          duration: 600.ms,
          begin: Offset(0, 80),
          end: Offset(0, 0),
        ),
      ],
    ),
  };
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
    return FutureBuilder<ApiCallResponse>(
      future: ProfileAPICall.call(
        bizId: widget.bizID,
      ),
      builder: (context, snapshot) {
        // Customize what your widget looks like when it's loading.
        if (!snapshot.hasData) {
          return Center(
            child: SizedBox(
              width: 50,
              height: 50,
              child: CircularProgressIndicator(
                color: FlutterFlowTheme.of(context).primaryColor,
              ),
            ),
          );
        }
        final bizDetailsProfileAPIResponse = snapshot.data!;
        return Scaffold(
          key: scaffoldKey,
          backgroundColor: FlutterFlowTheme.of(context).secondaryBackground,
          body: Column(
            mainAxisSize: MainAxisSize.max,
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Expanded(
                child: SingleChildScrollView(
                  child: Column(
                    mainAxisSize: MainAxisSize.max,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Container(
                        height: 240,
                        child: Stack(
                          alignment: AlignmentDirectional(-0.95, -0.7),
                          children: [
                            Align(
                              alignment: AlignmentDirectional(0, 0),
                              child: InkWell(
                                onTap: () async {
                                  await Navigator.push(
                                    context,
                                    PageTransition(
                                      type: PageTransitionType.fade,
                                      child: FlutterFlowExpandedImageView(
                                        image: CachedNetworkImage(
                                          imageUrl:
                                              'https://admin.creditcardfees.ca/${getJsonField(
                                            bizDetailsProfileAPIResponse
                                                .jsonBody,
                                            r'''$.data.attributes.logo.data.attributes.url''',
                                          ).toString()}',
                                          fit: BoxFit.contain,
                                        ),
                                        allowRotation: false,
                                        tag:
                                            'https://admin.creditcardfees.ca/${getJsonField(
                                          bizDetailsProfileAPIResponse.jsonBody,
                                          r'''$.data.attributes.logo.data.attributes.url''',
                                        ).toString()}',
                                        useHeroAnimation: true,
                                      ),
                                    ),
                                  );
                                },
                                child: Hero(
                                  tag:
                                      'https://admin.creditcardfees.ca/${getJsonField(
                                    bizDetailsProfileAPIResponse.jsonBody,
                                    r'''$.data.attributes.logo.data.attributes.url''',
                                  ).toString()}',
                                  transitionOnUserGestures: true,
                                  child: CachedNetworkImage(
                                    imageUrl:
                                        'https://admin.creditcardfees.ca/${getJsonField(
                                      bizDetailsProfileAPIResponse.jsonBody,
                                      r'''$.data.attributes.logo.data.attributes.url''',
                                    ).toString()}',
                                    width: 600,
                                    height: 240,
                                    fit: BoxFit.contain,
                                  ),
                                ),
                              ).animateOnPageLoad(
                                  animationsMap['imageOnPageLoadAnimation']!),
                            ),
                            Align(
                              alignment: AlignmentDirectional(-0.95, -0.55),
                              child: InkWell(
                                onTap: () async {
                                  context.pop();
                                },
                                child: Card(
                                  clipBehavior: Clip.antiAliasWithSaveLayer,
                                  color: Color(0xFFF5F5F5),
                                  elevation: 3,
                                  shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(100),
                                  ),
                                  child: Padding(
                                    padding: EdgeInsetsDirectional.fromSTEB(
                                        10, 10, 10, 10),
                                    child: Icon(
                                      Icons.arrow_back_rounded,
                                      color: FlutterFlowTheme.of(context)
                                          .primaryColor,
                                      size: 24,
                                    ),
                                  ),
                                ),
                              ).animateOnPageLoad(
                                  animationsMap['cardOnPageLoadAnimation']!),
                            ),
                          ],
                        ),
                      ),
                      Padding(
                        padding: EdgeInsetsDirectional.fromSTEB(20, 16, 20, 0),
                        child: Row(
                          mainAxisSize: MainAxisSize.max,
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Column(
                              mainAxisSize: MainAxisSize.max,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  'Business Name',
                                  style: FlutterFlowTheme.of(context).bodyText2,
                                ).animateOnPageLoad(
                                    animationsMap['textOnPageLoadAnimation1']!),
                                Padding(
                                  padding: EdgeInsetsDirectional.fromSTEB(
                                      0, 4, 0, 0),
                                  child: Text(
                                    getJsonField(
                                      bizDetailsProfileAPIResponse.jsonBody,
                                      r'''$.data.attributes.name''',
                                    ).toString(),
                                    textAlign: TextAlign.start,
                                    style: FlutterFlowTheme.of(context).title2,
                                  ).animateOnPageLoad(animationsMap[
                                      'textOnPageLoadAnimation2']!),
                                ),
                              ],
                            ),
                            Container(
                              width: 50,
                              height: 50,
                              decoration: BoxDecoration(
                                color:
                                    FlutterFlowTheme.of(context).primaryColor,
                                boxShadow: [
                                  BoxShadow(
                                    blurRadius: 4,
                                    color: Color(0x2B000000),
                                    offset: Offset(0, 2),
                                  )
                                ],
                                shape: BoxShape.circle,
                              ),
                              child: FlutterFlowIconButton(
                                borderColor: Colors.transparent,
                                borderRadius: 30,
                                borderWidth: 1,
                                buttonSize: 50,
                                icon: Icon(
                                  Icons.web,
                                  color: FlutterFlowTheme.of(context)
                                      .primaryBtnText,
                                  size: 24,
                                ),
                                onPressed: () async {
                                  await launchURL(getJsonField(
                                    bizDetailsProfileAPIResponse.jsonBody,
                                    r'''$.data.attributes.additionalInformation.website''',
                                  ).toString());
                                },
                              ),
                            ),
                          ],
                        ),
                      ),
                      Padding(
                        padding: EdgeInsetsDirectional.fromSTEB(20, 12, 0, 0),
                        child: Column(
                          mainAxisSize: MainAxisSize.max,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              'Business Categories',
                              style: FlutterFlowTheme.of(context).bodyText2,
                            ).animateOnPageLoad(
                                animationsMap['textOnPageLoadAnimation3']!),
                            Padding(
                              padding:
                                  EdgeInsetsDirectional.fromSTEB(0, 4, 0, 0),
                              child: Text(
                                getJsonField(
                                  bizDetailsProfileAPIResponse.jsonBody,
                                  r'''$.data.attributes.categories.data[0].attributes.name''',
                                ).toString(),
                                textAlign: TextAlign.start,
                                style: FlutterFlowTheme.of(context).bodyText1,
                              ).animateOnPageLoad(
                                  animationsMap['textOnPageLoadAnimation4']!),
                            ),
                          ],
                        ),
                      ),
                      Padding(
                        padding: EdgeInsetsDirectional.fromSTEB(20, 12, 0, 0),
                        child: Column(
                          mainAxisSize: MainAxisSize.max,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              'Business Description',
                              style: FlutterFlowTheme.of(context).bodyText2,
                            ).animateOnPageLoad(
                                animationsMap['textOnPageLoadAnimation5']!),
                            Padding(
                              padding:
                                  EdgeInsetsDirectional.fromSTEB(0, 4, 0, 0),
                              child: Html(
                                data: getJsonField(
                                  bizDetailsProfileAPIResponse.jsonBody,
                                  r'''$.data.attributes.description''',
                                ).toString(),
                              ),
                            ),
                          ],
                        ),
                      ),
                      Padding(
                        padding: EdgeInsetsDirectional.fromSTEB(20, 12, 0, 0),
                        child: Column(
                          mainAxisSize: MainAxisSize.max,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              'Business Address',
                              style: FlutterFlowTheme.of(context).bodyText2,
                            ).animateOnPageLoad(
                                animationsMap['textOnPageLoadAnimation6']!),
                            Padding(
                              padding:
                                  EdgeInsetsDirectional.fromSTEB(0, 4, 0, 0),
                              child: Text(
                                getJsonField(
                                  bizDetailsProfileAPIResponse.jsonBody,
                                  r'''$.data.attributes.businessAddress[0].address''',
                                ).toString(),
                                textAlign: TextAlign.start,
                                style: FlutterFlowTheme.of(context).bodyText1,
                              ).animateOnPageLoad(
                                  animationsMap['textOnPageLoadAnimation7']!),
                            ),
                            Padding(
                              padding:
                                  EdgeInsetsDirectional.fromSTEB(0, 4, 0, 0),
                              child: Text(
                                '${getJsonField(
                                  bizDetailsProfileAPIResponse.jsonBody,
                                  r'''$.data.attributes.businessAddress[0].city''',
                                ).toString()}, ${getJsonField(
                                  bizDetailsProfileAPIResponse.jsonBody,
                                  r'''$.data.attributes.businessAddress[0].province''',
                                ).toString()}',
                                textAlign: TextAlign.start,
                                style: FlutterFlowTheme.of(context).bodyText1,
                              ).animateOnPageLoad(
                                  animationsMap['textOnPageLoadAnimation8']!),
                            ),
                            Padding(
                              padding:
                                  EdgeInsetsDirectional.fromSTEB(0, 4, 0, 0),
                              child: Text(
                                getJsonField(
                                  bizDetailsProfileAPIResponse.jsonBody,
                                  r'''$.data.attributes.businessAddress[0].postalCode''',
                                ).toString(),
                                textAlign: TextAlign.start,
                                style: FlutterFlowTheme.of(context).bodyText1,
                              ).animateOnPageLoad(
                                  animationsMap['textOnPageLoadAnimation9']!),
                            ),
                            Padding(
                              padding:
                                  EdgeInsetsDirectional.fromSTEB(0, 4, 0, 0),
                              child: Text(
                                getJsonField(
                                  bizDetailsProfileAPIResponse.jsonBody,
                                  r'''$.data.attributes.businessAddress[0].phoneNumber''',
                                ).toString(),
                                textAlign: TextAlign.start,
                                style: FlutterFlowTheme.of(context).bodyText1,
                              ).animateOnPageLoad(
                                  animationsMap['textOnPageLoadAnimation10']!),
                            ),
                          ],
                        ),
                      ),
                      Padding(
                        padding: EdgeInsetsDirectional.fromSTEB(20, 12, 0, 12),
                        child: Column(
                          mainAxisSize: MainAxisSize.max,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              'Fee',
                              style: FlutterFlowTheme.of(context).bodyText2,
                            ).animateOnPageLoad(
                                animationsMap['textOnPageLoadAnimation11']!),
                            Padding(
                              padding:
                                  EdgeInsetsDirectional.fromSTEB(0, 4, 0, 0),
                              child: Text(
                                '${getJsonField(
                                  bizDetailsProfileAPIResponse.jsonBody,
                                  r'''$.data.attributes.listOfCreditCardFees[0].creditCardFeeAmount''',
                                ).toString()}',
                                textAlign: TextAlign.start,
                                style: FlutterFlowTheme.of(context)
                                    .subtitle1
                                    .override(
                                      fontFamily: FlutterFlowTheme.of(context)
                                          .subtitle1Family,
                                      color: FlutterFlowTheme.of(context)
                                          .primaryColor,
                                      useGoogleFonts: GoogleFonts.asMap()
                                          .containsKey(
                                              FlutterFlowTheme.of(context)
                                                  .subtitle1Family),
                                    ),
                              ).animateOnPageLoad(
                                  animationsMap['textOnPageLoadAnimation12']!),
                            ),
                          ],
                        ),
                      ),
                      Divider(
                        height: 12,
                        thickness: 2,
                        color: FlutterFlowTheme.of(context).primaryBackground,
                      ).animateOnPageLoad(
                          animationsMap['dividerOnPageLoadAnimation1']!),
                      Padding(
                        padding: EdgeInsetsDirectional.fromSTEB(20, 12, 0, 12),
                        child: Column(
                          mainAxisSize: MainAxisSize.max,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              'Notes',
                              style: FlutterFlowTheme.of(context).bodyText2,
                            ).animateOnPageLoad(
                                animationsMap['textOnPageLoadAnimation13']!),
                            Html(
                              data: getJsonField(
                                bizDetailsProfileAPIResponse.jsonBody,
                                r'''$.data.attributes.listOfCreditCardFees[:].creditCardFeeAdditionalInfo''',
                              ).toString(),
                            ),
                          ],
                        ),
                      ),
                      Divider(
                        height: 12,
                        thickness: 2,
                        color: FlutterFlowTheme.of(context).primaryBackground,
                      ).animateOnPageLoad(
                          animationsMap['dividerOnPageLoadAnimation2']!),
                    ],
                  ),
                ),
              ),
            ],
          ),
        );
      },
    );
  }
}
