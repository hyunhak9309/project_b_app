// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'entity_account.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

EntityAccount _$EntityAccountFromJson(Map<String, dynamic> json) {
  return _EntityAccount.fromJson(json);
}

/// @nodoc
mixin _$EntityAccount {
  @JsonKey(name: 'currency')
  String get currency => throw _privateConstructorUsedError;
  @JsonKey(name: 'balance')
  String get amountAvailableToOrder => throw _privateConstructorUsedError;
  @JsonKey(name: 'locked')
  String get tiedAmount => throw _privateConstructorUsedError;
  @JsonKey(name: 'avg_buy_price')
  String get averageBuyPrice => throw _privateConstructorUsedError;
  @JsonKey(name: 'avg_buy_price_modified')
  bool get averageBuyPriceModified => throw _privateConstructorUsedError;
  @JsonKey(name: 'unit_currency')
  String get unitCurrency => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $EntityAccountCopyWith<EntityAccount> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $EntityAccountCopyWith<$Res> {
  factory $EntityAccountCopyWith(
          EntityAccount value, $Res Function(EntityAccount) then) =
      _$EntityAccountCopyWithImpl<$Res>;
  $Res call(
      {@JsonKey(name: 'currency') String currency,
      @JsonKey(name: 'balance') String amountAvailableToOrder,
      @JsonKey(name: 'locked') String tiedAmount,
      @JsonKey(name: 'avg_buy_price') String averageBuyPrice,
      @JsonKey(name: 'avg_buy_price_modified') bool averageBuyPriceModified,
      @JsonKey(name: 'unit_currency') String unitCurrency});
}

/// @nodoc
class _$EntityAccountCopyWithImpl<$Res>
    implements $EntityAccountCopyWith<$Res> {
  _$EntityAccountCopyWithImpl(this._value, this._then);

  final EntityAccount _value;
  // ignore: unused_field
  final $Res Function(EntityAccount) _then;

  @override
  $Res call({
    Object? currency = freezed,
    Object? amountAvailableToOrder = freezed,
    Object? tiedAmount = freezed,
    Object? averageBuyPrice = freezed,
    Object? averageBuyPriceModified = freezed,
    Object? unitCurrency = freezed,
  }) {
    return _then(_value.copyWith(
      currency: currency == freezed
          ? _value.currency
          : currency // ignore: cast_nullable_to_non_nullable
              as String,
      amountAvailableToOrder: amountAvailableToOrder == freezed
          ? _value.amountAvailableToOrder
          : amountAvailableToOrder // ignore: cast_nullable_to_non_nullable
              as String,
      tiedAmount: tiedAmount == freezed
          ? _value.tiedAmount
          : tiedAmount // ignore: cast_nullable_to_non_nullable
              as String,
      averageBuyPrice: averageBuyPrice == freezed
          ? _value.averageBuyPrice
          : averageBuyPrice // ignore: cast_nullable_to_non_nullable
              as String,
      averageBuyPriceModified: averageBuyPriceModified == freezed
          ? _value.averageBuyPriceModified
          : averageBuyPriceModified // ignore: cast_nullable_to_non_nullable
              as bool,
      unitCurrency: unitCurrency == freezed
          ? _value.unitCurrency
          : unitCurrency // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
abstract class _$$_EntityAccountCopyWith<$Res>
    implements $EntityAccountCopyWith<$Res> {
  factory _$$_EntityAccountCopyWith(
          _$_EntityAccount value, $Res Function(_$_EntityAccount) then) =
      __$$_EntityAccountCopyWithImpl<$Res>;
  @override
  $Res call(
      {@JsonKey(name: 'currency') String currency,
      @JsonKey(name: 'balance') String amountAvailableToOrder,
      @JsonKey(name: 'locked') String tiedAmount,
      @JsonKey(name: 'avg_buy_price') String averageBuyPrice,
      @JsonKey(name: 'avg_buy_price_modified') bool averageBuyPriceModified,
      @JsonKey(name: 'unit_currency') String unitCurrency});
}

/// @nodoc
class __$$_EntityAccountCopyWithImpl<$Res>
    extends _$EntityAccountCopyWithImpl<$Res>
    implements _$$_EntityAccountCopyWith<$Res> {
  __$$_EntityAccountCopyWithImpl(
      _$_EntityAccount _value, $Res Function(_$_EntityAccount) _then)
      : super(_value, (v) => _then(v as _$_EntityAccount));

  @override
  _$_EntityAccount get _value => super._value as _$_EntityAccount;

  @override
  $Res call({
    Object? currency = freezed,
    Object? amountAvailableToOrder = freezed,
    Object? tiedAmount = freezed,
    Object? averageBuyPrice = freezed,
    Object? averageBuyPriceModified = freezed,
    Object? unitCurrency = freezed,
  }) {
    return _then(_$_EntityAccount(
      currency: currency == freezed
          ? _value.currency
          : currency // ignore: cast_nullable_to_non_nullable
              as String,
      amountAvailableToOrder: amountAvailableToOrder == freezed
          ? _value.amountAvailableToOrder
          : amountAvailableToOrder // ignore: cast_nullable_to_non_nullable
              as String,
      tiedAmount: tiedAmount == freezed
          ? _value.tiedAmount
          : tiedAmount // ignore: cast_nullable_to_non_nullable
              as String,
      averageBuyPrice: averageBuyPrice == freezed
          ? _value.averageBuyPrice
          : averageBuyPrice // ignore: cast_nullable_to_non_nullable
              as String,
      averageBuyPriceModified: averageBuyPriceModified == freezed
          ? _value.averageBuyPriceModified
          : averageBuyPriceModified // ignore: cast_nullable_to_non_nullable
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
class _$_EntityAccount implements _EntityAccount {
  _$_EntityAccount(
      {@JsonKey(name: 'currency')
          required this.currency,
      @JsonKey(name: 'balance')
          required this.amountAvailableToOrder,
      @JsonKey(name: 'locked')
          required this.tiedAmount,
      @JsonKey(name: 'avg_buy_price')
          required this.averageBuyPrice,
      @JsonKey(name: 'avg_buy_price_modified')
          required this.averageBuyPriceModified,
      @JsonKey(name: 'unit_currency')
          required this.unitCurrency});

  factory _$_EntityAccount.fromJson(Map<String, dynamic> json) =>
      _$$_EntityAccountFromJson(json);

  @override
  @JsonKey(name: 'currency')
  final String currency;
  @override
  @JsonKey(name: 'balance')
  final String amountAvailableToOrder;
  @override
  @JsonKey(name: 'locked')
  final String tiedAmount;
  @override
  @JsonKey(name: 'avg_buy_price')
  final String averageBuyPrice;
  @override
  @JsonKey(name: 'avg_buy_price_modified')
  final bool averageBuyPriceModified;
  @override
  @JsonKey(name: 'unit_currency')
  final String unitCurrency;

  @override
  String toString() {
    return 'EntityAccount(currency: $currency, amountAvailableToOrder: $amountAvailableToOrder, tiedAmount: $tiedAmount, averageBuyPrice: $averageBuyPrice, averageBuyPriceModified: $averageBuyPriceModified, unitCurrency: $unitCurrency)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_EntityAccount &&
            const DeepCollectionEquality().equals(other.currency, currency) &&
            const DeepCollectionEquality()
                .equals(other.amountAvailableToOrder, amountAvailableToOrder) &&
            const DeepCollectionEquality()
                .equals(other.tiedAmount, tiedAmount) &&
            const DeepCollectionEquality()
                .equals(other.averageBuyPrice, averageBuyPrice) &&
            const DeepCollectionEquality().equals(
                other.averageBuyPriceModified, averageBuyPriceModified) &&
            const DeepCollectionEquality()
                .equals(other.unitCurrency, unitCurrency));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(currency),
      const DeepCollectionEquality().hash(amountAvailableToOrder),
      const DeepCollectionEquality().hash(tiedAmount),
      const DeepCollectionEquality().hash(averageBuyPrice),
      const DeepCollectionEquality().hash(averageBuyPriceModified),
      const DeepCollectionEquality().hash(unitCurrency));

  @JsonKey(ignore: true)
  @override
  _$$_EntityAccountCopyWith<_$_EntityAccount> get copyWith =>
      __$$_EntityAccountCopyWithImpl<_$_EntityAccount>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_EntityAccountToJson(
      this,
    );
  }
}

abstract class _EntityAccount implements EntityAccount {
  factory _EntityAccount(
      {@JsonKey(name: 'currency')
          required final String currency,
      @JsonKey(name: 'balance')
          required final String amountAvailableToOrder,
      @JsonKey(name: 'locked')
          required final String tiedAmount,
      @JsonKey(name: 'avg_buy_price')
          required final String averageBuyPrice,
      @JsonKey(name: 'avg_buy_price_modified')
          required final bool averageBuyPriceModified,
      @JsonKey(name: 'unit_currency')
          required final String unitCurrency}) = _$_EntityAccount;

  factory _EntityAccount.fromJson(Map<String, dynamic> json) =
      _$_EntityAccount.fromJson;

  @override
  @JsonKey(name: 'currency')
  String get currency;
  @override
  @JsonKey(name: 'balance')
  String get amountAvailableToOrder;
  @override
  @JsonKey(name: 'locked')
  String get tiedAmount;
  @override
  @JsonKey(name: 'avg_buy_price')
  String get averageBuyPrice;
  @override
  @JsonKey(name: 'avg_buy_price_modified')
  bool get averageBuyPriceModified;
  @override
  @JsonKey(name: 'unit_currency')
  String get unitCurrency;
  @override
  @JsonKey(ignore: true)
  _$$_EntityAccountCopyWith<_$_EntityAccount> get copyWith =>
      throw _privateConstructorUsedError;
}
