// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'entity_current_asset.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

EntityCurrentAsset _$EntityCurrentAssetFromJson(Map<String, dynamic> json) {
  return _EntityCurrentAsset.fromJson(json);
}

/// @nodoc
mixin _$EntityCurrentAsset {
  @JsonKey(name: 'total_amount')
  double get totalAmount => throw _privateConstructorUsedError;
  @TimestampConverter()
  @JsonKey(name: 'time')
  DateTime get time => throw _privateConstructorUsedError;
  @ObjectIdConverter()
  @JsonKey(name: '_id')
  ObjectId? get id => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $EntityCurrentAssetCopyWith<EntityCurrentAsset> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $EntityCurrentAssetCopyWith<$Res> {
  factory $EntityCurrentAssetCopyWith(
          EntityCurrentAsset value, $Res Function(EntityCurrentAsset) then) =
      _$EntityCurrentAssetCopyWithImpl<$Res>;
  $Res call(
      {@JsonKey(name: 'total_amount') double totalAmount,
      @TimestampConverter() @JsonKey(name: 'time') DateTime time,
      @ObjectIdConverter() @JsonKey(name: '_id') ObjectId? id});
}

/// @nodoc
class _$EntityCurrentAssetCopyWithImpl<$Res>
    implements $EntityCurrentAssetCopyWith<$Res> {
  _$EntityCurrentAssetCopyWithImpl(this._value, this._then);

  final EntityCurrentAsset _value;
  // ignore: unused_field
  final $Res Function(EntityCurrentAsset) _then;

  @override
  $Res call({
    Object? totalAmount = freezed,
    Object? time = freezed,
    Object? id = freezed,
  }) {
    return _then(_value.copyWith(
      totalAmount: totalAmount == freezed
          ? _value.totalAmount
          : totalAmount // ignore: cast_nullable_to_non_nullable
              as double,
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
abstract class _$$_EntityCurrentAssetCopyWith<$Res>
    implements $EntityCurrentAssetCopyWith<$Res> {
  factory _$$_EntityCurrentAssetCopyWith(_$_EntityCurrentAsset value,
          $Res Function(_$_EntityCurrentAsset) then) =
      __$$_EntityCurrentAssetCopyWithImpl<$Res>;
  @override
  $Res call(
      {@JsonKey(name: 'total_amount') double totalAmount,
      @TimestampConverter() @JsonKey(name: 'time') DateTime time,
      @ObjectIdConverter() @JsonKey(name: '_id') ObjectId? id});
}

/// @nodoc
class __$$_EntityCurrentAssetCopyWithImpl<$Res>
    extends _$EntityCurrentAssetCopyWithImpl<$Res>
    implements _$$_EntityCurrentAssetCopyWith<$Res> {
  __$$_EntityCurrentAssetCopyWithImpl(
      _$_EntityCurrentAsset _value, $Res Function(_$_EntityCurrentAsset) _then)
      : super(_value, (v) => _then(v as _$_EntityCurrentAsset));

  @override
  _$_EntityCurrentAsset get _value => super._value as _$_EntityCurrentAsset;

  @override
  $Res call({
    Object? totalAmount = freezed,
    Object? time = freezed,
    Object? id = freezed,
  }) {
    return _then(_$_EntityCurrentAsset(
      totalAmount: totalAmount == freezed
          ? _value.totalAmount
          : totalAmount // ignore: cast_nullable_to_non_nullable
              as double,
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
class _$_EntityCurrentAsset implements _EntityCurrentAsset {
  _$_EntityCurrentAsset(
      {@JsonKey(name: 'total_amount') required this.totalAmount,
      @TimestampConverter() @JsonKey(name: 'time') required this.time,
      @ObjectIdConverter() @JsonKey(name: '_id') required this.id});

  factory _$_EntityCurrentAsset.fromJson(Map<String, dynamic> json) =>
      _$$_EntityCurrentAssetFromJson(json);

  @override
  @JsonKey(name: 'total_amount')
  final double totalAmount;
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
    return 'EntityCurrentAsset(totalAmount: $totalAmount, time: $time, id: $id)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_EntityCurrentAsset &&
            const DeepCollectionEquality()
                .equals(other.totalAmount, totalAmount) &&
            const DeepCollectionEquality().equals(other.time, time) &&
            const DeepCollectionEquality().equals(other.id, id));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(totalAmount),
      const DeepCollectionEquality().hash(time),
      const DeepCollectionEquality().hash(id));

  @JsonKey(ignore: true)
  @override
  _$$_EntityCurrentAssetCopyWith<_$_EntityCurrentAsset> get copyWith =>
      __$$_EntityCurrentAssetCopyWithImpl<_$_EntityCurrentAsset>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_EntityCurrentAssetToJson(
      this,
    );
  }
}

abstract class _EntityCurrentAsset implements EntityCurrentAsset {
  factory _EntityCurrentAsset(
      {@JsonKey(name: 'total_amount')
          required final double totalAmount,
      @TimestampConverter()
      @JsonKey(name: 'time')
          required final DateTime time,
      @ObjectIdConverter()
      @JsonKey(name: '_id')
          required final ObjectId? id}) = _$_EntityCurrentAsset;

  factory _EntityCurrentAsset.fromJson(Map<String, dynamic> json) =
      _$_EntityCurrentAsset.fromJson;

  @override
  @JsonKey(name: 'total_amount')
  double get totalAmount;
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
  _$$_EntityCurrentAssetCopyWith<_$_EntityCurrentAsset> get copyWith =>
      throw _privateConstructorUsedError;
}
