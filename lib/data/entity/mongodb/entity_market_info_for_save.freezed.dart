// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'entity_market_info_for_save.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

EntityMarketInfoForSave _$EntityMarketInfoForSaveFromJson(
    Map<String, dynamic> json) {
  return _EntityMarketInfoForSave.fromJson(json);
}

/// @nodoc
mixin _$EntityMarketInfoForSave {
  @JsonKey(name: 'market_info')
  List<dynamic> get marketInfo => throw _privateConstructorUsedError;
  @TimestampConverter()
  @JsonKey(name: 'time')
  DateTime get time => throw _privateConstructorUsedError;
  @ObjectIdConverter()
  @JsonKey(name: '_id')
  ObjectId? get id => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $EntityMarketInfoForSaveCopyWith<EntityMarketInfoForSave> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $EntityMarketInfoForSaveCopyWith<$Res> {
  factory $EntityMarketInfoForSaveCopyWith(EntityMarketInfoForSave value,
          $Res Function(EntityMarketInfoForSave) then) =
      _$EntityMarketInfoForSaveCopyWithImpl<$Res>;
  $Res call(
      {@JsonKey(name: 'market_info') List<dynamic> marketInfo,
      @TimestampConverter() @JsonKey(name: 'time') DateTime time,
      @ObjectIdConverter() @JsonKey(name: '_id') ObjectId? id});
}

/// @nodoc
class _$EntityMarketInfoForSaveCopyWithImpl<$Res>
    implements $EntityMarketInfoForSaveCopyWith<$Res> {
  _$EntityMarketInfoForSaveCopyWithImpl(this._value, this._then);

  final EntityMarketInfoForSave _value;
  // ignore: unused_field
  final $Res Function(EntityMarketInfoForSave) _then;

  @override
  $Res call({
    Object? marketInfo = freezed,
    Object? time = freezed,
    Object? id = freezed,
  }) {
    return _then(_value.copyWith(
      marketInfo: marketInfo == freezed
          ? _value.marketInfo
          : marketInfo // ignore: cast_nullable_to_non_nullable
              as List<dynamic>,
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
abstract class _$$_EntityMarketInfoForSaveCopyWith<$Res>
    implements $EntityMarketInfoForSaveCopyWith<$Res> {
  factory _$$_EntityMarketInfoForSaveCopyWith(_$_EntityMarketInfoForSave value,
          $Res Function(_$_EntityMarketInfoForSave) then) =
      __$$_EntityMarketInfoForSaveCopyWithImpl<$Res>;
  @override
  $Res call(
      {@JsonKey(name: 'market_info') List<dynamic> marketInfo,
      @TimestampConverter() @JsonKey(name: 'time') DateTime time,
      @ObjectIdConverter() @JsonKey(name: '_id') ObjectId? id});
}

/// @nodoc
class __$$_EntityMarketInfoForSaveCopyWithImpl<$Res>
    extends _$EntityMarketInfoForSaveCopyWithImpl<$Res>
    implements _$$_EntityMarketInfoForSaveCopyWith<$Res> {
  __$$_EntityMarketInfoForSaveCopyWithImpl(_$_EntityMarketInfoForSave _value,
      $Res Function(_$_EntityMarketInfoForSave) _then)
      : super(_value, (v) => _then(v as _$_EntityMarketInfoForSave));

  @override
  _$_EntityMarketInfoForSave get _value =>
      super._value as _$_EntityMarketInfoForSave;

  @override
  $Res call({
    Object? marketInfo = freezed,
    Object? time = freezed,
    Object? id = freezed,
  }) {
    return _then(_$_EntityMarketInfoForSave(
      marketInfo: marketInfo == freezed
          ? _value._marketInfo
          : marketInfo // ignore: cast_nullable_to_non_nullable
              as List<dynamic>,
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
class _$_EntityMarketInfoForSave implements _EntityMarketInfoForSave {
  _$_EntityMarketInfoForSave(
      {@JsonKey(name: 'market_info') required final List<dynamic> marketInfo,
      @TimestampConverter() @JsonKey(name: 'time') required this.time,
      @ObjectIdConverter() @JsonKey(name: '_id') required this.id})
      : _marketInfo = marketInfo;

  factory _$_EntityMarketInfoForSave.fromJson(Map<String, dynamic> json) =>
      _$$_EntityMarketInfoForSaveFromJson(json);

  final List<dynamic> _marketInfo;
  @override
  @JsonKey(name: 'market_info')
  List<dynamic> get marketInfo {
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_marketInfo);
  }

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
    return 'EntityMarketInfoForSave(marketInfo: $marketInfo, time: $time, id: $id)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_EntityMarketInfoForSave &&
            const DeepCollectionEquality()
                .equals(other._marketInfo, _marketInfo) &&
            const DeepCollectionEquality().equals(other.time, time) &&
            const DeepCollectionEquality().equals(other.id, id));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(_marketInfo),
      const DeepCollectionEquality().hash(time),
      const DeepCollectionEquality().hash(id));

  @JsonKey(ignore: true)
  @override
  _$$_EntityMarketInfoForSaveCopyWith<_$_EntityMarketInfoForSave>
      get copyWith =>
          __$$_EntityMarketInfoForSaveCopyWithImpl<_$_EntityMarketInfoForSave>(
              this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_EntityMarketInfoForSaveToJson(
      this,
    );
  }
}

abstract class _EntityMarketInfoForSave implements EntityMarketInfoForSave {
  factory _EntityMarketInfoForSave(
      {@JsonKey(name: 'market_info')
          required final List<dynamic> marketInfo,
      @TimestampConverter()
      @JsonKey(name: 'time')
          required final DateTime time,
      @ObjectIdConverter()
      @JsonKey(name: '_id')
          required final ObjectId? id}) = _$_EntityMarketInfoForSave;

  factory _EntityMarketInfoForSave.fromJson(Map<String, dynamic> json) =
      _$_EntityMarketInfoForSave.fromJson;

  @override
  @JsonKey(name: 'market_info')
  List<dynamic> get marketInfo;
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
  _$$_EntityMarketInfoForSaveCopyWith<_$_EntityMarketInfoForSave>
      get copyWith => throw _privateConstructorUsedError;
}
