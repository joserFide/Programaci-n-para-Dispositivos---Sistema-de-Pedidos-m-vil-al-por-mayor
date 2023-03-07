import '/backend/backend.dart';
import '/flutter_flow/flutter_flow_count_controller.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'detalle_productos_model.dart';
export 'detalle_productos_model.dart';

class DetalleProductosWidget extends StatefulWidget {
  const DetalleProductosWidget({
    Key? key,
    this.idProducto,
  }) : super(key: key);

  final DocumentReference? idProducto;

  @override
  _DetalleProductosWidgetState createState() => _DetalleProductosWidgetState();
}

class _DetalleProductosWidgetState extends State<DetalleProductosWidget> {
  late DetalleProductosModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();
  final _unfocusNode = FocusNode();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => DetalleProductosModel());
  }

  @override
  void dispose() {
    _model.dispose();

    _unfocusNode.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return StreamBuilder<ProductosRecord>(
      stream: ProductosRecord.getDocument(widget.idProducto!),
      builder: (context, snapshot) {
        // Customize what your widget looks like when it's loading.
        if (!snapshot.hasData) {
          return Center(
            child: SizedBox(
              width: 50.0,
              height: 50.0,
              child: CircularProgressIndicator(
                color: FlutterFlowTheme.of(context).primaryColor,
              ),
            ),
          );
        }
        final detalleProductosProductosRecord = snapshot.data!;
        return Scaffold(
          key: scaffoldKey,
          backgroundColor: Color(0xFFE0E3E7),
          appBar: AppBar(
            backgroundColor: FlutterFlowTheme.of(context).tertiaryColor,
            automaticallyImplyLeading: false,
            title: Text(
              'Detalle Productos',
              style: FlutterFlowTheme.of(context).title2.override(
                    fontFamily: 'Poppins',
                    color: Colors.white,
                    fontSize: 22.0,
                  ),
            ),
            actions: [],
            centerTitle: false,
            elevation: 2.0,
          ),
          body: SafeArea(
            child: GestureDetector(
              onTap: () => FocusScope.of(context).requestFocus(_unfocusNode),
              child: Column(
                mainAxisSize: MainAxisSize.max,
                children: [
                  Padding(
                    padding:
                        EdgeInsetsDirectional.fromSTEB(12.0, 12.0, 12.0, 12.0),
                    child: Row(
                      mainAxisSize: MainAxisSize.max,
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        FaIcon(
                          FontAwesomeIcons.angleLeft,
                          color: Colors.black,
                          size: 24.0,
                        ),
                        Padding(
                          padding: EdgeInsetsDirectional.fromSTEB(
                              0.0, 0.0, 20.0, 0.0),
                          child: Text(
                            'Atras',
                            style: FlutterFlowTheme.of(context).bodyText1,
                          ),
                        ),
                      ],
                    ),
                  ),
                  Row(
                    mainAxisSize: MainAxisSize.max,
                    children: [
                      Padding(
                        padding:
                            EdgeInsetsDirectional.fromSTEB(30.0, 0.0, 0.0, 0.0),
                        child: Text(
                          detalleProductosProductosRecord.nombre!,
                          style: FlutterFlowTheme.of(context).bodyText1,
                        ),
                      ),
                    ],
                  ),
                  Padding(
                    padding:
                        EdgeInsetsDirectional.fromSTEB(0.0, 16.0, 0.0, 0.0),
                    child: Row(
                      mainAxisSize: MainAxisSize.max,
                      children: [
                        Padding(
                          padding: EdgeInsetsDirectional.fromSTEB(
                              30.0, 0.0, 30.0, 0.0),
                          child: Container(
                            width: 370.0,
                            height: 240.0,
                            decoration: BoxDecoration(
                              color: FlutterFlowTheme.of(context)
                                  .secondaryBackground,
                              borderRadius: BorderRadius.circular(16.0),
                            ),
                            child: Image.network(
                              detalleProductosProductosRecord.imagen!,
                              width: 200.0,
                              height: 100.0,
                              fit: BoxFit.cover,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  Padding(
                    padding:
                        EdgeInsetsDirectional.fromSTEB(24.0, 16.0, 24.0, 0.0),
                    child: Row(
                      mainAxisSize: MainAxisSize.max,
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          'Descripcion',
                          style: FlutterFlowTheme.of(context).bodyText1,
                        ),
                        StreamBuilder<List<ProductosRecord>>(
                          stream: queryProductosRecord(
                            singleRecord: true,
                          ),
                          builder: (context, snapshot) {
                            // Customize what your widget looks like when it's loading.
                            if (!snapshot.hasData) {
                              return Center(
                                child: SizedBox(
                                  width: 50.0,
                                  height: 50.0,
                                  child: CircularProgressIndicator(
                                    color: FlutterFlowTheme.of(context)
                                        .primaryColor,
                                  ),
                                ),
                              );
                            }
                            List<ProductosRecord> textProductosRecordList =
                                snapshot.data!;
                            // Return an empty Container when the item does not exist.
                            if (snapshot.data!.isEmpty) {
                              return Container();
                            }
                            final textProductosRecord =
                                textProductosRecordList.isNotEmpty
                                    ? textProductosRecordList.first
                                    : null;
                            return Text(
                              formatNumber(
                                textProductosRecord!.precio!,
                                formatType: FormatType.decimal,
                                decimalType: DecimalType.periodDecimal,
                              ),
                              style: FlutterFlowTheme.of(context).bodyText1,
                            );
                          },
                        ),
                      ],
                    ),
                  ),
                  Padding(
                    padding:
                        EdgeInsetsDirectional.fromSTEB(24.0, 16.0, 24.0, 0.0),
                    child: Row(
                      mainAxisSize: MainAxisSize.max,
                      children: [
                        Text(
                          detalleProductosProductosRecord.descripcion!,
                          style: FlutterFlowTheme.of(context).bodyText1,
                        ),
                      ],
                    ),
                  ),
                  Padding(
                    padding:
                        EdgeInsetsDirectional.fromSTEB(0.0, 20.0, 0.0, 0.0),
                    child: Container(
                      width: 160.0,
                      height: 50.0,
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(25.0),
                        shape: BoxShape.rectangle,
                        border: Border.all(
                          color: Color(0xFF9E9E9E),
                          width: 1.0,
                        ),
                      ),
                      child: FlutterFlowCountController(
                        decrementIconBuilder: (enabled) => FaIcon(
                          FontAwesomeIcons.minus,
                          color:
                              enabled ? Color(0xDD000000) : Color(0xFFEEEEEE),
                          size: 20.0,
                        ),
                        incrementIconBuilder: (enabled) => FaIcon(
                          FontAwesomeIcons.plus,
                          color: enabled ? Colors.blue : Color(0xFFEEEEEE),
                          size: 20.0,
                        ),
                        countBuilder: (count) => Text(
                          count.toString(),
                          style: GoogleFonts.getFont(
                            'Roboto',
                            color: Colors.black,
                            fontWeight: FontWeight.w600,
                            fontSize: 16.0,
                          ),
                        ),
                        count: _model.countControllerValue ??= 1,
                        updateCount: (count) =>
                            setState(() => _model.countControllerValue = count),
                        stepSize: 1,
                        minimum: 1,
                      ),
                    ),
                  ),
                  Padding(
                    padding:
                        EdgeInsetsDirectional.fromSTEB(0.0, 270.0, 0.0, 12.0),
                    child: Container(
                      width: 370.0,
                      height: 100.0,
                      decoration: BoxDecoration(
                        color: Color(0xFFF5F5F5),
                        borderRadius: BorderRadius.circular(30.0),
                      ),
                      child: Padding(
                        padding: EdgeInsetsDirectional.fromSTEB(
                            16.0, 16.0, 16.0, 16.0),
                        child: Row(
                          mainAxisSize: MainAxisSize.max,
                          children: [
                            Column(
                              mainAxisSize: MainAxisSize.max,
                              children: [
                                Row(
                                  mainAxisSize: MainAxisSize.max,
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceAround,
                                  children: [
                                    Text(
                                      'Precio',
                                      style: FlutterFlowTheme.of(context)
                                          .bodyText1,
                                    ),
                                    Padding(
                                      padding: EdgeInsetsDirectional.fromSTEB(
                                          140.0, 12.0, 0.0, 0.0),
                                      child: FFButtonWidget(
                                        onPressed: () {
                                          print('Button pressed ...');
                                        },
                                        text: 'Button',
                                        options: FFButtonOptions(
                                          width: 130.0,
                                          height: 40.0,
                                          padding:
                                              EdgeInsetsDirectional.fromSTEB(
                                                  0.0, 0.0, 0.0, 0.0),
                                          iconPadding:
                                              EdgeInsetsDirectional.fromSTEB(
                                                  0.0, 0.0, 0.0, 0.0),
                                          color: Color(0xFF6D61B2),
                                          textStyle:
                                              FlutterFlowTheme.of(context)
                                                  .subtitle2
                                                  .override(
                                                    fontFamily: 'Poppins',
                                                    color: Colors.white,
                                                  ),
                                          borderSide: BorderSide(
                                            color: Colors.transparent,
                                            width: 1.0,
                                          ),
                                          borderRadius:
                                              BorderRadius.circular(8.0),
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                                Padding(
                                  padding: EdgeInsetsDirectional.fromSTEB(
                                      0.0, 0.0, 269.0, 0.0),
                                  child: Text(
                                    'SubTotal',
                                    style:
                                        FlutterFlowTheme.of(context).bodyText1,
                                  ),
                                ),
                              ],
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
        );
      },
    );
  }
}
