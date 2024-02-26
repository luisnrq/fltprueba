import '/components/publicacion_widget.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'home_page_widget.dart' show HomePageWidget;
import 'package:flutter/material.dart';

class HomePageModel extends FlutterFlowModel<HomePageWidget> {
  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();
  // Model for publicacion component.
  late PublicacionModel publicacionModel1;
  // Model for publicacion component.
  late PublicacionModel publicacionModel2;
  // Model for publicacion component.
  late PublicacionModel publicacionModel3;
  // Model for publicacion component.
  late PublicacionModel publicacionModel4;
  // Model for publicacion component.
  late PublicacionModel publicacionModel5;
  // Model for publicacion component.
  late PublicacionModel publicacionModel6;
  // Model for publicacion component.
  late PublicacionModel publicacionModel7;
  // Model for publicacion component.
  late PublicacionModel publicacionModel8;

  /// Initialization and disposal methods.

  @override
  void initState(BuildContext context) {
    publicacionModel1 = createModel(context, () => PublicacionModel());
    publicacionModel2 = createModel(context, () => PublicacionModel());
    publicacionModel3 = createModel(context, () => PublicacionModel());
    publicacionModel4 = createModel(context, () => PublicacionModel());
    publicacionModel5 = createModel(context, () => PublicacionModel());
    publicacionModel6 = createModel(context, () => PublicacionModel());
    publicacionModel7 = createModel(context, () => PublicacionModel());
    publicacionModel8 = createModel(context, () => PublicacionModel());
  }

  @override
  void dispose() {
    unfocusNode.dispose();
    publicacionModel1.dispose();
    publicacionModel2.dispose();
    publicacionModel3.dispose();
    publicacionModel4.dispose();
    publicacionModel5.dispose();
    publicacionModel6.dispose();
    publicacionModel7.dispose();
    publicacionModel8.dispose();
  }

  /// Action blocks are added here.

  /// Additional helper methods are added here.
}
