// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'entity_market_code.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

EntityMarketCode _$EntityMarketCodeFromJson(Map<String, dynamic> json) {
  return _EntityMarketCode.fromJson(json);
}

/// @nodoc
mixin _$EntityMarketCode {
  @JsonKey(name: 'market')
  String get market => throw _privateConstructorUsedError;
  @JsonKey(name: 'korean_name')
  String get koreanName => throw _privateConstructorUsedError;
  @JsonKey(name: 'english_name')
  String get englishName => throw _privateConstructorUsedError;
  @JsonKey(name: 'market_warning')
  String get marketWarning => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $EntityMarketCodeCopyWith<EntityMarketCode> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $EntityMarketCodeCopyWith<$Res> {
  factory $EntityMarketCodeCopyWith(
          EntityMarketCode value, $Res Function(EntityMarketCode) then) =
      _$EntityMarketCodeCopyWithImpl<$Res>;
  $Res call(
      {@JsonKey(name: 'market') String market,
      @JsonKey(name: 'korean_name') String koreanName,
      @JsonKey(name: 'english_name') String englishName,
      @JsonKey(name: 'market_warning') String marketWarning});
}

/// @nodoc
class _$EntityMarketCodeCopyWithImpl<$Res>
    implements $EntityMarketCodeCopyWith<$Res> {
  _$EntityMarketCodeCopyWithImpl(this._value, this._then);

  final EntityMarketCode _value;
  // ignore: unused_field
  final $Res Function(EntityMarketCode) _then;

  @override
  $Res call({
    Object? market = freezed,
    Object? koreanName = freezed,
    Object? englishName = freezed,
    Object? marketWarning = freezed,
  }) {
    return _then(_value.copyWith(
      market: market == freezed
          ? _value.market
          : market // ignore: cast_nullable_to_non_nullable
              as String,
      koreanName: koreanName == freezed
          ? _value.koreanName
          : koreanName // ignore: cast_nullable_to_non_nullable
              as String,
      englishName: englishName == freezed
          ? _value.englishName
          : englishName // ignore: cast_nullable_to_non_nullable
              as String,
      marketWarning: marketWarning == freezed
          ? _value.marketWarning
          : marketWarning // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
abstract class _$$_EntityMarketCodeCopyWith<$Res>
    implements $EntityMarketCodeCopyWith<$Res> {
  factory _$$_EntityMarketCodeCopyWith(
          _$_EntityMarketCode value, $Res Function(_$_EntityMarketCode) then) =
      __$$_EntityMarketCodeCopyWithImpl<$Res>;
  @override
  $Res call(
      {@JsonKey(name: 'market') String market,
      @JsonKey(name: 'korean_name') String koreanName,
      @JsonKey(name: 'english_name') String englishName,
      @JsonKey(name: 'market_warning') String marketWarning});
}

/// @nodoc
class __$$_EntityMarketCodeCopyWithImpl<$Res>
    extends _$EntityMarketCodeCopyWithImpl<$Res>
    implements _$$_EntityMarketCodeCopyWith<$Res> {
  __$$_EntityMarketCodeCopyWithImpl(
      _$_EntityMarketCode _value, $Res Function(_$_EntityMarketCode) _then)
      : super(_value, (v) => _then(v as _$_EntityMarketCode));

  @override
  _$_EntityMarketCode get _value => super._value as _$_EntityMarketCode;

  @override
  $Res call({
    Object? market = freezed,
    Object? koreanName = freezed,
    Object? englishName = freezed,
    Object? marketWarning = freezed,
  }) {
    return _then(_$_EntityMarketCode(
      market: market == freezed
          ? _value.market
          : market // ignore: cast_nullable_to_non_nullable
              as String,
      koreanName: koreanName == freezed
          ? _value.koreanName
          : koreanName // ignore: cast_nullable_to_non_nullable
              as String,
      englishName: englishName == freezed
          ? _value.englishName
          : englishName // ignore: cast_nullable_to_non_nullable
              as String,
      marketWarning: marketWarning == freezed
          ? _value.marketWarning
          : marketWarning // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_EntityMarketCode implements _EntityMarketCode {
  _$_EntityMarketCode(
      {@JsonKey(name: 'market') required this.market,
      @JsonKey(name: 'korean_name') required this.koreanName,
      @JsonKey(name: 'english_name') required this.englishName,
      @JsonKey(name: 'market_warning') required this.marketWarning});

  factory _$_EntityMarketCode.fromJson(Map<String, dynamic> json) =>
      _$$_EntityMarketCodeFromJson(json);

  @override
  @JsonKey(name: 'market')
  final String market;
  @override
  @JsonKey(name: 'korean_name')
  final String koreanName;
  @override
  @JsonKey(name: 'english_name')
  final String englishName;
  @override
  @JsonKey(name: 'market_warning')
  final String marketWarning;

  @override
  String toString() {
    return 'EntityMarketCode(market: $market, koreanName: $koreanName, englishName: $englishName, marketWarning: $marketWarning)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_EntityMarketCode &&
            const DeepCollectionEquality().equals(other.market, market) &&
            const DeepCollectionEquality()
                .equals(other.koreanName, koreanName) &&
            const DeepCollectionEquality()
                .equals(other.englishName, englishName) &&
            const DeepCollectionEquality()
                .equals(other.marketWarning, marketWarning));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(market),
      const DeepCollectionEquality().hash(koreanName),
      const DeepCollectionEquality().hash(englishName),
      const DeepCollectionEquality().hash(marketWarning));

  @JsonKey(ignore: true)
  @override
  _$$_EntityMarketCodeCopyWith<_$_EntityMarketCode> get copyWith =>
      __$$_EntityMarketCodeCopyWithImpl<_$_EntityMarketCode>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_EntityMarketCodeToJson(
      this,
    );
  }
}

abstract class _EntityMarketCode implements EntityMarketCode {
  factory _EntityMarketCode(
      {@JsonKey(name: 'market')
          required final String market,
      @JsonKey(name: 'korean_name')
          required final String koreanName,
      @JsonKey(name: 'english_name')
          required final String englishName,
      @JsonKey(name: 'market_warning')
          required final String marketWarning}) = _$_EntityMarketCode;

  factory _EntityMarketCode.fromJson(Map<String, dynamic> json) =
      _$_EntityMarketCode.fromJson;

  @override
  @JsonKey(name: 'market')
  String get market;
  @override
  @JsonKey(name: 'korean_name')
  String get koreanName;
  @override
  @JsonKey(name: 'english_name')
  String get englishName;
  @override
  @JsonKey(name: 'market_warning')
  String get marketWarning;
  @override
  @JsonKey(ignore: true)
  _$$_EntityMarketCodeCopyWith<_$_EntityMarketCode> get copyWith =>
      throw _privateConstructorUsedError;
}
