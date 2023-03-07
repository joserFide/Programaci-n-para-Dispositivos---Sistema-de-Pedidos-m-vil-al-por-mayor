import 'dart:async';

import 'index.dart';
import 'serializers.dart';
import 'package:built_value/built_value.dart';

part 'pedidos_record.g.dart';

abstract class PedidosRecord
    implements Built<PedidosRecord, PedidosRecordBuilder> {
  static Serializer<PedidosRecord> get serializer => _$pedidosRecordSerializer;

  String? get numeroPedido;

  String? get estado;

  double? get impuesto;

  DocumentReference? get usuarios;

  @BuiltValueField(wireName: kDocumentReferenceField)
  DocumentReference? get ffRef;
  DocumentReference get reference => ffRef!;

  static void _initializeBuilder(PedidosRecordBuilder builder) => builder
    ..numeroPedido = ''
    ..estado = ''
    ..impuesto = 0.0;

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('pedidos');

  static Stream<PedidosRecord> getDocument(DocumentReference ref) => ref
      .snapshots()
      .map((s) => serializers.deserializeWith(serializer, serializedData(s))!);

  static Future<PedidosRecord> getDocumentOnce(DocumentReference ref) => ref
      .get()
      .then((s) => serializers.deserializeWith(serializer, serializedData(s))!);

  PedidosRecord._();
  factory PedidosRecord([void Function(PedidosRecordBuilder) updates]) =
      _$PedidosRecord;

  static PedidosRecord getDocumentFromData(
          Map<String, dynamic> data, DocumentReference reference) =>
      serializers.deserializeWith(serializer,
          {...mapFromFirestore(data), kDocumentReferenceField: reference})!;
}

Map<String, dynamic> createPedidosRecordData({
  String? numeroPedido,
  String? estado,
  double? impuesto,
  DocumentReference? usuarios,
}) {
  final firestoreData = serializers.toFirestore(
    PedidosRecord.serializer,
    PedidosRecord(
      (p) => p
        ..numeroPedido = numeroPedido
        ..estado = estado
        ..impuesto = impuesto
        ..usuarios = usuarios,
    ),
  );

  return firestoreData;
}
