// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'entity_order_response.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

EntityOrderResponse _$EntityOrderResponseFromJson(Map<String, dynamic> json) {
  return _EntityOrderResponse.fromJson(json);
}

/// @nodoc
mixin _$EntityOrderResponse {
  @JsonKey(name: 'uuid')
  String get uuid => throw _privateConstructorUsedError;
  @JsonKey(name: 'side')
  String get side => throw _privateConstructorUsedError;
  @JsonKey(name: 'ord_type')
  String get ordType => throw _privateConstructorUsedError;
  @JsonKey(name: 'price')
  String get price => throw _privateConstructorUsedError;
  @JsonKey(name: 'state')
  String get state => throw _privateConstructorUsedError;
  @JsonKey(name: 'created_at')
  String get createdAt => throw _privateConstructorUsedError;
  @JsonKey(name: 'volume')
  String get volume => throw _privateConstructorUsedError;
  @JsonKey(name: 'market')
  String get market => throw _privateConstructorUsedError;
  @JsonKey(name: 'remaining_volume')
  String get remainingVolume => throw _privateConstructorUsedError;
  @JsonKey(name: 'reserved_fee')
  String get reservedFee => throw _privateConstructorUsedError;
  @JsonKey(name: 'remaining_fee')
  String get remainingFee => throw _privateConstructorUsedError;
  @JsonKey(name: 'paid_fee')
  String get paidFee => throw _privateConstructorUsedError;
  @JsonKey(name: 'locked')
  String get locked => throw _privateConstructorUsedError;
  @JsonKey(name: 'executed_volume')
  String get executedVolume => throw _privateConstructorUsedError;
  @JsonKey(name: 'trades_count')
  int get tradesCount => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $EntityOrderResponseCopyWith<EntityOrderResponse> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $EntityOrderResponseCopyWith<$Res> {
  factory $EntityOrderResponseCopyWith(
          EntityOrderResponse value, $Res Function(EntityOrderResponse) then) =
      _$EntityOrderResponseCopyWithImpl<$Res>;
  $Res call(
      {@JsonKey(name: 'uuid') String uuid,
      @JsonKey(name: 'side') String side,
      @JsonKey(name: 'ord_type') String ordType,
      @JsonKey(name: 'price') String price,
      @JsonKey(name: 'state') String state,
      @JsonKey(name: 'created_at') String createdAt,
      @JsonKey(name: 'volume') String volume,
      @JsonKey(name: 'market') String market,
      @JsonKey(name: 'remaining_volume') String remainingVolume,
      @JsonKey(name: 'reserved_fee') String reservedFee,
      @JsonKey(name: 'remaining_fee') String remainingFee,
      @JsonKey(name: 'paid_fee') String paidFee,
      @JsonKey(name: 'locked') String locked,
      @JsonKey(name: 'executed_volume') String executedVolume,
      @JsonKey(name: 'trades_count') int tradesCount});
}

/// @nodoc
class _$EntityOrderResponseCopyWithImpl<$Res>
    implements $EntityOrderResponseCopyWith<$Res> {
  _$EntityOrderResponseCopyWithImpl(this._value, this._then);

  final EntityOrderResponse _value;
  // ignore: unused_field
  final $Res Function(EntityOrderResponse) _then;

  @override
  $Res call({
    Object? uuid = freezed,
    Object? side = freezed,
    Object? ordType = freezed,
    Object? price = freezed,
    Object? state = freezed,
    Object? createdAt = freezed,
    Object? volume = freezed,
    Object? market = freezed,
    Object? remainingVolume = freezed,
    Object? reservedFee = freezed,
    Object? remainingFee = freezed,
    Object? paidFee = freezed,
    Object? locked = freezed,
    Object? executedVolume = freezed,
    Object? tradesCount = freezed,
  }) {
    return _then(_value.copyWith(
      uuid: uuid == freezed
          ? _value.uuid
          : uuid // ignore: cast_nullable_to_non_nullable
              as String,
      side: side == freezed
          ? _value.side
          : side // ignore: cast_nullable_to_non_nullable
              as String,
      ordType: ordType == freezed
          ? _value.ordType
          : ordType // ignore: cast_nullable_to_non_nullable
              as String,
      price: price == freezed
          ? _value.price
          : price // ignore: cast_nullable_to_non_nullable
              as String,
      state: state == freezed
          ? _value.state
          : state // ignore: cast_nullable_to_non_nullable
              as String,
      createdAt: createdAt == freezed
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as String,
      volume: volume == freezed
          ? _value.volume
          : volume // ignore: cast_nullable_to_non_nullable
              as String,
      market: market == freezed
          ? _value.market
          : market // ignore: cast_nullable_to_non_nullable
              as String,
      remainingVolume: remainingVolume == freezed
          ? _value.remainingVolume
          : remainingVolume // ignore: cast_nullable_to_non_nullable
              as String,
      reservedFee: reservedFee == freezed
          ? _value.reservedFee
          : reservedFee // ignore: cast_nullable_to_non_nullable
              as String,
      remainingFee: remainingFee == freezed
          ? _value.remainingFee
          : remainingFee // ignore: cast_nullable_to_non_nullable
              as String,
      paidFee: paidFee == freezed
          ? _value.paidFee
          : paidFee // ignore: cast_nullable_to_non_nullable
              as String,
      locked: locked == freezed
          ? _value.locked
          : locked // ignore: cast_nullable_to_non_nullable
              as String,
      executedVolume: executedVolume == freezed
          ? _value.executedVolume
          : executedVolume // ignore: cast_nullable_to_non_nullable
              as String,
      tradesCount: tradesCount == freezed
          ? _value.tradesCount
          : tradesCount // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc
abstract class _$$_EntityOrderResponseCopyWith<$Res>
    implements $EntityOrderResponseCopyWith<$Res> {
  factory _$$_EntityOrderResponseCopyWith(_$_EntityOrderResponse value,
          $Res Function(_$_EntityOrderResponse) then) =
      __$$_EntityOrderResponseCopyWithImpl<$Res>;
  @override
  $Res call(
      {@JsonKey(name: 'uuid') String uuid,
      @JsonKey(name: 'side') String side,
      @JsonKey(name: 'ord_type') String ordType,
      @JsonKey(name: 'price') String price,
      @JsonKey(name: 'state') String state,
      @JsonKey(name: 'created_at') String createdAt,
      @JsonKey(name: 'volume') String volume,
      @JsonKey(name: 'market') String market,
      @JsonKey(name: 'remaining_volume') String remainingVolume,
      @JsonKey(name: 'reserved_fee') String reservedFee,
      @JsonKey(name: 'remaining_fee') String remainingFee,
      @JsonKey(name: 'paid_fee') String paidFee,
      @JsonKey(name: 'locked') String locked,
      @JsonKey(name: 'executed_volume') String executedVolume,
      @JsonKey(name: 'trades_count') int tradesCount});
}

/// @nodoc
class __$$_EntityOrderResponseCopyWithImpl<$Res>
    extends _$EntityOrderResponseCopyWithImpl<$Res>
    implements _$$_EntityOrderResponseCopyWith<$Res> {
  __$$_EntityOrderResponseCopyWithImpl(_$_EntityOrderResponse _value,
      $Res Function(_$_EntityOrderResponse) _then)
      : super(_value, (v) => _then(v as _$_EntityOrderResponse));

  @override
  _$_EntityOrderResponse get _value => super._value as _$_EntityOrderResponse;

  @override
  $Res call({
    Object? uuid = freezed,
    Object? side = freezed,
    Object? ordType = freezed,
    Object? price = freezed,
    Object? state = freezed,
    Object? createdAt = freezed,
    Object? volume = freezed,
    Object? market = freezed,
    Object? remainingVolume = freezed,
    Object? reservedFee = freezed,
    Object? remainingFee = freezed,
    Object? paidFee = freezed,
    Object? locked = freezed,
    Object? executedVolume = freezed,
    Object? tradesCount = freezed,
  }) {
    return _then(_$_EntityOrderResponse(
      uuid: uuid == freezed
          ? _value.uuid
          : uuid // ignore: cast_nullable_to_non_nullable
              as String,
      side: side == freezed
          ? _value.side
          : side // ignore: cast_nullable_to_non_nullable
              as String,
      ordType: ordType == freezed
          ? _value.ordType
          : ordType // ignore: cast_nullable_to_non_nullable
              as String,
      price: price == freezed
          ? _value.price
          : price // ignore: cast_nullable_to_non_nullable
              as String,
      state: state == freezed
          ? _value.state
          : state // ignore: cast_nullable_to_non_nullable
              as String,
      createdAt: createdAt == freezed
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as String,
      volume: volume == freezed
          ? _value.volume
          : volume // ignore: cast_nullable_to_non_nullable
              as String,
      market: market == freezed
          ? _value.market
          : market // ignore: cast_nullable_to_non_nullable
              as String,
      remainingVolume: remainingVolume == freezed
          ? _value.remainingVolume
          : remainingVolume // ignore: cast_nullable_to_non_nullable
              as String,
      reservedFee: reservedFee == freezed
          ? _value.reservedFee
          : reservedFee // ignore: cast_nullable_to_non_nullable
              as String,
      remainingFee: remainingFee == freezed
          ? _value.remainingFee
          : remainingFee // ignore: cast_nullable_to_non_nullable
              as String,
      paidFee: paidFee == freezed
          ? _value.paidFee
          : paidFee // ignore: cast_nullable_to_non_nullable
              as String,
      locked: locked == freezed
          ? _value.locked
          : locked // ignore: cast_nullable_to_non_nullable
              as String,
      executedVolume: executedVolume == freezed
          ? _value.executedVolume
          : executedVolume // ignore: cast_nullable_to_non_nullable
              as String,
      tradesCount: tradesCount == freezed
          ? _value.tradesCount
          : tradesCount // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_EntityOrderResponse implements _EntityOrderResponse {
  _$_EntityOrderResponse(
      {@JsonKey(name: 'uuid') required this.uuid,
      @JsonKey(name: 'side') required this.side,
      @JsonKey(name: 'ord_type') required this.ordType,
      @JsonKey(name: 'price') required this.price,
      @JsonKey(name: 'state') required this.state,
      @JsonKey(name: 'created_at') required this.createdAt,
      @JsonKey(name: 'volume') required this.volume,
      @JsonKey(name: 'market') required this.market,
      @JsonKey(name: 'remaining_volume') required this.remainingVolume,
      @JsonKey(name: 'reserved_fee') required this.reservedFee,
      @JsonKey(name: 'remaining_fee') required this.remainingFee,
      @JsonKey(name: 'paid_fee') required this.paidFee,
      @JsonKey(name: 'locked') required this.locked,
      @JsonKey(name: 'executed_volume') required this.executedVolume,
      @JsonKey(name: 'trades_count') required this.tradesCount});

  factory _$_EntityOrderResponse.fromJson(Map<String, dynamic> json) =>
      _$$_EntityOrderResponseFromJson(json);

  @override
  @JsonKey(name: 'uuid')
  final String uuid;
  @override
  @JsonKey(name: 'side')
  final String side;
  @override
  @JsonKey(name: 'ord_type')
  final String ordType;
  @override
  @JsonKey(name: 'price')
  final String price;
  @override
  @JsonKey(name: 'state')
  final String state;
  @override
  @JsonKey(name: 'created_at')
  final String createdAt;
  @override
  @JsonKey(name: 'volume')
  final String volume;
  @override
  @JsonKey(name: 'market')
  final String market;
  @override
  @JsonKey(name: 'remaining_volume')
  final String remainingVolume;
  @override
  @JsonKey(name: 'reserved_fee')
  final String reservedFee;
  @override
  @JsonKey(name: 'remaining_fee')
  final String remainingFee;
  @override
  @JsonKey(name: 'paid_fee')
  final String paidFee;
  @override
  @JsonKey(name: 'locked')
  final String locked;
  @override
  @JsonKey(name: 'executed_volume')
  final String executedVolume;
  @override
  @JsonKey(name: 'trades_count')
  final int tradesCount;

  @override
  String toString() {
    return 'EntityOrderResponse(uuid: $uuid, side: $side, ordType: $ordType, price: $price, state: $state, createdAt: $createdAt, volume: $volume, market: $market, remainingVolume: $remainingVolume, reservedFee: $reservedFee, remainingFee: $remainingFee, paidFee: $paidFee, locked: $locked, executedVolume: $executedVolume, tradesCount: $tradesCount)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_EntityOrderResponse &&
            const DeepCollectionEquality().equals(other.uuid, uuid) &&
            const DeepCollectionEquality().equals(other.side, side) &&
            const DeepCollectionEquality().equals(other.ordType, ordType) &&
            const DeepCollectionEquality().equals(other.price, price) &&
            const DeepCollectionEquality().equals(other.state, state) &&
            const DeepCollectionEquality().equals(other.createdAt, createdAt) &&
            const DeepCollectionEquality().equals(other.volume, volume) &&
            const DeepCollectionEquality().equals(other.market, market) &&
            const DeepCollectionEquality()
                .equals(other.remainingVolume, remainingVolume) &&
            const DeepCollectionEquality()
                .equals(other.reservedFee, reservedFee) &&
            const DeepCollectionEquality()
                .equals(other.remainingFee, remainingFee) &&
            const DeepCollectionEquality().equals(other.paidFee, paidFee) &&
            const DeepCollectionEquality().equals(other.locked, locked) &&
            const DeepCollectionEquality()
                .equals(other.executedVolume, executedVolume) &&
            const DeepCollectionEquality()
                .equals(other.tradesCount, tradesCount));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(uuid),
      const DeepCollectionEquality().hash(side),
      const DeepCollectionEquality().hash(ordType),
      const DeepCollectionEquality().hash(price),
      const DeepCollectionEquality().hash(state),
      const DeepCollectionEquality().hash(createdAt),
      const DeepCollectionEquality().hash(volume),
      const DeepCollectionEquality().hash(market),
      const DeepCollectionEquality().hash(remainingVolume),
      const DeepCollectionEquality().hash(reservedFee),
      const DeepCollectionEquality().hash(remainingFee),
      const DeepCollectionEquality().hash(paidFee),
      const DeepCollectionEquality().hash(locked),
      const DeepCollectionEquality().hash(executedVolume),
      const DeepCollectionEquality().hash(tradesCount));

  @JsonKey(ignore: true)
  @override
  _$$_EntityOrderResponseCopyWith<_$_EntityOrderResponse> get copyWith =>
      __$$_EntityOrderResponseCopyWithImpl<_$_EntityOrderResponse>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_EntityOrderResponseToJson(
      this,
    );
  }
}

abstract class _EntityOrderResponse implements EntityOrderResponse {
  factory _EntityOrderResponse(
      {@JsonKey(name: 'uuid')
          required final String uuid,
      @JsonKey(name: 'side')
          required final String side,
      @JsonKey(name: 'ord_type')
          required final String ordType,
      @JsonKey(name: 'price')
          required final String price,
      @JsonKey(name: 'state')
          required final String state,
      @JsonKey(name: 'created_at')
          required final String createdAt,
      @JsonKey(name: 'volume')
          required final String volume,
      @JsonKey(name: 'market')
          required final String market,
      @JsonKey(name: 'remaining_volume')
          required final String remainingVolume,
      @JsonKey(name: 'reserved_fee')
          required final String reservedFee,
      @JsonKey(name: 'remaining_fee')
          required final String remainingFee,
      @JsonKey(name: 'paid_fee')
          required final String paidFee,
      @JsonKey(name: 'locked')
          required final String locked,
      @JsonKey(name: 'executed_volume')
          required final String executedVolume,
      @JsonKey(name: 'trades_count')
          required final int tradesCount}) = _$_EntityOrderResponse;

  factory _EntityOrderResponse.fromJson(Map<String, dynamic> json) =
      _$_EntityOrderResponse.fromJson;

  @override
  @JsonKey(name: 'uuid')
  String get uuid;
  @override
  @JsonKey(name: 'side')
  String get side;
  @override
  @JsonKey(name: 'ord_type')
  String get ordType;
  @override
  @JsonKey(name: 'price')
  String get price;
  @override
  @JsonKey(name: 'state')
  String get state;
  @override
  @JsonKey(name: 'created_at')
  String get createdAt;
  @override
  @JsonKey(name: 'volume')
  String get volume;
  @override
  @JsonKey(name: 'market')
  String get market;
  @override
  @JsonKey(name: 'remaining_volume')
  String get remainingVolume;
  @override
  @JsonKey(name: 'reserved_fee')
  String get reservedFee;
  @override
  @JsonKey(name: 'remaining_fee')
  String get remainingFee;
  @override
  @JsonKey(name: 'paid_fee')
  String get paidFee;
  @override
  @JsonKey(name: 'locked')
  String get locked;
  @override
  @JsonKey(name: 'executed_volume')
  String get executedVolume;
  @override
  @JsonKey(name: 'trades_count')
  int get tradesCount;
  @override
  @JsonKey(ignore: true)
  _$$_EntityOrderResponseCopyWith<_$_EntityOrderResponse> get copyWith =>
      throw _privateConstructorUsedError;
}
