// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'entity_order_info_market_ask.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

EntityOrderInfoMarketAsk _$EntityOrderInfoMarketAskFromJson(
    Map<String, dynamic> json) {
  return _EntityOrderInfoMarketAsk.fromJson(json);
}

/// @nodoc
mixin _$EntityOrderInfoMarketAsk {
  @JsonKey(name: 'currency')
  String get currency => throw _privateConstructorUsedError;
  @JsonKey(name: 'min_total')
  String get minTotal => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $EntityOrderInfoMarketAskCopyWith<EntityOrderInfoMarketAsk> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $EntityOrderInfoMarketAskCopyWith<$Res> {
  factory $EntityOrderInfoMarketAskCopyWith(EntityOrderInfoMarketAsk value,
          $Res Function(EntityOrderInfoMarketAsk) then) =
      _$EntityOrderInfoMarketAskCopyWithImpl<$Res>;
  $Res call(
      {@JsonKey(name: 'currency') String currency,
      @JsonKey(name: 'min_total') String minTotal});
}

/// @nodoc
class _$EntityOrderInfoMarketAskCopyWithImpl<$Res>
    implements $EntityOrderInfoMarketAskCopyWith<$Res> {
  _$EntityOrderInfoMarketAskCopyWithImpl(this._value, this._then);

  final EntityOrderInfoMarketAsk _value;
  // ignore: unused_field
  final $Res Function(EntityOrderInfoMarketAsk) _then;

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
abstract class _$$_EntityOrderInfoMarketAskCopyWith<$Res>
    implements $EntityOrderInfoMarketAskCopyWith<$Res> {
  factory _$$_EntityOrderInfoMarketAskCopyWith(
          _$_EntityOrderInfoMarketAsk value,
          $Res Function(_$_EntityOrderInfoMarketAsk) then) =
      __$$_EntityOrderInfoMarketAskCopyWithImpl<$Res>;
  @override
  $Res call(
      {@JsonKey(name: 'currency') String currency,
      @JsonKey(name: 'min_total') String minTotal});
}

/// @nodoc
class __$$_EntityOrderInfoMarketAskCopyWithImpl<$Res>
    extends _$EntityOrderInfoMarketAskCopyWithImpl<$Res>
    implements _$$_EntityOrderInfoMarketAskCopyWith<$Res> {
  __$$_EntityOrderInfoMarketAskCopyWithImpl(_$_EntityOrderInfoMarketAsk _value,
      $Res Function(_$_EntityOrderInfoMarketAsk) _then)
      : super(_value, (v) => _then(v as _$_EntityOrderInfoMarketAsk));

  @override
  _$_EntityOrderInfoMarketAsk get _value =>
      super._value as _$_EntityOrderInfoMarketAsk;

  @override
  $Res call({
    Object? currency = freezed,
    Object? minTotal = freezed,
  }) {
    return _then(_$_EntityOrderInfoMarketAsk(
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
class _$_EntityOrderInfoMarketAsk implements _EntityOrderInfoMarketAsk {
  _$_EntityOrderInfoMarketAsk(
      {@JsonKey(name: 'currency') required this.currency,
      @JsonKey(name: 'min_total') required this.minTotal});

  factory _$_EntityOrderInfoMarketAsk.fromJson(Map<String, dynamic> json) =>
      _$$_EntityOrderInfoMarketAskFromJson(json);

  @override
  @JsonKey(name: 'currency')
  final String currency;
  @override
  @JsonKey(name: 'min_total')
  final String minTotal;

  @override
  String toString() {
    return 'EntityOrderInfoMarketAsk(currency: $currency, minTotal: $minTotal)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_EntityOrderInfoMarketAsk &&
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
  _$$_EntityOrderInfoMarketAskCopyWith<_$_EntityOrderInfoMarketAsk>
      get copyWith => __$$_EntityOrderInfoMarketAskCopyWithImpl<
          _$_EntityOrderInfoMarketAsk>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_EntityOrderInfoMarketAskToJson(
      this,
    );
  }
}

abstract class _EntityOrderInfoMarketAsk implements EntityOrderInfoMarketAsk {
  factory _EntityOrderInfoMarketAsk(
          {@JsonKey(name: 'currency') required final String currency,
          @JsonKey(name: 'min_total') required final String minTotal}) =
      _$_EntityOrderInfoMarketAsk;

  factory _EntityOrderInfoMarketAsk.fromJson(Map<String, dynamic> json) =
      _$_EntityOrderInfoMarketAsk.fromJson;

  @override
  @JsonKey(name: 'currency')
  String get currency;
  @override
  @JsonKey(name: 'min_total')
  String get minTotal;
  @override
  @JsonKey(ignore: true)
  _$$_EntityOrderInfoMarketAskCopyWith<_$_EntityOrderInfoMarketAsk>
      get copyWith => throw _privateConstructorUsedError;
}
