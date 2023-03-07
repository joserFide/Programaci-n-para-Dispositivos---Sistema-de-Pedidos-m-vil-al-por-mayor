import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class PreferenciasModel extends FlutterFlowModel {
  ///  State fields for stateful widgets in this page.

  final formKey = GlobalKey<FormState>();
  // State field(s) for txtNumeroIdentificacion widget.
  TextEditingController? txtNumeroIdentificacionController;
  String? Function(BuildContext, String?)?
      txtNumeroIdentificacionControllerValidator;
  // State field(s) for txtNombreCompleto widget.
  TextEditingController? txtNombreCompletoController;
  String? Function(BuildContext, String?)? txtNombreCompletoControllerValidator;
  // State field(s) for txtCorreoElectronico widget.
  TextEditingController? txtCorreoElectronicoController;
  String? Function(BuildContext, String?)?
      txtCorreoElectronicoControllerValidator;
  // State field(s) for txtNumeroTelefono widget.
  TextEditingController? txtNumeroTelefonoController;
  String? Function(BuildContext, String?)? txtNumeroTelefonoControllerValidator;
  // State field(s) for txtNombreEmpresa widget.
  TextEditingController? txtNombreEmpresaController;
  String? Function(BuildContext, String?)? txtNombreEmpresaControllerValidator;

  /// Initialization and disposal methods.

  void initState(BuildContext context) {}

  void dispose() {
    txtNumeroIdentificacionController?.dispose();
    txtNombreCompletoController?.dispose();
    txtCorreoElectronicoController?.dispose();
    txtNumeroTelefonoController?.dispose();
    txtNombreEmpresaController?.dispose();
  }

  /// Additional helper methods are added here.

}
