// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'model_change_rate.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

ModelChangeRate _$ModelChangeRateFromJson(Map<String, dynamic> json) {
  return _ModelChangeRate.fromJson(json);
}

/// @nodoc
mixin _$ModelChangeRate {
  double? get totalBeforeMinute => throw _privateConstructorUsedError;
  double? get totalBeforeHour => throw _privateConstructorUsedError;
  double? get totalBeforeDay => throw _privateConstructorUsedError;
  double? get totalBeforeWeek => throw _privateConstructorUsedError;
  double? get totalBeforeMonth => throw _privateConstructorUsedError;
  double? get totalBeforeYear => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ModelChangeRateCopyWith<ModelChangeRate> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ModelChangeRateCopyWith<$Res> {
  factory $ModelChangeRateCopyWith(
          ModelChangeRate value, $Res Function(ModelChangeRate) then) =
      _$ModelChangeRateCopyWithImpl<$Res>;
  $Res call(
      {double? totalBeforeMinute,
      double? totalBeforeHour,
      double? totalBeforeDay,
      double? totalBeforeWeek,
      double? totalBeforeMonth,
      double? totalBeforeYear});
}

/// @nodoc
class _$ModelChangeRateCopyWithImpl<$Res>
    implements $ModelChangeRateCopyWith<$Res> {
  _$ModelChangeRateCopyWithImpl(this._value, this._then);

  final ModelChangeRate _value;
  // ignore: unused_field
  final $Res Function(ModelChangeRate) _then;

  @override
  $Res call({
    Object? totalBeforeMinute = freezed,
    Object? totalBeforeHour = freezed,
    Object? totalBeforeDay = freezed,
    Object? totalBeforeWeek = freezed,
    Object? totalBeforeMonth = freezed,
    Object? totalBeforeYear = freezed,
  }) {
    return _then(_value.copyWith(
      totalBeforeMinute: totalBeforeMinute == freezed
          ? _value.totalBeforeMinute
          : totalBeforeMinute // ignore: cast_nullable_to_non_nullable
              as double?,
      totalBeforeHour: totalBeforeHour == freezed
          ? _value.totalBeforeHour
          : totalBeforeHour // ignore: cast_nullable_to_non_nullable
              as double?,
      totalBeforeDay: totalBeforeDay == freezed
          ? _value.totalBeforeDay
          : totalBeforeDay // ignore: cast_nullable_to_non_nullable
              as double?,
      totalBeforeWeek: totalBeforeWeek == freezed
          ? _value.totalBeforeWeek
          : totalBeforeWeek // ignore: cast_nullable_to_non_nullable
              as double?,
      totalBeforeMonth: totalBeforeMonth == freezed
          ? _value.totalBeforeMonth
          : totalBeforeMonth // ignore: cast_nullable_to_non_nullable
              as double?,
      totalBeforeYear: totalBeforeYear == freezed
          ? _value.totalBeforeYear
          : totalBeforeYear // ignore: cast_nullable_to_non_nullable
              as double?,
    ));
  }
}

/// @nodoc
abstract class _$$_ModelChangeRateCopyWith<$Res>
    implements $ModelChangeRateCopyWith<$Res> {
  factory _$$_ModelChangeRateCopyWith(
          _$_ModelChangeRate value, $Res Function(_$_ModelChangeRate) then) =
      __$$_ModelChangeRateCopyWithImpl<$Res>;
  @override
  $Res call(
      {double? totalBeforeMinute,
      double? totalBeforeHour,
      double? totalBeforeDay,
      double? totalBeforeWeek,
      double? totalBeforeMonth,
      double? totalBeforeYear});
}

/// @nodoc
class __$$_ModelChangeRateCopyWithImpl<$Res>
    extends _$ModelChangeRateCopyWithImpl<$Res>
    implements _$$_ModelChangeRateCopyWith<$Res> {
  __$$_ModelChangeRateCopyWithImpl(
      _$_ModelChangeRate _value, $Res Function(_$_ModelChangeRate) _then)
      : super(_value, (v) => _then(v as _$_ModelChangeRate));

  @override
  _$_ModelChangeRate get _value => super._value as _$_ModelChangeRate;

  @override
  $Res call({
    Object? totalBeforeMinute = freezed,
    Object? totalBeforeHour = freezed,
    Object? totalBeforeDay = freezed,
    Object? totalBeforeWeek = freezed,
    Object? totalBeforeMonth = freezed,
    Object? totalBeforeYear = freezed,
  }) {
    return _then(_$_ModelChangeRate(
      totalBeforeMinute: totalBeforeMinute == freezed
          ? _value.totalBeforeMinute
          : totalBeforeMinute // ignore: cast_nullable_to_non_nullable
              as double?,
      totalBeforeHour: totalBeforeHour == freezed
          ? _value.totalBeforeHour
          : totalBeforeHour // ignore: cast_nullable_to_non_nullable
              as double?,
      totalBeforeDay: totalBeforeDay == freezed
          ? _value.totalBeforeDay
          : totalBeforeDay // ignore: cast_nullable_to_non_nullable
              as double?,
      totalBeforeWeek: totalBeforeWeek == freezed
          ? _value.totalBeforeWeek
          : totalBeforeWeek // ignore: cast_nullable_to_non_nullable
              as double?,
      totalBeforeMonth: totalBeforeMonth == freezed
          ? _value.totalBeforeMonth
          : totalBeforeMonth // ignore: cast_nullable_to_non_nullable
              as double?,
      totalBeforeYear: totalBeforeYear == freezed
          ? _value.totalBeforeYear
          : totalBeforeYear // ignore: cast_nullable_to_non_nullable
              as double?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_ModelChangeRate implements _ModelChangeRate {
  _$_ModelChangeRate(
      {required this.totalBeforeMinute,
      required this.totalBeforeHour,
      required this.totalBeforeDay,
      required this.totalBeforeWeek,
      required this.totalBeforeMonth,
      required this.totalBeforeYear});

  factory _$_ModelChangeRate.fromJson(Map<String, dynamic> json) =>
      _$$_ModelChangeRateFromJson(json);

  @override
  final double? totalBeforeMinute;
  @override
  final double? totalBeforeHour;
  @override
  final double? totalBeforeDay;
  @override
  final double? totalBeforeWeek;
  @override
  final double? totalBeforeMonth;
  @override
  final double? totalBeforeYear;

  @override
  String toString() {
    return 'ModelChangeRate(totalBeforeMinute: $totalBeforeMinute, totalBeforeHour: $totalBeforeHour, totalBeforeDay: $totalBeforeDay, totalBeforeWeek: $totalBeforeWeek, totalBeforeMonth: $totalBeforeMonth, totalBeforeYear: $totalBeforeYear)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_ModelChangeRate &&
            const DeepCollectionEquality()
                .equals(other.totalBeforeMinute, totalBeforeMinute) &&
            const DeepCollectionEquality()
                .equals(other.totalBeforeHour, totalBeforeHour) &&
            const DeepCollectionEquality()
                .equals(other.totalBeforeDay, totalBeforeDay) &&
            const DeepCollectionEquality()
                .equals(other.totalBeforeWeek, totalBeforeWeek) &&
            const DeepCollectionEquality()
                .equals(other.totalBeforeMonth, totalBeforeMonth) &&
            const DeepCollectionEquality()
                .equals(other.totalBeforeYear, totalBeforeYear));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(totalBeforeMinute),
      const DeepCollectionEquality().hash(totalBeforeHour),
      const DeepCollectionEquality().hash(totalBeforeDay),
      const DeepCollectionEquality().hash(totalBeforeWeek),
      const DeepCollectionEquality().hash(totalBeforeMonth),
      const DeepCollectionEquality().hash(totalBeforeYear));

  @JsonKey(ignore: true)
  @override
  _$$_ModelChangeRateCopyWith<_$_ModelChangeRate> get copyWith =>
      __$$_ModelChangeRateCopyWithImpl<_$_ModelChangeRate>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_ModelChangeRateToJson(
      this,
    );
  }
}

abstract class _ModelChangeRate implements ModelChangeRate {
  factory _ModelChangeRate(
      {required final double? totalBeforeMinute,
      required final double? totalBeforeHour,
      required final double? totalBeforeDay,
      required final double? totalBeforeWeek,
      required final double? totalBeforeMonth,
      required final double? totalBeforeYear}) = _$_ModelChangeRate;

  factory _ModelChangeRate.fromJson(Map<String, dynamic> json) =
      _$_ModelChangeRate.fromJson;

  @override
  double? get totalBeforeMinute;
  @override
  double? get totalBeforeHour;
  @override
  double? get totalBeforeDay;
  @override
  double? get totalBeforeWeek;
  @override
  double? get totalBeforeMonth;
  @override
  double? get totalBeforeYear;
  @override
  @JsonKey(ignore: true)
  _$$_ModelChangeRateCopyWith<_$_ModelChangeRate> get copyWith =>
      throw _privateConstructorUsedError;
}
