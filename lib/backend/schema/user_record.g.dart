// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'user_record.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<UserRecord> _$userRecordSerializer = new _$UserRecordSerializer();

class _$UserRecordSerializer implements StructuredSerializer<UserRecord> {
  @override
  final Iterable<Type> types = const [UserRecord, _$UserRecord];
  @override
  final String wireName = 'UserRecord';

  @override
  Iterable<Object?> serialize(Serializers serializers, UserRecord object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[];
    Object? value;
    value = object.email;
    if (value != null) {
      result
        ..add('email')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.uid;
    if (value != null) {
      result
        ..add('uid')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.createdTime;
    if (value != null) {
      result
        ..add('created_time')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(DateTime)));
    }
    value = object.numeroIdentificacion;
    if (value != null) {
      result
        ..add('numeroIdentificacion')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.nombreCompleto;
    if (value != null) {
      result
        ..add('nombreCompleto')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.numeroTelefono;
    if (value != null) {
      result
        ..add('numeroTelefono')
        ..add(serializers.serialize(value, specifiedType: const FullType(int)));
    }
    value = object.nombreEmpresa;
    if (value != null) {
      result
        ..add('nombreEmpresa')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.photoUrl;
    if (value != null) {
      result
        ..add('photo_url')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.displayName;
    if (value != null) {
      result
        ..add('display_name')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.phoneNumber;
    if (value != null) {
      result
        ..add('phone_number')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.direccion;
    if (value != null) {
      result
        ..add('direccion')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
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
  UserRecord deserialize(Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new UserRecordBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current! as String;
      iterator.moveNext();
      final Object? value = iterator.current;
      switch (key) {
        case 'email':
          result.email = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'uid':
          result.uid = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'created_time':
          result.createdTime = serializers.deserialize(value,
              specifiedType: const FullType(DateTime)) as DateTime?;
          break;
        case 'numeroIdentificacion':
          result.numeroIdentificacion = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'nombreCompleto':
          result.nombreCompleto = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'numeroTelefono':
          result.numeroTelefono = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int?;
          break;
        case 'nombreEmpresa':
          result.nombreEmpresa = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'photo_url':
          result.photoUrl = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'display_name':
          result.displayName = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'phone_number':
          result.phoneNumber = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'direccion':
          result.direccion = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
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

class _$UserRecord extends UserRecord {
  @override
  final String? email;
  @override
  final String? uid;
  @override
  final DateTime? createdTime;
  @override
  final String? numeroIdentificacion;
  @override
  final String? nombreCompleto;
  @override
  final int? numeroTelefono;
  @override
  final String? nombreEmpresa;
  @override
  final String? photoUrl;
  @override
  final String? displayName;
  @override
  final String? phoneNumber;
  @override
  final String? direccion;
  @override
  final DocumentReference<Object?>? ffRef;

  factory _$UserRecord([void Function(UserRecordBuilder)? updates]) =>
      (new UserRecordBuilder()..update(updates))._build();

  _$UserRecord._(
      {this.email,
      this.uid,
      this.createdTime,
      this.numeroIdentificacion,
      this.nombreCompleto,
      this.numeroTelefono,
      this.nombreEmpresa,
      this.photoUrl,
      this.displayName,
      this.phoneNumber,
      this.direccion,
      this.ffRef})
      : super._();

  @override
  UserRecord rebuild(void Function(UserRecordBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  UserRecordBuilder toBuilder() => new UserRecordBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is UserRecord &&
        email == other.email &&
        uid == other.uid &&
        createdTime == other.createdTime &&
        numeroIdentificacion == other.numeroIdentificacion &&
        nombreCompleto == other.nombreCompleto &&
        numeroTelefono == other.numeroTelefono &&
        nombreEmpresa == other.nombreEmpresa &&
        photoUrl == other.photoUrl &&
        displayName == other.displayName &&
        phoneNumber == other.phoneNumber &&
        direccion == other.direccion &&
        ffRef == other.ffRef;
  }

  @override
  int get hashCode {
    return $jf($jc(
        $jc(
            $jc(
                $jc(
                    $jc(
                        $jc(
                            $jc(
                                $jc(
                                    $jc(
                                        $jc(
                                            $jc($jc(0, email.hashCode),
                                                uid.hashCode),
                                            createdTime.hashCode),
                                        numeroIdentificacion.hashCode),
                                    nombreCompleto.hashCode),
                                numeroTelefono.hashCode),
                            nombreEmpresa.hashCode),
                        photoUrl.hashCode),
                    displayName.hashCode),
                phoneNumber.hashCode),
            direccion.hashCode),
        ffRef.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'UserRecord')
          ..add('email', email)
          ..add('uid', uid)
          ..add('createdTime', createdTime)
          ..add('numeroIdentificacion', numeroIdentificacion)
          ..add('nombreCompleto', nombreCompleto)
          ..add('numeroTelefono', numeroTelefono)
          ..add('nombreEmpresa', nombreEmpresa)
          ..add('photoUrl', photoUrl)
          ..add('displayName', displayName)
          ..add('phoneNumber', phoneNumber)
          ..add('direccion', direccion)
          ..add('ffRef', ffRef))
        .toString();
  }
}

class UserRecordBuilder implements Builder<UserRecord, UserRecordBuilder> {
  _$UserRecord? _$v;

  String? _email;
  String? get email => _$this._email;
  set email(String? email) => _$this._email = email;

  String? _uid;
  String? get uid => _$this._uid;
  set uid(String? uid) => _$this._uid = uid;

  DateTime? _createdTime;
  DateTime? get createdTime => _$this._createdTime;
  set createdTime(DateTime? createdTime) => _$this._createdTime = createdTime;

  String? _numeroIdentificacion;
  String? get numeroIdentificacion => _$this._numeroIdentificacion;
  set numeroIdentificacion(String? numeroIdentificacion) =>
      _$this._numeroIdentificacion = numeroIdentificacion;

  String? _nombreCompleto;
  String? get nombreCompleto => _$this._nombreCompleto;
  set nombreCompleto(String? nombreCompleto) =>
      _$this._nombreCompleto = nombreCompleto;

  int? _numeroTelefono;
  int? get numeroTelefono => _$this._numeroTelefono;
  set numeroTelefono(int? numeroTelefono) =>
      _$this._numeroTelefono = numeroTelefono;

  String? _nombreEmpresa;
  String? get nombreEmpresa => _$this._nombreEmpresa;
  set nombreEmpresa(String? nombreEmpresa) =>
      _$this._nombreEmpresa = nombreEmpresa;

  String? _photoUrl;
  String? get photoUrl => _$this._photoUrl;
  set photoUrl(String? photoUrl) => _$this._photoUrl = photoUrl;

  String? _displayName;
  String? get displayName => _$this._displayName;
  set displayName(String? displayName) => _$this._displayName = displayName;

  String? _phoneNumber;
  String? get phoneNumber => _$this._phoneNumber;
  set phoneNumber(String? phoneNumber) => _$this._phoneNumber = phoneNumber;

  String? _direccion;
  String? get direccion => _$this._direccion;
  set direccion(String? direccion) => _$this._direccion = direccion;

  DocumentReference<Object?>? _ffRef;
  DocumentReference<Object?>? get ffRef => _$this._ffRef;
  set ffRef(DocumentReference<Object?>? ffRef) => _$this._ffRef = ffRef;

  UserRecordBuilder() {
    UserRecord._initializeBuilder(this);
  }

  UserRecordBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _email = $v.email;
      _uid = $v.uid;
      _createdTime = $v.createdTime;
      _numeroIdentificacion = $v.numeroIdentificacion;
      _nombreCompleto = $v.nombreCompleto;
      _numeroTelefono = $v.numeroTelefono;
      _nombreEmpresa = $v.nombreEmpresa;
      _photoUrl = $v.photoUrl;
      _displayName = $v.displayName;
      _phoneNumber = $v.phoneNumber;
      _direccion = $v.direccion;
      _ffRef = $v.ffRef;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(UserRecord other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$UserRecord;
  }

  @override
  void update(void Function(UserRecordBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  UserRecord build() => _build();

  _$UserRecord _build() {
    final _$result = _$v ??
        new _$UserRecord._(
            email: email,
            uid: uid,
            createdTime: createdTime,
            numeroIdentificacion: numeroIdentificacion,
            nombreCompleto: nombreCompleto,
            numeroTelefono: numeroTelefono,
            nombreEmpresa: nombreEmpresa,
            photoUrl: photoUrl,
            displayName: displayName,
            phoneNumber: phoneNumber,
            direccion: direccion,
            ffRef: ffRef);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,deprecated_member_use_from_same_package,lines_longer_than_80_chars,no_leading_underscores_for_local_identifiers,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new,unnecessary_lambdas
