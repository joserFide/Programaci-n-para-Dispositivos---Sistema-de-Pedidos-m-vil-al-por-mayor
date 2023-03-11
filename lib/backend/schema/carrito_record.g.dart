// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'carrito_record.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<CarritoRecord> _$carritoRecordSerializer =
    new _$CarritoRecordSerializer();

class _$CarritoRecordSerializer implements StructuredSerializer<CarritoRecord> {
  @override
  final Iterable<Type> types = const [CarritoRecord, _$CarritoRecord];
  @override
  final String wireName = 'CarritoRecord';

  @override
  Iterable<Object?> serialize(Serializers serializers, CarritoRecord object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[];
    Object? value;
    value = object.productos;
    if (value != null) {
      result
        ..add('productos')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(
                DocumentReference, const [const FullType.nullable(Object)])));
    }
    value = object.cantidad;
    if (value != null) {
      result
        ..add('cantidad')
        ..add(serializers.serialize(value, specifiedType: const FullType(int)));
    }
    value = object.total;
    if (value != null) {
      result
        ..add('total')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(double)));
    }
    value = object.ffRef;
    if (value != null) {
      result
        ..add('Document__Reference__Field')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(
                DocumentReference, const [const FullType.nullable(Object)])));
    }
    return result;
  }

  @override
  CarritoRecord deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new CarritoRecordBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current! as String;
      iterator.moveNext();
      final Object? value = iterator.current;
      switch (key) {
        case 'productos':
          result.productos = serializers.deserialize(value,
              specifiedType: const FullType(DocumentReference, const [
                const FullType.nullable(Object)
              ])) as DocumentReference<Object?>?;
          break;
        case 'cantidad':
          result.cantidad = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int?;
          break;
        case 'total':
          result.total = serializers.deserialize(value,
              specifiedType: const FullType(double)) as double?;
          break;
        case 'Document__Reference__Field':
          result.ffRef = serializers.deserialize(value,
              specifiedType: const FullType(DocumentReference, const [
                const FullType.nullable(Object)
              ])) as DocumentReference<Object?>?;
          break;
      }
    }

    return result.build();
  }
}

class _$CarritoRecord extends CarritoRecord {
  @override
  final DocumentReference<Object?>? productos;
  @override
  final int? cantidad;
  @override
  final double? total;
  @override
  final DocumentReference<Object?>? ffRef;

  factory _$CarritoRecord([void Function(CarritoRecordBuilder)? updates]) =>
      (new CarritoRecordBuilder()..update(updates))._build();

  _$CarritoRecord._({this.productos, this.cantidad, this.total, this.ffRef})
      : super._();

  @override
  CarritoRecord rebuild(void Function(CarritoRecordBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  CarritoRecordBuilder toBuilder() => new CarritoRecordBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is CarritoRecord &&
        productos == other.productos &&
        cantidad == other.cantidad &&
        total == other.total &&
        ffRef == other.ffRef;
  }

  @override
  int get hashCode {
    return $jf($jc(
        $jc($jc($jc(0, productos.hashCode), cantidad.hashCode), total.hashCode),
        ffRef.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'CarritoRecord')
          ..add('productos', productos)
          ..add('cantidad', cantidad)
          ..add('total', total)
          ..add('ffRef', ffRef))
        .toString();
  }
}

class CarritoRecordBuilder
    implements Builder<CarritoRecord, CarritoRecordBuilder> {
  _$CarritoRecord? _$v;

  DocumentReference<Object?>? _productos;
  DocumentReference<Object?>? get productos => _$this._productos;
  set productos(DocumentReference<Object?>? productos) =>
      _$this._productos = productos;

  int? _cantidad;
  int? get cantidad => _$this._cantidad;
  set cantidad(int? cantidad) => _$this._cantidad = cantidad;

  double? _total;
  double? get total => _$this._total;
  set total(double? total) => _$this._total = total;

  DocumentReference<Object?>? _ffRef;
  DocumentReference<Object?>? get ffRef => _$this._ffRef;
  set ffRef(DocumentReference<Object?>? ffRef) => _$this._ffRef = ffRef;

  CarritoRecordBuilder() {
    CarritoRecord._initializeBuilder(this);
  }

  CarritoRecordBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _productos = $v.productos;
      _cantidad = $v.cantidad;
      _total = $v.total;
      _ffRef = $v.ffRef;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(CarritoRecord other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$CarritoRecord;
  }

  @override
  void update(void Function(CarritoRecordBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  CarritoRecord build() => _build();

  _$CarritoRecord _build() {
    final _$result = _$v ??
        new _$CarritoRecord._(
            productos: productos,
            cantidad: cantidad,
            total: total,
            ffRef: ffRef);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,deprecated_member_use_from_same_package,lines_longer_than_80_chars,no_leading_underscores_for_local_identifiers,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new,unnecessary_lambdas
