// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'pedidos_record.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<PedidosRecord> _$pedidosRecordSerializer =
    new _$PedidosRecordSerializer();

class _$PedidosRecordSerializer implements StructuredSerializer<PedidosRecord> {
  @override
  final Iterable<Type> types = const [PedidosRecord, _$PedidosRecord];
  @override
  final String wireName = 'PedidosRecord';

  @override
  Iterable<Object?> serialize(Serializers serializers, PedidosRecord object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[];
    Object? value;
    value = object.numeroPedido;
    if (value != null) {
      result
        ..add('numeroPedido')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.estado;
    if (value != null) {
      result
        ..add('estado')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.impuesto;
    if (value != null) {
      result
        ..add('impuesto')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(double)));
    }
    value = object.usuarios;
    if (value != null) {
      result
        ..add('usuarios')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(
                DocumentReference, const [const FullType.nullable(Object)])));
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
  PedidosRecord deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new PedidosRecordBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current! as String;
      iterator.moveNext();
      final Object? value = iterator.current;
      switch (key) {
        case 'numeroPedido':
          result.numeroPedido = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'estado':
          result.estado = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'impuesto':
          result.impuesto = serializers.deserialize(value,
              specifiedType: const FullType(double)) as double?;
          break;
        case 'usuarios':
          result.usuarios = serializers.deserialize(value,
              specifiedType: const FullType(DocumentReference, const [
                const FullType.nullable(Object)
              ])) as DocumentReference<Object?>?;
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

class _$PedidosRecord extends PedidosRecord {
  @override
  final String? numeroPedido;
  @override
  final String? estado;
  @override
  final double? impuesto;
  @override
  final DocumentReference<Object?>? usuarios;
  @override
  final DocumentReference<Object?>? ffRef;

  factory _$PedidosRecord([void Function(PedidosRecordBuilder)? updates]) =>
      (new PedidosRecordBuilder()..update(updates))._build();

  _$PedidosRecord._(
      {this.numeroPedido,
      this.estado,
      this.impuesto,
      this.usuarios,
      this.ffRef})
      : super._();

  @override
  PedidosRecord rebuild(void Function(PedidosRecordBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  PedidosRecordBuilder toBuilder() => new PedidosRecordBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is PedidosRecord &&
        numeroPedido == other.numeroPedido &&
        estado == other.estado &&
        impuesto == other.impuesto &&
        usuarios == other.usuarios &&
        ffRef == other.ffRef;
  }

  @override
  int get hashCode {
    return $jf($jc(
        $jc(
            $jc($jc($jc(0, numeroPedido.hashCode), estado.hashCode),
                impuesto.hashCode),
            usuarios.hashCode),
        ffRef.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'PedidosRecord')
          ..add('numeroPedido', numeroPedido)
          ..add('estado', estado)
          ..add('impuesto', impuesto)
          ..add('usuarios', usuarios)
          ..add('ffRef', ffRef))
        .toString();
  }
}

class PedidosRecordBuilder
    implements Builder<PedidosRecord, PedidosRecordBuilder> {
  _$PedidosRecord? _$v;

  String? _numeroPedido;
  String? get numeroPedido => _$this._numeroPedido;
  set numeroPedido(String? numeroPedido) => _$this._numeroPedido = numeroPedido;

  String? _estado;
  String? get estado => _$this._estado;
  set estado(String? estado) => _$this._estado = estado;

  double? _impuesto;
  double? get impuesto => _$this._impuesto;
  set impuesto(double? impuesto) => _$this._impuesto = impuesto;

  DocumentReference<Object?>? _usuarios;
  DocumentReference<Object?>? get usuarios => _$this._usuarios;
  set usuarios(DocumentReference<Object?>? usuarios) =>
      _$this._usuarios = usuarios;

  DocumentReference<Object?>? _ffRef;
  DocumentReference<Object?>? get ffRef => _$this._ffRef;
  set ffRef(DocumentReference<Object?>? ffRef) => _$this._ffRef = ffRef;

  PedidosRecordBuilder() {
    PedidosRecord._initializeBuilder(this);
  }

  PedidosRecordBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _numeroPedido = $v.numeroPedido;
      _estado = $v.estado;
      _impuesto = $v.impuesto;
      _usuarios = $v.usuarios;
      _ffRef = $v.ffRef;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(PedidosRecord other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$PedidosRecord;
  }

  @override
  void update(void Function(PedidosRecordBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  PedidosRecord build() => _build();

  _$PedidosRecord _build() {
    final _$result = _$v ??
        new _$PedidosRecord._(
            numeroPedido: numeroPedido,
            estado: estado,
            impuesto: impuesto,
            usuarios: usuarios,
            ffRef: ffRef);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,deprecated_member_use_from_same_package,lines_longer_than_80_chars,no_leading_underscores_for_local_identifiers,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new,unnecessary_lambdas
