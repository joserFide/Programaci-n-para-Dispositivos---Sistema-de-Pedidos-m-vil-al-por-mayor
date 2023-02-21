import '../auth/auth_util.dart';
import '../flutter_flow/flutter_flow_theme.dart';
import '../flutter_flow/flutter_flow_util.dart';
import '../flutter_flow/flutter_flow_widgets.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class LoginModel extends FlutterFlowModel {
  ///  State fields for stateful widgets in this page.

  final formKey = GlobalKey<FormState>();
  // State field(s) for txtUsuario widget.
  TextEditingController? txtUsuarioController;
  String? Function(BuildContext, String?)? txtUsuarioControllerValidator;
  // State field(s) for txtClave widget.
  TextEditingController? txtClaveController;
  late bool txtClaveVisibility;
  String? Function(BuildContext, String?)? txtClaveControllerValidator;

  /// Initialization and disposal methods.

  void initState(BuildContext context) {
    txtClaveVisibility = false;
  }

  void dispose() {
    txtUsuarioController?.dispose();
    txtClaveController?.dispose();
  }

  /// Additional helper methods are added here.

}
