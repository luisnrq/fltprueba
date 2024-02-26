import '/components/publicacion_widget.dart';
import '/flutter_flow/flutter_flow_animations.dart';
import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'package:flutter/material.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:provider/provider.dart';
import 'package:simple_gradient_text/simple_gradient_text.dart';
import 'home_page_model.dart';
export 'home_page_model.dart';

class HomePageWidget extends StatefulWidget {
  const HomePageWidget({super.key});

  @override
  State<HomePageWidget> createState() => _HomePageWidgetState();
}

class _HomePageWidgetState extends State<HomePageWidget>
    with TickerProviderStateMixin {
  late HomePageModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  final animationsMap = {
    'containerOnActionTriggerAnimation': AnimationInfo(
      trigger: AnimationTrigger.onActionTrigger,
      applyInitialState: true,
      effects: [
        MoveEffect(
          curve: Curves.easeInOut,
          delay: 0.ms,
          duration: 600.ms,
          begin: const Offset(0.0, 0.0),
          end: const Offset(115.0, 0.0),
        ),
      ],
    ),
  };

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => HomePageModel());

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
      onTap: () => _model.unfocusNode.canRequestFocus
          ? FocusScope.of(context).requestFocus(_model.unfocusNode)
          : FocusScope.of(context).unfocus(),
      child: Scaffold(
        key: scaffoldKey,
        backgroundColor: FlutterFlowTheme.of(context).primaryBackground,
        appBar: PreferredSize(
          preferredSize: const Size.fromHeight(100.0),
          child: AppBar(
            backgroundColor: FlutterFlowTheme.of(context).tertiary,
            automaticallyImplyLeading: false,
            actions: const [],
            flexibleSpace: FlexibleSpaceBar(
              title: Padding(
                padding: const EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 0.0, 14.0),
                child: Column(
                  mainAxisSize: MainAxisSize.max,
                  mainAxisAlignment: MainAxisAlignment.end,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Padding(
                      padding:
                          const EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 0.0, 8.0),
                      child: Row(
                        mainAxisSize: MainAxisSize.max,
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Padding(
                            padding: const EdgeInsetsDirectional.fromSTEB(
                                12.0, 0.0, 0.0, 0.0),
                            child: FlutterFlowIconButton(
                              borderColor: Colors.transparent,
                              borderRadius: 30.0,
                              borderWidth: 1.0,
                              buttonSize: 45.0,
                              icon: const Icon(
                                Icons.arrow_back_rounded,
                                color: Colors.white,
                                size: 25.0,
                              ),
                              onPressed: () async {
                                context.pop();
                              },
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsetsDirectional.fromSTEB(
                                4.0, 0.0, 0.0, 0.0),
                            child: Text(
                              'Back',
                              style: FlutterFlowTheme.of(context)
                                  .headlineMedium
                                  .override(
                                    fontFamily: 'Outfit',
                                    color: Colors.white,
                                    fontSize: 16.0,
                                  ),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsetsDirectional.fromSTEB(
                                0.0, 0.0, 12.0, 0.0),
                            child: FlutterFlowIconButton(
                              borderColor: Colors.transparent,
                              borderRadius: 30.0,
                              borderWidth: 1.0,
                              buttonSize: 45.0,
                              icon: const Icon(
                                Icons.menu,
                                color: Colors.white,
                                size: 25.0,
                              ),
                              onPressed: () async {
                                context.pop();
                              },
                            ),
                          ),
                        ],
                      ),
                    ),
                    Align(
                      alignment: const AlignmentDirectional(0.0, 0.0),
                      child: GradientText(
                        'Page Title',
                        style: FlutterFlowTheme.of(context).bodySmall,
                        colors: [
                          FlutterFlowTheme.of(context).primary,
                          FlutterFlowTheme.of(context).secondary
                        ],
                        gradientDirection: GradientDirection.ltr,
                        gradientType: GradientType.linear,
                      ),
                    ),
                  ],
                ),
              ),
              centerTitle: true,
              expandedTitleScale: 1.0,
            ),
            elevation: 10.0,
          ),
        ),
        body: SafeArea(
          top: true,
          child: SingleChildScrollView(
            child: Column(
              mainAxisSize: MainAxisSize.max,
              children: [
                wrapWithModel(
                  model: _model.publicacionModel1,
                  updateCallback: () => setState(() {}),
                  child: const PublicacionWidget(
                    imagen:
                        'https://images.pexels.com/photos/20204362/pexels-photo-20204362/free-photo-of-madera-amanecer-paisaje-montanas.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1',
                    imagenPerfil:
                        'https://images.pexels.com/photos/17604370/pexels-photo-17604370/free-photo-of-paisaje-mujer-sentado-prado.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1',
                    nombrePerfil: 'Sandra',
                    numeroLikes: 12,
                    descripcion: 'Un día en el museo',
                  ),
                ),
                wrapWithModel(
                  model: _model.publicacionModel2,
                  updateCallback: () => setState(() {}),
                  child: const PublicacionWidget(
                    imagen:
                        'https://images.pexels.com/photos/20204362/pexels-photo-20204362/free-photo-of-madera-amanecer-paisaje-montanas.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1',
                    imagenPerfil:
                        'https://images.pexels.com/photos/17604370/pexels-photo-17604370/free-photo-of-paisaje-mujer-sentado-prado.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1',
                    nombrePerfil: 'Sandra',
                    numeroLikes: 12,
                    descripcion: 'Un día en el museo',
                  ),
                ),
                wrapWithModel(
                  model: _model.publicacionModel3,
                  updateCallback: () => setState(() {}),
                  child: const PublicacionWidget(
                    imagen:
                        'https://images.pexels.com/photos/20204362/pexels-photo-20204362/free-photo-of-madera-amanecer-paisaje-montanas.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1',
                    imagenPerfil:
                        'https://images.pexels.com/photos/17604370/pexels-photo-17604370/free-photo-of-paisaje-mujer-sentado-prado.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1',
                    nombrePerfil: 'Sandra',
                    numeroLikes: 12,
                    descripcion: 'Un día en el museo',
                  ),
                ),
                wrapWithModel(
                  model: _model.publicacionModel4,
                  updateCallback: () => setState(() {}),
                  child: const PublicacionWidget(
                    imagen:
                        'https://images.pexels.com/photos/20204362/pexels-photo-20204362/free-photo-of-madera-amanecer-paisaje-montanas.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1',
                    imagenPerfil:
                        'https://images.pexels.com/photos/17604370/pexels-photo-17604370/free-photo-of-paisaje-mujer-sentado-prado.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1',
                    nombrePerfil: 'Sandra',
                    numeroLikes: 12,
                    descripcion: 'Un día en el museo',
                  ),
                ),
                wrapWithModel(
                  model: _model.publicacionModel5,
                  updateCallback: () => setState(() {}),
                  child: const PublicacionWidget(
                    imagen:
                        'https://images.pexels.com/photos/20204362/pexels-photo-20204362/free-photo-of-madera-amanecer-paisaje-montanas.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1',
                    imagenPerfil:
                        'https://images.pexels.com/photos/17604370/pexels-photo-17604370/free-photo-of-paisaje-mujer-sentado-prado.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1',
                    nombrePerfil: 'Sandra',
                    numeroLikes: 12,
                    descripcion: 'Un día en el museo',
                  ),
                ),
                wrapWithModel(
                  model: _model.publicacionModel6,
                  updateCallback: () => setState(() {}),
                  child: const PublicacionWidget(
                    imagen:
                        'https://images.pexels.com/photos/20204362/pexels-photo-20204362/free-photo-of-madera-amanecer-paisaje-montanas.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1',
                    imagenPerfil:
                        'https://images.pexels.com/photos/17604370/pexels-photo-17604370/free-photo-of-paisaje-mujer-sentado-prado.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1',
                    nombrePerfil: 'Sandra',
                    numeroLikes: 12,
                    descripcion: 'Un día en el museo',
                  ),
                ),
                wrapWithModel(
                  model: _model.publicacionModel7,
                  updateCallback: () => setState(() {}),
                  child: const PublicacionWidget(
                    imagen:
                        'https://images.pexels.com/photos/20204362/pexels-photo-20204362/free-photo-of-madera-amanecer-paisaje-montanas.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1',
                    imagenPerfil:
                        'https://images.pexels.com/photos/17604370/pexels-photo-17604370/free-photo-of-paisaje-mujer-sentado-prado.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1',
                    nombrePerfil: 'Sandra',
                    numeroLikes: 12,
                    descripcion: 'Un día en el museo',
                  ),
                ),
                wrapWithModel(
                  model: _model.publicacionModel8,
                  updateCallback: () => setState(() {}),
                  child: const PublicacionWidget(
                    imagen:
                        'https://images.pexels.com/photos/20204362/pexels-photo-20204362/free-photo-of-madera-amanecer-paisaje-montanas.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1',
                    imagenPerfil:
                        'https://images.pexels.com/photos/17604370/pexels-photo-17604370/free-photo-of-paisaje-mujer-sentado-prado.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1',
                    nombrePerfil: 'Sandra',
                    numeroLikes: 12,
                    descripcion: 'Un día en el museo',
                  ),
                ),
                Padding(
                  padding: const EdgeInsetsDirectional.fromSTEB(0.0, 16.0, 0.0, 16.0),
                  child: Container(
                    width: 250.0,
                    height: 50.0,
                    decoration: BoxDecoration(
                      color: const Color(0xFFF1F4F8),
                      borderRadius: BorderRadius.circular(12.0),
                      border: Border.all(
                        color: const Color(0xFFE0E3E7),
                        width: 1.0,
                      ),
                    ),
                    child: Padding(
                      padding: const EdgeInsets.all(4.0),
                      child: Row(
                        mainAxisSize: MainAxisSize.max,
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Expanded(
                            child: InkWell(
                              splashColor: Colors.transparent,
                              focusColor: Colors.transparent,
                              hoverColor: Colors.transparent,
                              highlightColor: Colors.transparent,
                              onTap: () async {
                                setDarkModeSetting(context, ThemeMode.light);
                              },
                              child: Container(
                                width: 115.0,
                                height: 100.0,
                                decoration: BoxDecoration(
                                  color: Theme.of(context).brightness ==
                                          Brightness.light
                                      ? Colors.white
                                      : const Color(0xFFF1F4F8),
                                  borderRadius: BorderRadius.circular(10.0),
                                  border: Border.all(
                                    color: valueOrDefault<Color>(
                                      Theme.of(context).brightness ==
                                              Brightness.light
                                          ? const Color(0xFFE0E3E7)
                                          : const Color(0xFFF1F4F8),
                                      const Color(0xFFE0E3E7),
                                    ),
                                    width: 1.0,
                                  ),
                                ),
                                child: Row(
                                  mainAxisSize: MainAxisSize.max,
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    Icon(
                                      Icons.wb_sunny_rounded,
                                      color: Theme.of(context).brightness ==
                                              Brightness.light
                                          ? const Color(0xFF14181B)
                                          : const Color(0xFF57636C),
                                      size: 16.0,
                                    ),
                                    Padding(
                                      padding: const EdgeInsetsDirectional.fromSTEB(
                                          4.0, 0.0, 0.0, 0.0),
                                      child: Text(
                                        'Light Mode',
                                        style: FlutterFlowTheme.of(context)
                                            .bodyMedium
                                            .override(
                                              fontFamily: 'Outfit',
                                              color: Theme.of(context)
                                                          .brightness ==
                                                      Brightness.light
                                                  ? const Color(0xFF14181B)
                                                  : const Color(0xFF57636C),
                                              fontSize: 14.0,
                                              fontWeight: FontWeight.w500,
                                            ),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                          ),
                          Expanded(
                            child: InkWell(
                              splashColor: Colors.transparent,
                              focusColor: Colors.transparent,
                              hoverColor: Colors.transparent,
                              highlightColor: Colors.transparent,
                              onTap: () async {
                                setDarkModeSetting(context, ThemeMode.dark);
                              },
                              child: Container(
                                width: 115.0,
                                height: 100.0,
                                decoration: BoxDecoration(
                                  color: Theme.of(context).brightness ==
                                          Brightness.dark
                                      ? Colors.white
                                      : const Color(0xFFF1F4F8),
                                  borderRadius: BorderRadius.circular(10.0),
                                  border: Border.all(
                                    color: valueOrDefault<Color>(
                                      Theme.of(context).brightness ==
                                              Brightness.dark
                                          ? const Color(0xFFE0E3E7)
                                          : const Color(0xFFF1F4F8),
                                      const Color(0xFFF1F4F8),
                                    ),
                                    width: 1.0,
                                  ),
                                ),
                                child: Row(
                                  mainAxisSize: MainAxisSize.max,
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    Icon(
                                      Icons.nightlight_round,
                                      color: Theme.of(context).brightness ==
                                              Brightness.dark
                                          ? const Color(0xFF14181B)
                                          : const Color(0xFF57636C),
                                      size: 16.0,
                                    ),
                                    Padding(
                                      padding: const EdgeInsetsDirectional.fromSTEB(
                                          4.0, 0.0, 0.0, 0.0),
                                      child: Text(
                                        'Dark Mode',
                                        style: FlutterFlowTheme.of(context)
                                            .bodyMedium
                                            .override(
                                              fontFamily: 'Outfit',
                                              color: Theme.of(context)
                                                          .brightness ==
                                                      Brightness.dark
                                                  ? const Color(0xFF14181B)
                                                  : const Color(0xFF57636C),
                                              fontSize: 14.0,
                                              fontWeight: FontWeight.w500,
                                            ),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ).animateOnActionTrigger(
                              animationsMap[
                                  'containerOnActionTriggerAnimation']!,
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
      ),
    );
  }
}
