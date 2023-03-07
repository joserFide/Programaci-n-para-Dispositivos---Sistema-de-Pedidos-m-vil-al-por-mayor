import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'detalles_precios_model.dart';
export 'detalles_precios_model.dart';

class DetallesPreciosWidget extends StatefulWidget {
  const DetallesPreciosWidget({Key? key}) : super(key: key);

  @override
  _DetallesPreciosWidgetState createState() => _DetallesPreciosWidgetState();
}

class _DetallesPreciosWidgetState extends State<DetallesPreciosWidget> {
  late DetallesPreciosModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => DetallesPreciosModel());
  }

  @override
  void dispose() {
    _model.maybeDispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: double.infinity,
      decoration: BoxDecoration(
        color: Color(0xFFE0E3E7),
      ),
      child: Column(
        mainAxisSize: MainAxisSize.max,
        children: [
          Padding(
            padding: EdgeInsetsDirectional.fromSTEB(20.0, 20.0, 20.0, 20.0),
            child: Row(
              mainAxisSize: MainAxisSize.max,
              children: [
                Text(
                  'Resumen Pedido',
                  style: FlutterFlowTheme.of(context).bodyText1,
                ),
              ],
            ),
          ),
          Padding(
            padding: EdgeInsetsDirectional.fromSTEB(20.0, 20.0, 20.0, 20.0),
            child: Row(
              mainAxisSize: MainAxisSize.max,
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Text(
                  'SubTotal',
                  style: FlutterFlowTheme.of(context).bodyText1,
                ),
                Text(
                  'Precio',
                  style: FlutterFlowTheme.of(context).bodyText1,
                ),
              ],
            ),
          ),
          Padding(
            padding: EdgeInsetsDirectional.fromSTEB(20.0, 20.0, 20.0, 20.0),
            child: Row(
              mainAxisSize: MainAxisSize.max,
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Text(
                  'Impuesto',
                  style: FlutterFlowTheme.of(context).bodyText1,
                ),
                Text(
                  'Precio Impuesto',
                  style: FlutterFlowTheme.of(context).bodyText1,
                ),
              ],
            ),
          ),
          Padding(
            padding: EdgeInsetsDirectional.fromSTEB(20.0, 20.0, 20.0, 20.0),
            child: Row(
              mainAxisSize: MainAxisSize.max,
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Text(
                  'Propina',
                  style: FlutterFlowTheme.of(context).bodyText1,
                ),
                Text(
                  'Precio Propina',
                  style: FlutterFlowTheme.of(context).bodyText1,
                ),
              ],
            ),
          ),
          Padding(
            padding: EdgeInsetsDirectional.fromSTEB(20.0, 20.0, 20.0, 20.0),
            child: Row(
              mainAxisSize: MainAxisSize.max,
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Text(
                  'Total',
                  style: FlutterFlowTheme.of(context).bodyText1,
                ),
                Text(
                  'Precio Total',
                  style: FlutterFlowTheme.of(context).bodyText1,
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
