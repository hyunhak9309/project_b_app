// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'entity_error.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

EntityError _$EntityErrorFromJson(Map<String, dynamic> json) {
  return _EntityError.fromJson(json);
}

/// @nodoc
mixin _$EntityError {
  @JsonKey(name: 'total_amount')
  String get error => throw _privateConstructorUsedError;
  @TimestampConverter()
  @JsonKey(name: 'time')
  DateTime get time => throw _privateConstructorUsedError;
  @ObjectIdConverter()
  @JsonKey(name: '_id')
  ObjectId? get id => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $EntityErrorCopyWith<EntityError> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $EntityErrorCopyWith<$Res> {
  factory $EntityErrorCopyWith(
          EntityError value, $Res Function(EntityError) then) =
      _$EntityErrorCopyWithImpl<$Res>;
  $Res call(
      {@JsonKey(name: 'total_amount') String error,
      @TimestampConverter() @JsonKey(name: 'time') DateTime time,
      @ObjectIdConverter() @JsonKey(name: '_id') ObjectId? id});
}

/// @nodoc
class _$EntityErrorCopyWithImpl<$Res> implements $EntityErrorCopyWith<$Res> {
  _$EntityErrorCopyWithImpl(this._value, this._then);

  final EntityError _value;
  // ignore: unused_field
  final $Res Function(EntityError) _then;

  @override
  $Res call({
    Object? error = freezed,
    Object? time = freezed,
    Object? id = freezed,
  }) {
    return _then(_value.copyWith(
      error: error == freezed
          ? _value.error
          : error // ignore: cast_nullable_to_non_nullable
              as String,
      time: time == freezed
          ? _value.time
          : time // ignore: cast_nullable_to_non_nullable
              as DateTime,
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as ObjectId?,
    ));
  }
}

/// @nodoc
abstract class _$$_EntityErrorCopyWith<$Res>
    implements $EntityErrorCopyWith<$Res> {
  factory _$$_EntityErrorCopyWith(
          _$_EntityError value, $Res Function(_$_EntityError) then) =
      __$$_EntityErrorCopyWithImpl<$Res>;
  @override
  $Res call(
      {@JsonKey(name: 'total_amount') String error,
      @TimestampConverter() @JsonKey(name: 'time') DateTime time,
      @ObjectIdConverter() @JsonKey(name: '_id') ObjectId? id});
}

/// @nodoc
class __$$_EntityErrorCopyWithImpl<$Res> extends _$EntityErrorCopyWithImpl<$Res>
    implements _$$_EntityErrorCopyWith<$Res> {
  __$$_EntityErrorCopyWithImpl(
      _$_EntityError _value, $Res Function(_$_EntityError) _then)
      : super(_value, (v) => _then(v as _$_EntityError));

  @override
  _$_EntityError get _value => super._value as _$_EntityError;

  @override
  $Res call({
    Object? error = freezed,
    Object? time = freezed,
    Object? id = freezed,
  }) {
    return _then(_$_EntityError(
      error: error == freezed
          ? _value.error
          : error // ignore: cast_nullable_to_non_nullable
              as String,
      time: time == freezed
          ? _value.time
          : time // ignore: cast_nullable_to_non_nullable
              as DateTime,
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as ObjectId?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_EntityError implements _EntityError {
  _$_EntityError(
      {@JsonKey(name: 'total_amount') required this.error,
      @TimestampConverter() @JsonKey(name: 'time') required this.time,
      @ObjectIdConverter() @JsonKey(name: '_id') required this.id});

  factory _$_EntityError.fromJson(Map<String, dynamic> json) =>
      _$$_EntityErrorFromJson(json);

  @override
  @JsonKey(name: 'total_amount')
  final String error;
  @override
  @TimestampConverter()
  @JsonKey(name: 'time')
  final DateTime time;
  @override
  @ObjectIdConverter()
  @JsonKey(name: '_id')
  final ObjectId? id;

  @override
  String toString() {
    return 'EntityError(error: $error, time: $time, id: $id)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_EntityError &&
            const DeepCollectionEquality().equals(other.error, error) &&
            const DeepCollectionEquality().equals(other.time, time) &&
            const DeepCollectionEquality().equals(other.id, id));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(error),
      const DeepCollectionEquality().hash(time),
      const DeepCollectionEquality().hash(id));

  @JsonKey(ignore: true)
  @override
  _$$_EntityErrorCopyWith<_$_EntityError> get copyWith =>
      __$$_EntityErrorCopyWithImpl<_$_EntityError>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_EntityErrorToJson(
      this,
    );
  }
}

abstract class _EntityError implements EntityError {
  factory _EntityError(
      {@JsonKey(name: 'total_amount')
          required final String error,
      @TimestampConverter()
      @JsonKey(name: 'time')
          required final DateTime time,
      @ObjectIdConverter()
      @JsonKey(name: '_id')
          required final ObjectId? id}) = _$_EntityError;

  factory _EntityError.fromJson(Map<String, dynamic> json) =
      _$_EntityError.fromJson;

  @override
  @JsonKey(name: 'total_amount')
  String get error;
  @override
  @TimestampConverter()
  @JsonKey(name: 'time')
  DateTime get time;
  @override
  @ObjectIdConverter()
  @JsonKey(name: '_id')
  ObjectId? get id;
  @override
  @JsonKey(ignore: true)
  _$$_EntityErrorCopyWith<_$_EntityError> get copyWith =>
      throw _privateConstructorUsedError;
}
