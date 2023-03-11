import '/auth/auth_util.dart';
import '/backend/backend.dart';
import '/backend/firebase_storage/storage.dart';
import '/flutter_flow/flutter_flow_autocomplete_options_list.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import '/flutter_flow/upload_media.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class CrearPreferenciasModel extends FlutterFlowModel {
  ///  State fields for stateful widgets in this page.

  final formKey = GlobalKey<FormState>();
  bool isMediaUploading = false;
  FFUploadedFile uploadedLocalFile =
      FFUploadedFile(bytes: Uint8List.fromList([]));
  String uploadedFileUrl = '';

  // State field(s) for txtNumeroIdentificacion widget.
  TextEditingController? txtNumeroIdentificacionController;
  String? Function(BuildContext, String?)?
      txtNumeroIdentificacionControllerValidator;
  // State field(s) for txtNombreCompleto widget.
  TextEditingController? txtNombreCompletoController;
  String? Function(BuildContext, String?)? txtNombreCompletoControllerValidator;
  // State field(s) for txtCorreoElectronico widget.
  final txtCorreoElectronicoKey = GlobalKey();
  TextEditingController? txtCorreoElectronicoController;
  String? txtCorreoElectronicoSelectedOption;
  String? Function(BuildContext, String?)?
      txtCorreoElectronicoControllerValidator;
  // State field(s) for txtNumeroTelefono widget.
  TextEditingController? txtNumeroTelefonoController;
  String? Function(BuildContext, String?)? txtNumeroTelefonoControllerValidator;
  // State field(s) for txtNombreEmpresa widget.
  TextEditingController? txtNombreEmpresaController;
  String? Function(BuildContext, String?)? txtNombreEmpresaControllerValidator;
  // State field(s) for txtDireccion widget.
  TextEditingController? txtDireccionController;
  String? Function(BuildContext, String?)? txtDireccionControllerValidator;

  /// Initialization and disposal methods.

  void initState(BuildContext context) {}

  void dispose() {
    txtNumeroIdentificacionController?.dispose();
    txtNombreCompletoController?.dispose();
    txtNumeroTelefonoController?.dispose();
    txtNombreEmpresaController?.dispose();
    txtDireccionController?.dispose();
  }

  /// Additional helper methods are added here.

}
