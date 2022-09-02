// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'entity_withdraw_info_account.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

EntityWithdrawInfoAccount _$EntityWithdrawInfoAccountFromJson(
    Map<String, dynamic> json) {
  return _EntityWithdrawInfoAccount.fromJson(json);
}

/// @nodoc
mixin _$EntityWithdrawInfoAccount {
  @JsonKey(name: 'currency')
  String get currency => throw _privateConstructorUsedError;
  @JsonKey(name: 'balance')
  String get balance => throw _privateConstructorUsedError;
  @JsonKey(name: 'locked')
  String get locked => throw _privateConstructorUsedError;
  @JsonKey(name: 'avg_buy_price')
  String get avgBuyPrice => throw _privateConstructorUsedError;
  @JsonKey(name: 'avg_buy_price_modified')
  bool get avgBuyPriceModified => throw _privateConstructorUsedError;
  @JsonKey(name: 'unit_currency')
  String get unitCurrency => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $EntityWithdrawInfoAccountCopyWith<EntityWithdrawInfoAccount> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $EntityWithdrawInfoAccountCopyWith<$Res> {
  factory $EntityWithdrawInfoAccountCopyWith(EntityWithdrawInfoAccount value,
          $Res Function(EntityWithdrawInfoAccount) then) =
      _$EntityWithdrawInfoAccountCopyWithImpl<$Res>;
  $Res call(
      {@JsonKey(name: 'currency') String currency,
      @JsonKey(name: 'balance') String balance,
      @JsonKey(name: 'locked') String locked,
      @JsonKey(name: 'avg_buy_price') String avgBuyPrice,
      @JsonKey(name: 'avg_buy_price_modified') bool avgBuyPriceModified,
      @JsonKey(name: 'unit_currency') String unitCurrency});
}

/// @nodoc
class _$EntityWithdrawInfoAccountCopyWithImpl<$Res>
    implements $EntityWithdrawInfoAccountCopyWith<$Res> {
  _$EntityWithdrawInfoAccountCopyWithImpl(this._value, this._then);

  final EntityWithdrawInfoAccount _value;
  // ignore: unused_field
  final $Res Function(EntityWithdrawInfoAccount) _then;

  @override
  $Res call({
    Object? currency = freezed,
    Object? balance = freezed,
    Object? locked = freezed,
    Object? avgBuyPrice = freezed,
    Object? avgBuyPriceModified = freezed,
    Object? unitCurrency = freezed,
  }) {
    return _then(_value.copyWith(
      currency: currency == freezed
          ? _value.currency
          : currency // ignore: cast_nullable_to_non_nullable
              as String,
      balance: balance == freezed
          ? _value.balance
          : balance // ignore: cast_nullable_to_non_nullable
              as String,
      locked: locked == freezed
          ? _value.locked
          : locked // ignore: cast_nullable_to_non_nullable
              as String,
      avgBuyPrice: avgBuyPrice == freezed
          ? _value.avgBuyPrice
          : avgBuyPrice // ignore: cast_nullable_to_non_nullable
              as String,
      avgBuyPriceModified: avgBuyPriceModified == freezed
          ? _value.avgBuyPriceModified
          : avgBuyPriceModified // ignore: cast_nullable_to_non_nullable
              as bool,
      unitCurrency: unitCurrency == freezed
          ? _value.unitCurrency
          : unitCurrency // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
abstract class _$$_EntityWithdrawInfoAccountCopyWith<$Res>
    implements $EntityWithdrawInfoAccountCopyWith<$Res> {
  factory _$$_EntityWithdrawInfoAccountCopyWith(
          _$_EntityWithdrawInfoAccount value,
          $Res Function(_$_EntityWithdrawInfoAccount) then) =
      __$$_EntityWithdrawInfoAccountCopyWithImpl<$Res>;
  @override
  $Res call(
      {@JsonKey(name: 'currency') String currency,
      @JsonKey(name: 'balance') String balance,
      @JsonKey(name: 'locked') String locked,
      @JsonKey(name: 'avg_buy_price') String avgBuyPrice,
      @JsonKey(name: 'avg_buy_price_modified') bool avgBuyPriceModified,
      @JsonKey(name: 'unit_currency') String unitCurrency});
}

/// @nodoc
class __$$_EntityWithdrawInfoAccountCopyWithImpl<$Res>
    extends _$EntityWithdrawInfoAccountCopyWithImpl<$Res>
    implements _$$_EntityWithdrawInfoAccountCopyWith<$Res> {
  __$$_EntityWithdrawInfoAccountCopyWithImpl(
      _$_EntityWithdrawInfoAccount _value,
      $Res Function(_$_EntityWithdrawInfoAccount) _then)
      : super(_value, (v) => _then(v as _$_EntityWithdrawInfoAccount));

  @override
  _$_EntityWithdrawInfoAccount get _value =>
      super._value as _$_EntityWithdrawInfoAccount;

  @override
  $Res call({
    Object? currency = freezed,
    Object? balance = freezed,
    Object? locked = freezed,
    Object? avgBuyPrice = freezed,
    Object? avgBuyPriceModified = freezed,
    Object? unitCurrency = freezed,
  }) {
    return _then(_$_EntityWithdrawInfoAccount(
      currency: currency == freezed
          ? _value.currency
          : currency // ignore: cast_nullable_to_non_nullable
              as String,
      balance: balance == freezed
          ? _value.balance
          : balance // ignore: cast_nullable_to_non_nullable
              as String,
      locked: locked == freezed
          ? _value.locked
          : locked // ignore: cast_nullable_to_non_nullable
              as String,
      avgBuyPrice: avgBuyPrice == freezed
          ? _value.avgBuyPrice
          : avgBuyPrice // ignore: cast_nullable_to_non_nullable
              as String,
      avgBuyPriceModified: avgBuyPriceModified == freezed
          ? _value.avgBuyPriceModified
          : avgBuyPriceModified // ignore: cast_nullable_to_non_nullable
              as bool,
      unitCurrency: unitCurrency == freezed
          ? _value.unitCurrency
          : unitCurrency // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_EntityWithdrawInfoAccount implements _EntityWithdrawInfoAccount {
  _$_EntityWithdrawInfoAccount(
      {@JsonKey(name: 'currency')
          required this.currency,
      @JsonKey(name: 'balance')
          required this.balance,
      @JsonKey(name: 'locked')
          required this.locked,
      @JsonKey(name: 'avg_buy_price')
          required this.avgBuyPrice,
      @JsonKey(name: 'avg_buy_price_modified')
          required this.avgBuyPriceModified,
      @JsonKey(name: 'unit_currency')
          required this.unitCurrency});

  factory _$_EntityWithdrawInfoAccount.fromJson(Map<String, dynamic> json) =>
      _$$_EntityWithdrawInfoAccountFromJson(json);

  @override
  @JsonKey(name: 'currency')
  final String currency;
  @override
  @JsonKey(name: 'balance')
  final String balance;
  @override
  @JsonKey(name: 'locked')
  final String locked;
  @override
  @JsonKey(name: 'avg_buy_price')
  final String avgBuyPrice;
  @override
  @JsonKey(name: 'avg_buy_price_modified')
  final bool avgBuyPriceModified;
  @override
  @JsonKey(name: 'unit_currency')
  final String unitCurrency;

  @override
  String toString() {
    return 'EntityWithdrawInfoAccount(currency: $currency, balance: $balance, locked: $locked, avgBuyPrice: $avgBuyPrice, avgBuyPriceModified: $avgBuyPriceModified, unitCurrency: $unitCurrency)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_EntityWithdrawInfoAccount &&
            const DeepCollectionEquality().equals(other.currency, currency) &&
            const DeepCollectionEquality().equals(other.balance, balance) &&
            const DeepCollectionEquality().equals(other.locked, locked) &&
            const DeepCollectionEquality()
                .equals(other.avgBuyPrice, avgBuyPrice) &&
            const DeepCollectionEquality()
                .equals(other.avgBuyPriceModified, avgBuyPriceModified) &&
            const DeepCollectionEquality()
                .equals(other.unitCurrency, unitCurrency));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(currency),
      const DeepCollectionEquality().hash(balance),
      const DeepCollectionEquality().hash(locked),
      const DeepCollectionEquality().hash(avgBuyPrice),
      const DeepCollectionEquality().hash(avgBuyPriceModified),
      const DeepCollectionEquality().hash(unitCurrency));

  @JsonKey(ignore: true)
  @override
  _$$_EntityWithdrawInfoAccountCopyWith<_$_EntityWithdrawInfoAccount>
      get copyWith => __$$_EntityWithdrawInfoAccountCopyWithImpl<
          _$_EntityWithdrawInfoAccount>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_EntityWithdrawInfoAccountToJson(
      this,
    );
  }
}

abstract class _EntityWithdrawInfoAccount implements EntityWithdrawInfoAccount {
  factory _EntityWithdrawInfoAccount(
      {@JsonKey(name: 'currency')
          required final String currency,
      @JsonKey(name: 'balance')
          required final String balance,
      @JsonKey(name: 'locked')
          required final String locked,
      @JsonKey(name: 'avg_buy_price')
          required final String avgBuyPrice,
      @JsonKey(name: 'avg_buy_price_modified')
          required final bool avgBuyPriceModified,
      @JsonKey(name: 'unit_currency')
          required final String unitCurrency}) = _$_EntityWithdrawInfoAccount;

  factory _EntityWithdrawInfoAccount.fromJson(Map<String, dynamic> json) =
      _$_EntityWithdrawInfoAccount.fromJson;

  @override
  @JsonKey(name: 'currency')
  String get currency;
  @override
  @JsonKey(name: 'balance')
  String get balance;
  @override
  @JsonKey(name: 'locked')
  String get locked;
  @override
  @JsonKey(name: 'avg_buy_price')
  String get avgBuyPrice;
  @override
  @JsonKey(name: 'avg_buy_price_modified')
  bool get avgBuyPriceModified;
  @override
  @JsonKey(name: 'unit_currency')
  String get unitCurrency;
  @override
  @JsonKey(ignore: true)
  _$$_EntityWithdrawInfoAccountCopyWith<_$_EntityWithdrawInfoAccount>
      get copyWith => throw _privateConstructorUsedError;
}
