// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'model_order_record.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

ModelOrderRecord _$ModelOrderRecordFromJson(Map<String, dynamic> json) {
  return _ModelOrderRecord.fromJson(json);
}

/// @nodoc
mixin _$ModelOrderRecord {
  List<EntityOrderResponse> get totalRecord =>
      throw _privateConstructorUsedError;
  List<EntityOrderResponse> get waitingRecord =>
      throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ModelOrderRecordCopyWith<ModelOrderRecord> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ModelOrderRecordCopyWith<$Res> {
  factory $ModelOrderRecordCopyWith(
          ModelOrderRecord value, $Res Function(ModelOrderRecord) then) =
      _$ModelOrderRecordCopyWithImpl<$Res>;
  $Res call(
      {List<EntityOrderResponse> totalRecord,
      List<EntityOrderResponse> waitingRecord});
}

/// @nodoc
class _$ModelOrderRecordCopyWithImpl<$Res>
    implements $ModelOrderRecordCopyWith<$Res> {
  _$ModelOrderRecordCopyWithImpl(this._value, this._then);

  final ModelOrderRecord _value;
  // ignore: unused_field
  final $Res Function(ModelOrderRecord) _then;

  @override
  $Res call({
    Object? totalRecord = freezed,
    Object? waitingRecord = freezed,
  }) {
    return _then(_value.copyWith(
      totalRecord: totalRecord == freezed
          ? _value.totalRecord
          : totalRecord // ignore: cast_nullable_to_non_nullable
              as List<EntityOrderResponse>,
      waitingRecord: waitingRecord == freezed
          ? _value.waitingRecord
          : waitingRecord // ignore: cast_nullable_to_non_nullable
              as List<EntityOrderResponse>,
    ));
  }
}

/// @nodoc
abstract class _$$_ModelOrderRecordCopyWith<$Res>
    implements $ModelOrderRecordCopyWith<$Res> {
  factory _$$_ModelOrderRecordCopyWith(
          _$_ModelOrderRecord value, $Res Function(_$_ModelOrderRecord) then) =
      __$$_ModelOrderRecordCopyWithImpl<$Res>;
  @override
  $Res call(
      {List<EntityOrderResponse> totalRecord,
      List<EntityOrderResponse> waitingRecord});
}

/// @nodoc
class __$$_ModelOrderRecordCopyWithImpl<$Res>
    extends _$ModelOrderRecordCopyWithImpl<$Res>
    implements _$$_ModelOrderRecordCopyWith<$Res> {
  __$$_ModelOrderRecordCopyWithImpl(
      _$_ModelOrderRecord _value, $Res Function(_$_ModelOrderRecord) _then)
      : super(_value, (v) => _then(v as _$_ModelOrderRecord));

  @override
  _$_ModelOrderRecord get _value => super._value as _$_ModelOrderRecord;

  @override
  $Res call({
    Object? totalRecord = freezed,
    Object? waitingRecord = freezed,
  }) {
    return _then(_$_ModelOrderRecord(
      totalRecord: totalRecord == freezed
          ? _value._totalRecord
          : totalRecord // ignore: cast_nullable_to_non_nullable
              as List<EntityOrderResponse>,
      waitingRecord: waitingRecord == freezed
          ? _value._waitingRecord
          : waitingRecord // ignore: cast_nullable_to_non_nullable
              as List<EntityOrderResponse>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_ModelOrderRecord implements _ModelOrderRecord {
  _$_ModelOrderRecord(
      {required final List<EntityOrderResponse> totalRecord,
      required final List<EntityOrderResponse> waitingRecord})
      : _totalRecord = totalRecord,
        _waitingRecord = waitingRecord;

  factory _$_ModelOrderRecord.fromJson(Map<String, dynamic> json) =>
      _$$_ModelOrderRecordFromJson(json);

  final List<EntityOrderResponse> _totalRecord;
  @override
  List<EntityOrderResponse> get totalRecord {
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_totalRecord);
  }

  final List<EntityOrderResponse> _waitingRecord;
  @override
  List<EntityOrderResponse> get waitingRecord {
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_waitingRecord);
  }

  @override
  String toString() {
    return 'ModelOrderRecord(totalRecord: $totalRecord, waitingRecord: $waitingRecord)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_ModelOrderRecord &&
            const DeepCollectionEquality()
                .equals(other._totalRecord, _totalRecord) &&
            const DeepCollectionEquality()
                .equals(other._waitingRecord, _waitingRecord));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(_totalRecord),
      const DeepCollectionEquality().hash(_waitingRecord));

  @JsonKey(ignore: true)
  @override
  _$$_ModelOrderRecordCopyWith<_$_ModelOrderRecord> get copyWith =>
      __$$_ModelOrderRecordCopyWithImpl<_$_ModelOrderRecord>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_ModelOrderRecordToJson(
      this,
    );
  }
}

abstract class _ModelOrderRecord implements ModelOrderRecord {
  factory _ModelOrderRecord(
          {required final List<EntityOrderResponse> totalRecord,
          required final List<EntityOrderResponse> waitingRecord}) =
      _$_ModelOrderRecord;

  factory _ModelOrderRecord.fromJson(Map<String, dynamic> json) =
      _$_ModelOrderRecord.fromJson;

  @override
  List<EntityOrderResponse> get totalRecord;
  @override
  List<EntityOrderResponse> get waitingRecord;
  @override
  @JsonKey(ignore: true)
  _$$_ModelOrderRecordCopyWith<_$_ModelOrderRecord> get copyWith =>
      throw _privateConstructorUsedError;
}
