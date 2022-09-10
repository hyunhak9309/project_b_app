// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'entity_order_info_market_bid.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

EntityOrderInfoMarketBid _$EntityOrderInfoMarketBidFromJson(
    Map<String, dynamic> json) {
  return _EntityOrderInfoMarketBid.fromJson(json);
}

/// @nodoc
mixin _$EntityOrderInfoMarketBid {
  @JsonKey(name: 'currency')
  String get currency => throw _privateConstructorUsedError;
  @JsonKey(name: 'min_total')
  String get minTotal => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $EntityOrderInfoMarketBidCopyWith<EntityOrderInfoMarketBid> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $EntityOrderInfoMarketBidCopyWith<$Res> {
  factory $EntityOrderInfoMarketBidCopyWith(EntityOrderInfoMarketBid value,
          $Res Function(EntityOrderInfoMarketBid) then) =
      _$EntityOrderInfoMarketBidCopyWithImpl<$Res>;
  $Res call(
      {@JsonKey(name: 'currency') String currency,
      @JsonKey(name: 'min_total') String minTotal});
}

/// @nodoc
class _$EntityOrderInfoMarketBidCopyWithImpl<$Res>
    implements $EntityOrderInfoMarketBidCopyWith<$Res> {
  _$EntityOrderInfoMarketBidCopyWithImpl(this._value, this._then);

  final EntityOrderInfoMarketBid _value;
  // ignore: unused_field
  final $Res Function(EntityOrderInfoMarketBid) _then;

  @override
  $Res call({
    Object? currency = freezed,
    Object? minTotal = freezed,
  }) {
    return _then(_value.copyWith(
      currency: currency == freezed
          ? _value.currency
          : currency // ignore: cast_nullable_to_non_nullable
              as String,
      minTotal: minTotal == freezed
          ? _value.minTotal
          : minTotal // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
abstract class _$$_EntityOrderInfoMarketBidCopyWith<$Res>
    implements $EntityOrderInfoMarketBidCopyWith<$Res> {
  factory _$$_EntityOrderInfoMarketBidCopyWith(
          _$_EntityOrderInfoMarketBid value,
          $Res Function(_$_EntityOrderInfoMarketBid) then) =
      __$$_EntityOrderInfoMarketBidCopyWithImpl<$Res>;
  @override
  $Res call(
      {@JsonKey(name: 'currency') String currency,
      @JsonKey(name: 'min_total') String minTotal});
}

/// @nodoc
class __$$_EntityOrderInfoMarketBidCopyWithImpl<$Res>
    extends _$EntityOrderInfoMarketBidCopyWithImpl<$Res>
    implements _$$_EntityOrderInfoMarketBidCopyWith<$Res> {
  __$$_EntityOrderInfoMarketBidCopyWithImpl(_$_EntityOrderInfoMarketBid _value,
      $Res Function(_$_EntityOrderInfoMarketBid) _then)
      : super(_value, (v) => _then(v as _$_EntityOrderInfoMarketBid));

  @override
  _$_EntityOrderInfoMarketBid get _value =>
      super._value as _$_EntityOrderInfoMarketBid;

  @override
  $Res call({
    Object? currency = freezed,
    Object? minTotal = freezed,
  }) {
    return _then(_$_EntityOrderInfoMarketBid(
      currency: currency == freezed
          ? _value.currency
          : currency // ignore: cast_nullable_to_non_nullable
              as String,
      minTotal: minTotal == freezed
          ? _value.minTotal
          : minTotal // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_EntityOrderInfoMarketBid implements _EntityOrderInfoMarketBid {
  _$_EntityOrderInfoMarketBid(
      {@JsonKey(name: 'currency') required this.currency,
      @JsonKey(name: 'min_total') required this.minTotal});

  factory _$_EntityOrderInfoMarketBid.fromJson(Map<String, dynamic> json) =>
      _$$_EntityOrderInfoMarketBidFromJson(json);

  @override
  @JsonKey(name: 'currency')
  final String currency;
  @override
  @JsonKey(name: 'min_total')
  final String minTotal;

  @override
  String toString() {
    return 'EntityOrderInfoMarketBid(currency: $currency, minTotal: $minTotal)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_EntityOrderInfoMarketBid &&
            const DeepCollectionEquality().equals(other.currency, currency) &&
            const DeepCollectionEquality().equals(other.minTotal, minTotal));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(currency),
      const DeepCollectionEquality().hash(minTotal));

  @JsonKey(ignore: true)
  @override
  _$$_EntityOrderInfoMarketBidCopyWith<_$_EntityOrderInfoMarketBid>
      get copyWith => __$$_EntityOrderInfoMarketBidCopyWithImpl<
          _$_EntityOrderInfoMarketBid>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_EntityOrderInfoMarketBidToJson(
      this,
    );
  }
}

abstract class _EntityOrderInfoMarketBid implements EntityOrderInfoMarketBid {
  factory _EntityOrderInfoMarketBid(
          {@JsonKey(name: 'currency') required final String currency,
          @JsonKey(name: 'min_total') required final String minTotal}) =
      _$_EntityOrderInfoMarketBid;

  factory _EntityOrderInfoMarketBid.fromJson(Map<String, dynamic> json) =
      _$_EntityOrderInfoMarketBid.fromJson;

  @override
  @JsonKey(name: 'currency')
  String get currency;
  @override
  @JsonKey(name: 'min_total')
  String get minTotal;
  @override
  @JsonKey(ignore: true)
  _$$_EntityOrderInfoMarketBidCopyWith<_$_EntityOrderInfoMarketBid>
      get copyWith => throw _privateConstructorUsedError;
}
