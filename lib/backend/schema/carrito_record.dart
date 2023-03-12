import 'dart:async';

import 'index.dart';
import 'serializers.dart';
import 'package:built_value/built_value.dart';

part 'carrito_record.g.dart';

abstract class CarritoRecord
    implements Built<CarritoRecord, CarritoRecordBuilder> {
  static Serializer<CarritoRecord> get serializer => _$carritoRecordSerializer;

  DocumentReference? get productos;

  int? get cantidad;

  double? get total;

  @BuiltValueField(wireName: kDocumentReferenceField)
  DocumentReference? get ffRef;
  DocumentReference get reference => ffRef!;

  static void _initializeBuilder(CarritoRecordBuilder builder) => builder
    ..cantidad = 0
    ..total = 0.0;

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('carrito');

  static Stream<CarritoRecord> getDocument(DocumentReference ref) => ref
      .snapshots()
      .map((s) => serializers.deserializeWith(serializer, serializedData(s))!);

  static Future<CarritoRecord> getDocumentOnce(DocumentReference ref) => ref
      .get()
      .then((s) => serializers.deserializeWith(serializer, serializedData(s))!);

  CarritoRecord._();
  factory CarritoRecord([void Function(CarritoRecordBuilder) updates]) =
      _$CarritoRecord;

  static CarritoRecord getDocumentFromData(
          Map<String, dynamic> data, DocumentReference reference) =>
      serializers.deserializeWith(serializer,
          {...mapFromFirestore(data), kDocumentReferenceField: reference})!;
}

Map<String, dynamic> createCarritoRecordData({
  DocumentReference? productos,
  int? cantidad,
  double? total,
}) {
  final firestoreData = serializers.toFirestore(
    CarritoRecord.serializer,
    CarritoRecord(
      (c) => c
        ..productos = productos
        ..cantidad = cantidad
        ..total = total,
    ),
  );

  return firestoreData;
}
