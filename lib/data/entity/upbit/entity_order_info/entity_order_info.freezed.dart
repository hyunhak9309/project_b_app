// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'entity_order_info.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

EntityOrderInfo _$EntityOrderInfoFromJson(Map<String, dynamic> json) {
  return _EntityOrderInfo.fromJson(json);
}

/// @nodoc
mixin _$EntityOrderInfo {
  @JsonKey(name: 'bid_fee')
  String get bidFee => throw _privateConstructorUsedError;
  @JsonKey(name: 'ask_fee')
  String get askFee => throw _privateConstructorUsedError;
  @JsonKey(name: 'market')
  EntityOrderInfoMarket get market => throw _privateConstructorUsedError;
  @JsonKey(name: 'bid_account')
  EntityOrderInfoBidAccount get bidAccount =>
      throw _privateConstructorUsedError;
  @JsonKey(name: 'ask_account')
  EntityOrderInfoAskAccount get askAccount =>
      throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $EntityOrderInfoCopyWith<EntityOrderInfo> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $EntityOrderInfoCopyWith<$Res> {
  factory $EntityOrderInfoCopyWith(
          EntityOrderInfo value, $Res Function(EntityOrderInfo) then) =
      _$EntityOrderInfoCopyWithImpl<$Res>;
  $Res call(
      {@JsonKey(name: 'bid_fee') String bidFee,
      @JsonKey(name: 'ask_fee') String askFee,
      @JsonKey(name: 'market') EntityOrderInfoMarket market,
      @JsonKey(name: 'bid_account') EntityOrderInfoBidAccount bidAccount,
      @JsonKey(name: 'ask_account') EntityOrderInfoAskAccount askAccount});

  $EntityOrderInfoMarketCopyWith<$Res> get market;
  $EntityOrderInfoBidAccountCopyWith<$Res> get bidAccount;
  $EntityOrderInfoAskAccountCopyWith<$Res> get askAccount;
}

/// @nodoc
class _$EntityOrderInfoCopyWithImpl<$Res>
    implements $EntityOrderInfoCopyWith<$Res> {
  _$EntityOrderInfoCopyWithImpl(this._value, this._then);

  final EntityOrderInfo _value;
  // ignore: unused_field
  final $Res Function(EntityOrderInfo) _then;

  @override
  $Res call({
    Object? bidFee = freezed,
    Object? askFee = freezed,
    Object? market = freezed,
    Object? bidAccount = freezed,
    Object? askAccount = freezed,
  }) {
    return _then(_value.copyWith(
      bidFee: bidFee == freezed
          ? _value.bidFee
          : bidFee // ignore: cast_nullable_to_non_nullable
              as String,
      askFee: askFee == freezed
          ? _value.askFee
          : askFee // ignore: cast_nullable_to_non_nullable
              as String,
      market: market == freezed
          ? _value.market
          : market // ignore: cast_nullable_to_non_nullable
              as EntityOrderInfoMarket,
      bidAccount: bidAccount == freezed
          ? _value.bidAccount
          : bidAccount // ignore: cast_nullable_to_non_nullable
              as EntityOrderInfoBidAccount,
      askAccount: askAccount == freezed
          ? _value.askAccount
          : askAccount // ignore: cast_nullable_to_non_nullable
              as EntityOrderInfoAskAccount,
    ));
  }

  @override
  $EntityOrderInfoMarketCopyWith<$Res> get market {
    return $EntityOrderInfoMarketCopyWith<$Res>(_value.market, (value) {
      return _then(_value.copyWith(market: value));
    });
  }

  @override
  $EntityOrderInfoBidAccountCopyWith<$Res> get bidAccount {
    return $EntityOrderInfoBidAccountCopyWith<$Res>(_value.bidAccount, (value) {
      return _then(_value.copyWith(bidAccount: value));
    });
  }

  @override
  $EntityOrderInfoAskAccountCopyWith<$Res> get askAccount {
    return $EntityOrderInfoAskAccountCopyWith<$Res>(_value.askAccount, (value) {
      return _then(_value.copyWith(askAccount: value));
    });
  }
}

/// @nodoc
abstract class _$$_EntityOrderInfoCopyWith<$Res>
    implements $EntityOrderInfoCopyWith<$Res> {
  factory _$$_EntityOrderInfoCopyWith(
          _$_EntityOrderInfo value, $Res Function(_$_EntityOrderInfo) then) =
      __$$_EntityOrderInfoCopyWithImpl<$Res>;
  @override
  $Res call(
      {@JsonKey(name: 'bid_fee') String bidFee,
      @JsonKey(name: 'ask_fee') String askFee,
      @JsonKey(name: 'market') EntityOrderInfoMarket market,
      @JsonKey(name: 'bid_account') EntityOrderInfoBidAccount bidAccount,
      @JsonKey(name: 'ask_account') EntityOrderInfoAskAccount askAccount});

  @override
  $EntityOrderInfoMarketCopyWith<$Res> get market;
  @override
  $EntityOrderInfoBidAccountCopyWith<$Res> get bidAccount;
  @override
  $EntityOrderInfoAskAccountCopyWith<$Res> get askAccount;
}

/// @nodoc
class __$$_EntityOrderInfoCopyWithImpl<$Res>
    extends _$EntityOrderInfoCopyWithImpl<$Res>
    implements _$$_EntityOrderInfoCopyWith<$Res> {
  __$$_EntityOrderInfoCopyWithImpl(
      _$_EntityOrderInfo _value, $Res Function(_$_EntityOrderInfo) _then)
      : super(_value, (v) => _then(v as _$_EntityOrderInfo));

  @override
  _$_EntityOrderInfo get _value => super._value as _$_EntityOrderInfo;

  @override
  $Res call({
    Object? bidFee = freezed,
    Object? askFee = freezed,
    Object? market = freezed,
    Object? bidAccount = freezed,
    Object? askAccount = freezed,
  }) {
    return _then(_$_EntityOrderInfo(
      bidFee: bidFee == freezed
          ? _value.bidFee
          : bidFee // ignore: cast_nullable_to_non_nullable
              as String,
      askFee: askFee == freezed
          ? _value.askFee
          : askFee // ignore: cast_nullable_to_non_nullable
              as String,
      market: market == freezed
          ? _value.market
          : market // ignore: cast_nullable_to_non_nullable
              as EntityOrderInfoMarket,
      bidAccount: bidAccount == freezed
          ? _value.bidAccount
          : bidAccount // ignore: cast_nullable_to_non_nullable
              as EntityOrderInfoBidAccount,
      askAccount: askAccount == freezed
          ? _value.askAccount
          : askAccount // ignore: cast_nullable_to_non_nullable
              as EntityOrderInfoAskAccount,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_EntityOrderInfo implements _EntityOrderInfo {
  _$_EntityOrderInfo(
      {@JsonKey(name: 'bid_fee') required this.bidFee,
      @JsonKey(name: 'ask_fee') required this.askFee,
      @JsonKey(name: 'market') required this.market,
      @JsonKey(name: 'bid_account') required this.bidAccount,
      @JsonKey(name: 'ask_account') required this.askAccount});

  factory _$_EntityOrderInfo.fromJson(Map<String, dynamic> json) =>
      _$$_EntityOrderInfoFromJson(json);

  @override
  @JsonKey(name: 'bid_fee')
  final String bidFee;
  @override
  @JsonKey(name: 'ask_fee')
  final String askFee;
  @override
  @JsonKey(name: 'market')
  final EntityOrderInfoMarket market;
  @override
  @JsonKey(name: 'bid_account')
  final EntityOrderInfoBidAccount bidAccount;
  @override
  @JsonKey(name: 'ask_account')
  final EntityOrderInfoAskAccount askAccount;

  @override
  String toString() {
    return 'EntityOrderInfo(bidFee: $bidFee, askFee: $askFee, market: $market, bidAccount: $bidAccount, askAccount: $askAccount)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_EntityOrderInfo &&
            const DeepCollectionEquality().equals(other.bidFee, bidFee) &&
            const DeepCollectionEquality().equals(other.askFee, askFee) &&
            const DeepCollectionEquality().equals(other.market, market) &&
            const DeepCollectionEquality()
                .equals(other.bidAccount, bidAccount) &&
            const DeepCollectionEquality()
                .equals(other.askAccount, askAccount));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(bidFee),
      const DeepCollectionEquality().hash(askFee),
      const DeepCollectionEquality().hash(market),
      const DeepCollectionEquality().hash(bidAccount),
      const DeepCollectionEquality().hash(askAccount));

  @JsonKey(ignore: true)
  @override
  _$$_EntityOrderInfoCopyWith<_$_EntityOrderInfo> get copyWith =>
      __$$_EntityOrderInfoCopyWithImpl<_$_EntityOrderInfo>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_EntityOrderInfoToJson(
      this,
    );
  }
}

abstract class _EntityOrderInfo implements EntityOrderInfo {
  factory _EntityOrderInfo(
          {@JsonKey(name: 'bid_fee')
              required final String bidFee,
          @JsonKey(name: 'ask_fee')
              required final String askFee,
          @JsonKey(name: 'market')
              required final EntityOrderInfoMarket market,
          @JsonKey(name: 'bid_account')
              required final EntityOrderInfoBidAccount bidAccount,
          @JsonKey(name: 'ask_account')
              required final EntityOrderInfoAskAccount askAccount}) =
      _$_EntityOrderInfo;

  factory _EntityOrderInfo.fromJson(Map<String, dynamic> json) =
      _$_EntityOrderInfo.fromJson;

  @override
  @JsonKey(name: 'bid_fee')
  String get bidFee;
  @override
  @JsonKey(name: 'ask_fee')
  String get askFee;
  @override
  @JsonKey(name: 'market')
  EntityOrderInfoMarket get market;
  @override
  @JsonKey(name: 'bid_account')
  EntityOrderInfoBidAccount get bidAccount;
  @override
  @JsonKey(name: 'ask_account')
  EntityOrderInfoAskAccount get askAccount;
  @override
  @JsonKey(ignore: true)
  _$$_EntityOrderInfoCopyWith<_$_EntityOrderInfo> get copyWith =>
      throw _privateConstructorUsedError;
}
