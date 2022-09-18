// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'model_wallet.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

ModelWallet _$ModelWalletFromJson(Map<String, dynamic> json) {
  return _ModelWallet.fromJson(json);
}

/// @nodoc
mixin _$ModelWallet {
  List<EntityAccount> get originalWalletInfo =>
      throw _privateConstructorUsedError;
  double get totalAmount => throw _privateConstructorUsedError;
  double get amountAvailableToOrder => throw _privateConstructorUsedError;
  double get tiedAmount => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ModelWalletCopyWith<ModelWallet> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ModelWalletCopyWith<$Res> {
  factory $ModelWalletCopyWith(
          ModelWallet value, $Res Function(ModelWallet) then) =
      _$ModelWalletCopyWithImpl<$Res>;
  $Res call(
      {List<EntityAccount> originalWalletInfo,
      double totalAmount,
      double amountAvailableToOrder,
      double tiedAmount});
}

/// @nodoc
class _$ModelWalletCopyWithImpl<$Res> implements $ModelWalletCopyWith<$Res> {
  _$ModelWalletCopyWithImpl(this._value, this._then);

  final ModelWallet _value;
  // ignore: unused_field
  final $Res Function(ModelWallet) _then;

  @override
  $Res call({
    Object? originalWalletInfo = freezed,
    Object? totalAmount = freezed,
    Object? amountAvailableToOrder = freezed,
    Object? tiedAmount = freezed,
  }) {
    return _then(_value.copyWith(
      originalWalletInfo: originalWalletInfo == freezed
          ? _value.originalWalletInfo
          : originalWalletInfo // ignore: cast_nullable_to_non_nullable
              as List<EntityAccount>,
      totalAmount: totalAmount == freezed
          ? _value.totalAmount
          : totalAmount // ignore: cast_nullable_to_non_nullable
              as double,
      amountAvailableToOrder: amountAvailableToOrder == freezed
          ? _value.amountAvailableToOrder
          : amountAvailableToOrder // ignore: cast_nullable_to_non_nullable
              as double,
      tiedAmount: tiedAmount == freezed
          ? _value.tiedAmount
          : tiedAmount // ignore: cast_nullable_to_non_nullable
              as double,
    ));
  }
}

/// @nodoc
abstract class _$$_ModelWalletCopyWith<$Res>
    implements $ModelWalletCopyWith<$Res> {
  factory _$$_ModelWalletCopyWith(
          _$_ModelWallet value, $Res Function(_$_ModelWallet) then) =
      __$$_ModelWalletCopyWithImpl<$Res>;
  @override
  $Res call(
      {List<EntityAccount> originalWalletInfo,
      double totalAmount,
      double amountAvailableToOrder,
      double tiedAmount});
}

/// @nodoc
class __$$_ModelWalletCopyWithImpl<$Res> extends _$ModelWalletCopyWithImpl<$Res>
    implements _$$_ModelWalletCopyWith<$Res> {
  __$$_ModelWalletCopyWithImpl(
      _$_ModelWallet _value, $Res Function(_$_ModelWallet) _then)
      : super(_value, (v) => _then(v as _$_ModelWallet));

  @override
  _$_ModelWallet get _value => super._value as _$_ModelWallet;

  @override
  $Res call({
    Object? originalWalletInfo = freezed,
    Object? totalAmount = freezed,
    Object? amountAvailableToOrder = freezed,
    Object? tiedAmount = freezed,
  }) {
    return _then(_$_ModelWallet(
      originalWalletInfo: originalWalletInfo == freezed
          ? _value._originalWalletInfo
          : originalWalletInfo // ignore: cast_nullable_to_non_nullable
              as List<EntityAccount>,
      totalAmount: totalAmount == freezed
          ? _value.totalAmount
          : totalAmount // ignore: cast_nullable_to_non_nullable
              as double,
      amountAvailableToOrder: amountAvailableToOrder == freezed
          ? _value.amountAvailableToOrder
          : amountAvailableToOrder // ignore: cast_nullable_to_non_nullable
              as double,
      tiedAmount: tiedAmount == freezed
          ? _value.tiedAmount
          : tiedAmount // ignore: cast_nullable_to_non_nullable
              as double,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_ModelWallet implements _ModelWallet {
  _$_ModelWallet(
      {required final List<EntityAccount> originalWalletInfo,
      required this.totalAmount,
      required this.amountAvailableToOrder,
      required this.tiedAmount})
      : _originalWalletInfo = originalWalletInfo;

  factory _$_ModelWallet.fromJson(Map<String, dynamic> json) =>
      _$$_ModelWalletFromJson(json);

  final List<EntityAccount> _originalWalletInfo;
  @override
  List<EntityAccount> get originalWalletInfo {
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_originalWalletInfo);
  }

  @override
  final double totalAmount;
  @override
  final double amountAvailableToOrder;
  @override
  final double tiedAmount;

  @override
  String toString() {
    return 'ModelWallet(originalWalletInfo: $originalWalletInfo, totalAmount: $totalAmount, amountAvailableToOrder: $amountAvailableToOrder, tiedAmount: $tiedAmount)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_ModelWallet &&
            const DeepCollectionEquality()
                .equals(other._originalWalletInfo, _originalWalletInfo) &&
            const DeepCollectionEquality()
                .equals(other.totalAmount, totalAmount) &&
            const DeepCollectionEquality()
                .equals(other.amountAvailableToOrder, amountAvailableToOrder) &&
            const DeepCollectionEquality()
                .equals(other.tiedAmount, tiedAmount));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(_originalWalletInfo),
      const DeepCollectionEquality().hash(totalAmount),
      const DeepCollectionEquality().hash(amountAvailableToOrder),
      const DeepCollectionEquality().hash(tiedAmount));

  @JsonKey(ignore: true)
  @override
  _$$_ModelWalletCopyWith<_$_ModelWallet> get copyWith =>
      __$$_ModelWalletCopyWithImpl<_$_ModelWallet>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_ModelWalletToJson(
      this,
    );
  }
}

abstract class _ModelWallet implements ModelWallet {
  factory _ModelWallet(
      {required final List<EntityAccount> originalWalletInfo,
      required final double totalAmount,
      required final double amountAvailableToOrder,
      required final double tiedAmount}) = _$_ModelWallet;

  factory _ModelWallet.fromJson(Map<String, dynamic> json) =
      _$_ModelWallet.fromJson;

  @override
  List<EntityAccount> get originalWalletInfo;
  @override
  double get totalAmount;
  @override
  double get amountAvailableToOrder;
  @override
  double get tiedAmount;
  @override
  @JsonKey(ignore: true)
  _$$_ModelWalletCopyWith<_$_ModelWallet> get copyWith =>
      throw _privateConstructorUsedError;
}
