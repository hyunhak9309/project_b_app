// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'entity_withdraw_info_currency.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

EntityWithdrawInfoCurrency _$EntityWithdrawInfoCurrencyFromJson(
    Map<String, dynamic> json) {
  return _EntityWithdrawInfoCurrency.fromJson(json);
}

/// @nodoc
mixin _$EntityWithdrawInfoCurrency {
  @JsonKey(name: 'code')
  String get code => throw _privateConstructorUsedError;
  @JsonKey(name: 'withdraw_fee')
  String get withdrawFee => throw _privateConstructorUsedError;
  @JsonKey(name: 'is_coin')
  bool get isCoin => throw _privateConstructorUsedError;
  @JsonKey(name: 'wallet_state')
  String get walletState => throw _privateConstructorUsedError;
  @JsonKey(name: 'wallet_support')
  List<String> get walletSupport => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $EntityWithdrawInfoCurrencyCopyWith<EntityWithdrawInfoCurrency>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $EntityWithdrawInfoCurrencyCopyWith<$Res> {
  factory $EntityWithdrawInfoCurrencyCopyWith(EntityWithdrawInfoCurrency value,
          $Res Function(EntityWithdrawInfoCurrency) then) =
      _$EntityWithdrawInfoCurrencyCopyWithImpl<$Res>;
  $Res call(
      {@JsonKey(name: 'code') String code,
      @JsonKey(name: 'withdraw_fee') String withdrawFee,
      @JsonKey(name: 'is_coin') bool isCoin,
      @JsonKey(name: 'wallet_state') String walletState,
      @JsonKey(name: 'wallet_support') List<String> walletSupport});
}

/// @nodoc
class _$EntityWithdrawInfoCurrencyCopyWithImpl<$Res>
    implements $EntityWithdrawInfoCurrencyCopyWith<$Res> {
  _$EntityWithdrawInfoCurrencyCopyWithImpl(this._value, this._then);

  final EntityWithdrawInfoCurrency _value;
  // ignore: unused_field
  final $Res Function(EntityWithdrawInfoCurrency) _then;

  @override
  $Res call({
    Object? code = freezed,
    Object? withdrawFee = freezed,
    Object? isCoin = freezed,
    Object? walletState = freezed,
    Object? walletSupport = freezed,
  }) {
    return _then(_value.copyWith(
      code: code == freezed
          ? _value.code
          : code // ignore: cast_nullable_to_non_nullable
              as String,
      withdrawFee: withdrawFee == freezed
          ? _value.withdrawFee
          : withdrawFee // ignore: cast_nullable_to_non_nullable
              as String,
      isCoin: isCoin == freezed
          ? _value.isCoin
          : isCoin // ignore: cast_nullable_to_non_nullable
              as bool,
      walletState: walletState == freezed
          ? _value.walletState
          : walletState // ignore: cast_nullable_to_non_nullable
              as String,
      walletSupport: walletSupport == freezed
          ? _value.walletSupport
          : walletSupport // ignore: cast_nullable_to_non_nullable
              as List<String>,
    ));
  }
}

/// @nodoc
abstract class _$$_EntityWithdrawInfoCurrencyCopyWith<$Res>
    implements $EntityWithdrawInfoCurrencyCopyWith<$Res> {
  factory _$$_EntityWithdrawInfoCurrencyCopyWith(
          _$_EntityWithdrawInfoCurrency value,
          $Res Function(_$_EntityWithdrawInfoCurrency) then) =
      __$$_EntityWithdrawInfoCurrencyCopyWithImpl<$Res>;
  @override
  $Res call(
      {@JsonKey(name: 'code') String code,
      @JsonKey(name: 'withdraw_fee') String withdrawFee,
      @JsonKey(name: 'is_coin') bool isCoin,
      @JsonKey(name: 'wallet_state') String walletState,
      @JsonKey(name: 'wallet_support') List<String> walletSupport});
}

/// @nodoc
class __$$_EntityWithdrawInfoCurrencyCopyWithImpl<$Res>
    extends _$EntityWithdrawInfoCurrencyCopyWithImpl<$Res>
    implements _$$_EntityWithdrawInfoCurrencyCopyWith<$Res> {
  __$$_EntityWithdrawInfoCurrencyCopyWithImpl(
      _$_EntityWithdrawInfoCurrency _value,
      $Res Function(_$_EntityWithdrawInfoCurrency) _then)
      : super(_value, (v) => _then(v as _$_EntityWithdrawInfoCurrency));

  @override
  _$_EntityWithdrawInfoCurrency get _value =>
      super._value as _$_EntityWithdrawInfoCurrency;

  @override
  $Res call({
    Object? code = freezed,
    Object? withdrawFee = freezed,
    Object? isCoin = freezed,
    Object? walletState = freezed,
    Object? walletSupport = freezed,
  }) {
    return _then(_$_EntityWithdrawInfoCurrency(
      code: code == freezed
          ? _value.code
          : code // ignore: cast_nullable_to_non_nullable
              as String,
      withdrawFee: withdrawFee == freezed
          ? _value.withdrawFee
          : withdrawFee // ignore: cast_nullable_to_non_nullable
              as String,
      isCoin: isCoin == freezed
          ? _value.isCoin
          : isCoin // ignore: cast_nullable_to_non_nullable
              as bool,
      walletState: walletState == freezed
          ? _value.walletState
          : walletState // ignore: cast_nullable_to_non_nullable
              as String,
      walletSupport: walletSupport == freezed
          ? _value._walletSupport
          : walletSupport // ignore: cast_nullable_to_non_nullable
              as List<String>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_EntityWithdrawInfoCurrency implements _EntityWithdrawInfoCurrency {
  _$_EntityWithdrawInfoCurrency(
      {@JsonKey(name: 'code')
          required this.code,
      @JsonKey(name: 'withdraw_fee')
          required this.withdrawFee,
      @JsonKey(name: 'is_coin')
          required this.isCoin,
      @JsonKey(name: 'wallet_state')
          required this.walletState,
      @JsonKey(name: 'wallet_support')
          required final List<String> walletSupport})
      : _walletSupport = walletSupport;

  factory _$_EntityWithdrawInfoCurrency.fromJson(Map<String, dynamic> json) =>
      _$$_EntityWithdrawInfoCurrencyFromJson(json);

  @override
  @JsonKey(name: 'code')
  final String code;
  @override
  @JsonKey(name: 'withdraw_fee')
  final String withdrawFee;
  @override
  @JsonKey(name: 'is_coin')
  final bool isCoin;
  @override
  @JsonKey(name: 'wallet_state')
  final String walletState;
  final List<String> _walletSupport;
  @override
  @JsonKey(name: 'wallet_support')
  List<String> get walletSupport {
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_walletSupport);
  }

  @override
  String toString() {
    return 'EntityWithdrawInfoCurrency(code: $code, withdrawFee: $withdrawFee, isCoin: $isCoin, walletState: $walletState, walletSupport: $walletSupport)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_EntityWithdrawInfoCurrency &&
            const DeepCollectionEquality().equals(other.code, code) &&
            const DeepCollectionEquality()
                .equals(other.withdrawFee, withdrawFee) &&
            const DeepCollectionEquality().equals(other.isCoin, isCoin) &&
            const DeepCollectionEquality()
                .equals(other.walletState, walletState) &&
            const DeepCollectionEquality()
                .equals(other._walletSupport, _walletSupport));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(code),
      const DeepCollectionEquality().hash(withdrawFee),
      const DeepCollectionEquality().hash(isCoin),
      const DeepCollectionEquality().hash(walletState),
      const DeepCollectionEquality().hash(_walletSupport));

  @JsonKey(ignore: true)
  @override
  _$$_EntityWithdrawInfoCurrencyCopyWith<_$_EntityWithdrawInfoCurrency>
      get copyWith => __$$_EntityWithdrawInfoCurrencyCopyWithImpl<
          _$_EntityWithdrawInfoCurrency>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_EntityWithdrawInfoCurrencyToJson(
      this,
    );
  }
}

abstract class _EntityWithdrawInfoCurrency
    implements EntityWithdrawInfoCurrency {
  factory _EntityWithdrawInfoCurrency(
          {@JsonKey(name: 'code')
              required final String code,
          @JsonKey(name: 'withdraw_fee')
              required final String withdrawFee,
          @JsonKey(name: 'is_coin')
              required final bool isCoin,
          @JsonKey(name: 'wallet_state')
              required final String walletState,
          @JsonKey(name: 'wallet_support')
              required final List<String> walletSupport}) =
      _$_EntityWithdrawInfoCurrency;

  factory _EntityWithdrawInfoCurrency.fromJson(Map<String, dynamic> json) =
      _$_EntityWithdrawInfoCurrency.fromJson;

  @override
  @JsonKey(name: 'code')
  String get code;
  @override
  @JsonKey(name: 'withdraw_fee')
  String get withdrawFee;
  @override
  @JsonKey(name: 'is_coin')
  bool get isCoin;
  @override
  @JsonKey(name: 'wallet_state')
  String get walletState;
  @override
  @JsonKey(name: 'wallet_support')
  List<String> get walletSupport;
  @override
  @JsonKey(ignore: true)
  _$$_EntityWithdrawInfoCurrencyCopyWith<_$_EntityWithdrawInfoCurrency>
      get copyWith => throw _privateConstructorUsedError;
}
