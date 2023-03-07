import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class SolicitudPedidosModel extends FlutterFlowModel {
  ///  State fields for stateful widgets in this page.

  final formKey = GlobalKey<FormState>();
  // State field(s) for txtNumeroPedido widget.
  TextEditingController? txtNumeroPedidoController;
  String? Function(BuildContext, String?)? txtNumeroPedidoControllerValidator;
  // State field(s) for txtNombreCliente widget.
  TextEditingController? txtNombreClienteController;
  String? Function(BuildContext, String?)? txtNombreClienteControllerValidator;
  // State field(s) for txtTelefonoCliente widget.
  TextEditingController? txtTelefonoClienteController;
  String? Function(BuildContext, String?)?
      txtTelefonoClienteControllerValidator;
  // State field(s) for txtDireccionCliente widget.
  TextEditingController? txtDireccionClienteController;
  String? Function(BuildContext, String?)?
      txtDireccionClienteControllerValidator;
  // State field(s) for txtCorreoCliente widget.
  TextEditingController? txtCorreoClienteController;
  String? Function(BuildContext, String?)? txtCorreoClienteControllerValidator;
  // State field(s) for txtNombreProducto widget.
  TextEditingController? txtNombreProductoController;
  String? Function(BuildContext, String?)? txtNombreProductoControllerValidator;
  // State field(s) for txtMarcaProducto widget.
  TextEditingController? txtMarcaProductoController;
  String? Function(BuildContext, String?)? txtMarcaProductoControllerValidator;
  // State field(s) for txtCantidadProducto widget.
  TextEditingController? txtCantidadProductoController;
  String? Function(BuildContext, String?)?
      txtCantidadProductoControllerValidator;
  // State field(s) for txtPrecioProducto widget.
  TextEditingController? txtPrecioProductoController;
  String? Function(BuildContext, String?)? txtPrecioProductoControllerValidator;

  /// Initialization and disposal methods.

  void initState(BuildContext context) {}

  void dispose() {
    txtNumeroPedidoController?.dispose();
    txtNombreClienteController?.dispose();
    txtTelefonoClienteController?.dispose();
    txtDireccionClienteController?.dispose();
    txtCorreoClienteController?.dispose();
    txtNombreProductoController?.dispose();
    txtMarcaProductoController?.dispose();
    txtCantidadProductoController?.dispose();
    txtPrecioProductoController?.dispose();
  }

  /// Additional helper methods are added here.

}
