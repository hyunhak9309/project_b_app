// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'entity_orderbook_unit.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

EntityOrderbookUnit _$EntityOrderbookUnitFromJson(Map<String, dynamic> json) {
  return _EntityOrderbookUnit.fromJson(json);
}

/// @nodoc
mixin _$EntityOrderbookUnit {
  @JsonKey(name: 'ask_price')
  double get askPrice => throw _privateConstructorUsedError;
  @JsonKey(name: 'bid_price')
  double get bidPrice => throw _privateConstructorUsedError;
  @JsonKey(name: 'ask_size')
  double get askSize => throw _privateConstructorUsedError;
  @JsonKey(name: 'bid_size')
  double get bidSize => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $EntityOrderbookUnitCopyWith<EntityOrderbookUnit> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $EntityOrderbookUnitCopyWith<$Res> {
  factory $EntityOrderbookUnitCopyWith(
          EntityOrderbookUnit value, $Res Function(EntityOrderbookUnit) then) =
      _$EntityOrderbookUnitCopyWithImpl<$Res>;
  $Res call(
      {@JsonKey(name: 'ask_price') double askPrice,
      @JsonKey(name: 'bid_price') double bidPrice,
      @JsonKey(name: 'ask_size') double askSize,
      @JsonKey(name: 'bid_size') double bidSize});
}

/// @nodoc
class _$EntityOrderbookUnitCopyWithImpl<$Res>
    implements $EntityOrderbookUnitCopyWith<$Res> {
  _$EntityOrderbookUnitCopyWithImpl(this._value, this._then);

  final EntityOrderbookUnit _value;
  // ignore: unused_field
  final $Res Function(EntityOrderbookUnit) _then;

  @override
  $Res call({
    Object? askPrice = freezed,
    Object? bidPrice = freezed,
    Object? askSize = freezed,
    Object? bidSize = freezed,
  }) {
    return _then(_value.copyWith(
      askPrice: askPrice == freezed
          ? _value.askPrice
          : askPrice // ignore: cast_nullable_to_non_nullable
              as double,
      bidPrice: bidPrice == freezed
          ? _value.bidPrice
          : bidPrice // ignore: cast_nullable_to_non_nullable
              as double,
      askSize: askSize == freezed
          ? _value.askSize
          : askSize // ignore: cast_nullable_to_non_nullable
              as double,
      bidSize: bidSize == freezed
          ? _value.bidSize
          : bidSize // ignore: cast_nullable_to_non_nullable
              as double,
    ));
  }
}

/// @nodoc
abstract class _$$_EntityOrderbookUnitCopyWith<$Res>
    implements $EntityOrderbookUnitCopyWith<$Res> {
  factory _$$_EntityOrderbookUnitCopyWith(_$_EntityOrderbookUnit value,
          $Res Function(_$_EntityOrderbookUnit) then) =
      __$$_EntityOrderbookUnitCopyWithImpl<$Res>;
  @override
  $Res call(
      {@JsonKey(name: 'ask_price') double askPrice,
      @JsonKey(name: 'bid_price') double bidPrice,
      @JsonKey(name: 'ask_size') double askSize,
      @JsonKey(name: 'bid_size') double bidSize});
}

/// @nodoc
class __$$_EntityOrderbookUnitCopyWithImpl<$Res>
    extends _$EntityOrderbookUnitCopyWithImpl<$Res>
    implements _$$_EntityOrderbookUnitCopyWith<$Res> {
  __$$_EntityOrderbookUnitCopyWithImpl(_$_EntityOrderbookUnit _value,
      $Res Function(_$_EntityOrderbookUnit) _then)
      : super(_value, (v) => _then(v as _$_EntityOrderbookUnit));

  @override
  _$_EntityOrderbookUnit get _value => super._value as _$_EntityOrderbookUnit;

  @override
  $Res call({
    Object? askPrice = freezed,
    Object? bidPrice = freezed,
    Object? askSize = freezed,
    Object? bidSize = freezed,
  }) {
    return _then(_$_EntityOrderbookUnit(
      askPrice: askPrice == freezed
          ? _value.askPrice
          : askPrice // ignore: cast_nullable_to_non_nullable
              as double,
      bidPrice: bidPrice == freezed
          ? _value.bidPrice
          : bidPrice // ignore: cast_nullable_to_non_nullable
              as double,
      askSize: askSize == freezed
          ? _value.askSize
          : askSize // ignore: cast_nullable_to_non_nullable
              as double,
      bidSize: bidSize == freezed
          ? _value.bidSize
          : bidSize // ignore: cast_nullable_to_non_nullable
              as double,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_EntityOrderbookUnit implements _EntityOrderbookUnit {
  _$_EntityOrderbookUnit(
      {@JsonKey(name: 'ask_price') required this.askPrice,
      @JsonKey(name: 'bid_price') required this.bidPrice,
      @JsonKey(name: 'ask_size') required this.askSize,
      @JsonKey(name: 'bid_size') required this.bidSize});

  factory _$_EntityOrderbookUnit.fromJson(Map<String, dynamic> json) =>
      _$$_EntityOrderbookUnitFromJson(json);

  @override
  @JsonKey(name: 'ask_price')
  final double askPrice;
  @override
  @JsonKey(name: 'bid_price')
  final double bidPrice;
  @override
  @JsonKey(name: 'ask_size')
  final double askSize;
  @override
  @JsonKey(name: 'bid_size')
  final double bidSize;

  @override
  String toString() {
    return 'EntityOrderbookUnit(askPrice: $askPrice, bidPrice: $bidPrice, askSize: $askSize, bidSize: $bidSize)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_EntityOrderbookUnit &&
            const DeepCollectionEquality().equals(other.askPrice, askPrice) &&
            const DeepCollectionEquality().equals(other.bidPrice, bidPrice) &&
            const DeepCollectionEquality().equals(other.askSize, askSize) &&
            const DeepCollectionEquality().equals(other.bidSize, bidSize));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(askPrice),
      const DeepCollectionEquality().hash(bidPrice),
      const DeepCollectionEquality().hash(askSize),
      const DeepCollectionEquality().hash(bidSize));

  @JsonKey(ignore: true)
  @override
  _$$_EntityOrderbookUnitCopyWith<_$_EntityOrderbookUnit> get copyWith =>
      __$$_EntityOrderbookUnitCopyWithImpl<_$_EntityOrderbookUnit>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_EntityOrderbookUnitToJson(
      this,
    );
  }
}

abstract class _EntityOrderbookUnit implements EntityOrderbookUnit {
  factory _EntityOrderbookUnit(
          {@JsonKey(name: 'ask_price') required final double askPrice,
          @JsonKey(name: 'bid_price') required final double bidPrice,
          @JsonKey(name: 'ask_size') required final double askSize,
          @JsonKey(name: 'bid_size') required final double bidSize}) =
      _$_EntityOrderbookUnit;

  factory _EntityOrderbookUnit.fromJson(Map<String, dynamic> json) =
      _$_EntityOrderbookUnit.fromJson;

  @override
  @JsonKey(name: 'ask_price')
  double get askPrice;
  @override
  @JsonKey(name: 'bid_price')
  double get bidPrice;
  @override
  @JsonKey(name: 'ask_size')
  double get askSize;
  @override
  @JsonKey(name: 'bid_size')
  double get bidSize;
  @override
  @JsonKey(ignore: true)
  _$$_EntityOrderbookUnitCopyWith<_$_EntityOrderbookUnit> get copyWith =>
      throw _privateConstructorUsedError;
}
