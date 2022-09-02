// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'entity_orderbook.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

EntityOrderbook _$EntityOrderbookFromJson(Map<String, dynamic> json) {
  return _EntityOrderbook.fromJson(json);
}

/// @nodoc
mixin _$EntityOrderbook {
  @JsonKey(name: 'market')
  String get market => throw _privateConstructorUsedError;
  @JsonKey(name: 'timestamp')
  int get timestamp => throw _privateConstructorUsedError;
  @JsonKey(name: 'total_ask_size')
  double get totalAskSize => throw _privateConstructorUsedError;
  @JsonKey(name: 'total_bid_size')
  double get totalBidSize => throw _privateConstructorUsedError;
  @JsonKey(name: 'orderbook_units')
  List<EntityOrderbookUnit> get orderbookUnits =>
      throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $EntityOrderbookCopyWith<EntityOrderbook> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $EntityOrderbookCopyWith<$Res> {
  factory $EntityOrderbookCopyWith(
          EntityOrderbook value, $Res Function(EntityOrderbook) then) =
      _$EntityOrderbookCopyWithImpl<$Res>;
  $Res call(
      {@JsonKey(name: 'market')
          String market,
      @JsonKey(name: 'timestamp')
          int timestamp,
      @JsonKey(name: 'total_ask_size')
          double totalAskSize,
      @JsonKey(name: 'total_bid_size')
          double totalBidSize,
      @JsonKey(name: 'orderbook_units')
          List<EntityOrderbookUnit> orderbookUnits});
}

/// @nodoc
class _$EntityOrderbookCopyWithImpl<$Res>
    implements $EntityOrderbookCopyWith<$Res> {
  _$EntityOrderbookCopyWithImpl(this._value, this._then);

  final EntityOrderbook _value;
  // ignore: unused_field
  final $Res Function(EntityOrderbook) _then;

  @override
  $Res call({
    Object? market = freezed,
    Object? timestamp = freezed,
    Object? totalAskSize = freezed,
    Object? totalBidSize = freezed,
    Object? orderbookUnits = freezed,
  }) {
    return _then(_value.copyWith(
      market: market == freezed
          ? _value.market
          : market // ignore: cast_nullable_to_non_nullable
              as String,
      timestamp: timestamp == freezed
          ? _value.timestamp
          : timestamp // ignore: cast_nullable_to_non_nullable
              as int,
      totalAskSize: totalAskSize == freezed
          ? _value.totalAskSize
          : totalAskSize // ignore: cast_nullable_to_non_nullable
              as double,
      totalBidSize: totalBidSize == freezed
          ? _value.totalBidSize
          : totalBidSize // ignore: cast_nullable_to_non_nullable
              as double,
      orderbookUnits: orderbookUnits == freezed
          ? _value.orderbookUnits
          : orderbookUnits // ignore: cast_nullable_to_non_nullable
              as List<EntityOrderbookUnit>,
    ));
  }
}

/// @nodoc
abstract class _$$_EntityOrderbookCopyWith<$Res>
    implements $EntityOrderbookCopyWith<$Res> {
  factory _$$_EntityOrderbookCopyWith(
          _$_EntityOrderbook value, $Res Function(_$_EntityOrderbook) then) =
      __$$_EntityOrderbookCopyWithImpl<$Res>;
  @override
  $Res call(
      {@JsonKey(name: 'market')
          String market,
      @JsonKey(name: 'timestamp')
          int timestamp,
      @JsonKey(name: 'total_ask_size')
          double totalAskSize,
      @JsonKey(name: 'total_bid_size')
          double totalBidSize,
      @JsonKey(name: 'orderbook_units')
          List<EntityOrderbookUnit> orderbookUnits});
}

/// @nodoc
class __$$_EntityOrderbookCopyWithImpl<$Res>
    extends _$EntityOrderbookCopyWithImpl<$Res>
    implements _$$_EntityOrderbookCopyWith<$Res> {
  __$$_EntityOrderbookCopyWithImpl(
      _$_EntityOrderbook _value, $Res Function(_$_EntityOrderbook) _then)
      : super(_value, (v) => _then(v as _$_EntityOrderbook));

  @override
  _$_EntityOrderbook get _value => super._value as _$_EntityOrderbook;

  @override
  $Res call({
    Object? market = freezed,
    Object? timestamp = freezed,
    Object? totalAskSize = freezed,
    Object? totalBidSize = freezed,
    Object? orderbookUnits = freezed,
  }) {
    return _then(_$_EntityOrderbook(
      market: market == freezed
          ? _value.market
          : market // ignore: cast_nullable_to_non_nullable
              as String,
      timestamp: timestamp == freezed
          ? _value.timestamp
          : timestamp // ignore: cast_nullable_to_non_nullable
              as int,
      totalAskSize: totalAskSize == freezed
          ? _value.totalAskSize
          : totalAskSize // ignore: cast_nullable_to_non_nullable
              as double,
      totalBidSize: totalBidSize == freezed
          ? _value.totalBidSize
          : totalBidSize // ignore: cast_nullable_to_non_nullable
              as double,
      orderbookUnits: orderbookUnits == freezed
          ? _value._orderbookUnits
          : orderbookUnits // ignore: cast_nullable_to_non_nullable
              as List<EntityOrderbookUnit>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_EntityOrderbook implements _EntityOrderbook {
  _$_EntityOrderbook(
      {@JsonKey(name: 'market')
          required this.market,
      @JsonKey(name: 'timestamp')
          required this.timestamp,
      @JsonKey(name: 'total_ask_size')
          required this.totalAskSize,
      @JsonKey(name: 'total_bid_size')
          required this.totalBidSize,
      @JsonKey(name: 'orderbook_units')
          required final List<EntityOrderbookUnit> orderbookUnits})
      : _orderbookUnits = orderbookUnits;

  factory _$_EntityOrderbook.fromJson(Map<String, dynamic> json) =>
      _$$_EntityOrderbookFromJson(json);

  @override
  @JsonKey(name: 'market')
  final String market;
  @override
  @JsonKey(name: 'timestamp')
  final int timestamp;
  @override
  @JsonKey(name: 'total_ask_size')
  final double totalAskSize;
  @override
  @JsonKey(name: 'total_bid_size')
  final double totalBidSize;
  final List<EntityOrderbookUnit> _orderbookUnits;
  @override
  @JsonKey(name: 'orderbook_units')
  List<EntityOrderbookUnit> get orderbookUnits {
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_orderbookUnits);
  }

  @override
  String toString() {
    return 'EntityOrderbook(market: $market, timestamp: $timestamp, totalAskSize: $totalAskSize, totalBidSize: $totalBidSize, orderbookUnits: $orderbookUnits)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_EntityOrderbook &&
            const DeepCollectionEquality().equals(other.market, market) &&
            const DeepCollectionEquality().equals(other.timestamp, timestamp) &&
            const DeepCollectionEquality()
                .equals(other.totalAskSize, totalAskSize) &&
            const DeepCollectionEquality()
                .equals(other.totalBidSize, totalBidSize) &&
            const DeepCollectionEquality()
                .equals(other._orderbookUnits, _orderbookUnits));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(market),
      const DeepCollectionEquality().hash(timestamp),
      const DeepCollectionEquality().hash(totalAskSize),
      const DeepCollectionEquality().hash(totalBidSize),
      const DeepCollectionEquality().hash(_orderbookUnits));

  @JsonKey(ignore: true)
  @override
  _$$_EntityOrderbookCopyWith<_$_EntityOrderbook> get copyWith =>
      __$$_EntityOrderbookCopyWithImpl<_$_EntityOrderbook>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_EntityOrderbookToJson(
      this,
    );
  }
}

abstract class _EntityOrderbook implements EntityOrderbook {
  factory _EntityOrderbook(
          {@JsonKey(name: 'market')
              required final String market,
          @JsonKey(name: 'timestamp')
              required final int timestamp,
          @JsonKey(name: 'total_ask_size')
              required final double totalAskSize,
          @JsonKey(name: 'total_bid_size')
              required final double totalBidSize,
          @JsonKey(name: 'orderbook_units')
              required final List<EntityOrderbookUnit> orderbookUnits}) =
      _$_EntityOrderbook;

  factory _EntityOrderbook.fromJson(Map<String, dynamic> json) =
      _$_EntityOrderbook.fromJson;

  @override
  @JsonKey(name: 'market')
  String get market;
  @override
  @JsonKey(name: 'timestamp')
  int get timestamp;
  @override
  @JsonKey(name: 'total_ask_size')
  double get totalAskSize;
  @override
  @JsonKey(name: 'total_bid_size')
  double get totalBidSize;
  @override
  @JsonKey(name: 'orderbook_units')
  List<EntityOrderbookUnit> get orderbookUnits;
  @override
  @JsonKey(ignore: true)
  _$$_EntityOrderbookCopyWith<_$_EntityOrderbook> get copyWith =>
      throw _privateConstructorUsedError;
}
