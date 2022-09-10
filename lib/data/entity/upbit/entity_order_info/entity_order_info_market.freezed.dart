// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'entity_order_info_market.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

EntityOrderInfoMarket _$EntityOrderInfoMarketFromJson(
    Map<String, dynamic> json) {
  return _EntityOrderInfoMarket.fromJson(json);
}

/// @nodoc
mixin _$EntityOrderInfoMarket {
  @JsonKey(name: 'id')
  String get id => throw _privateConstructorUsedError;
  @JsonKey(name: 'name')
  String get name => throw _privateConstructorUsedError;
  @JsonKey(name: 'order_types')
  List<String> get orderTypes => throw _privateConstructorUsedError;
  @JsonKey(name: 'order_sides')
  List<String> get orderSides => throw _privateConstructorUsedError;
  @JsonKey(name: 'bid')
  EntityOrderInfoMarketBid get bid => throw _privateConstructorUsedError;
  @JsonKey(name: 'ask')
  EntityOrderInfoMarketAsk get ask => throw _privateConstructorUsedError;
  @JsonKey(name: 'max_total')
  String get maxTotal => throw _privateConstructorUsedError;
  @JsonKey(name: 'state')
  String get state => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $EntityOrderInfoMarketCopyWith<EntityOrderInfoMarket> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $EntityOrderInfoMarketCopyWith<$Res> {
  factory $EntityOrderInfoMarketCopyWith(EntityOrderInfoMarket value,
          $Res Function(EntityOrderInfoMarket) then) =
      _$EntityOrderInfoMarketCopyWithImpl<$Res>;
  $Res call(
      {@JsonKey(name: 'id') String id,
      @JsonKey(name: 'name') String name,
      @JsonKey(name: 'order_types') List<String> orderTypes,
      @JsonKey(name: 'order_sides') List<String> orderSides,
      @JsonKey(name: 'bid') EntityOrderInfoMarketBid bid,
      @JsonKey(name: 'ask') EntityOrderInfoMarketAsk ask,
      @JsonKey(name: 'max_total') String maxTotal,
      @JsonKey(name: 'state') String state});

  $EntityOrderInfoMarketBidCopyWith<$Res> get bid;
  $EntityOrderInfoMarketAskCopyWith<$Res> get ask;
}

/// @nodoc
class _$EntityOrderInfoMarketCopyWithImpl<$Res>
    implements $EntityOrderInfoMarketCopyWith<$Res> {
  _$EntityOrderInfoMarketCopyWithImpl(this._value, this._then);

  final EntityOrderInfoMarket _value;
  // ignore: unused_field
  final $Res Function(EntityOrderInfoMarket) _then;

  @override
  $Res call({
    Object? id = freezed,
    Object? name = freezed,
    Object? orderTypes = freezed,
    Object? orderSides = freezed,
    Object? bid = freezed,
    Object? ask = freezed,
    Object? maxTotal = freezed,
    Object? state = freezed,
  }) {
    return _then(_value.copyWith(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      name: name == freezed
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      orderTypes: orderTypes == freezed
          ? _value.orderTypes
          : orderTypes // ignore: cast_nullable_to_non_nullable
              as List<String>,
      orderSides: orderSides == freezed
          ? _value.orderSides
          : orderSides // ignore: cast_nullable_to_non_nullable
              as List<String>,
      bid: bid == freezed
          ? _value.bid
          : bid // ignore: cast_nullable_to_non_nullable
              as EntityOrderInfoMarketBid,
      ask: ask == freezed
          ? _value.ask
          : ask // ignore: cast_nullable_to_non_nullable
              as EntityOrderInfoMarketAsk,
      maxTotal: maxTotal == freezed
          ? _value.maxTotal
          : maxTotal // ignore: cast_nullable_to_non_nullable
              as String,
      state: state == freezed
          ? _value.state
          : state // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }

  @override
  $EntityOrderInfoMarketBidCopyWith<$Res> get bid {
    return $EntityOrderInfoMarketBidCopyWith<$Res>(_value.bid, (value) {
      return _then(_value.copyWith(bid: value));
    });
  }

  @override
  $EntityOrderInfoMarketAskCopyWith<$Res> get ask {
    return $EntityOrderInfoMarketAskCopyWith<$Res>(_value.ask, (value) {
      return _then(_value.copyWith(ask: value));
    });
  }
}

/// @nodoc
abstract class _$$_EntityOrderInfoMarketCopyWith<$Res>
    implements $EntityOrderInfoMarketCopyWith<$Res> {
  factory _$$_EntityOrderInfoMarketCopyWith(_$_EntityOrderInfoMarket value,
          $Res Function(_$_EntityOrderInfoMarket) then) =
      __$$_EntityOrderInfoMarketCopyWithImpl<$Res>;
  @override
  $Res call(
      {@JsonKey(name: 'id') String id,
      @JsonKey(name: 'name') String name,
      @JsonKey(name: 'order_types') List<String> orderTypes,
      @JsonKey(name: 'order_sides') List<String> orderSides,
      @JsonKey(name: 'bid') EntityOrderInfoMarketBid bid,
      @JsonKey(name: 'ask') EntityOrderInfoMarketAsk ask,
      @JsonKey(name: 'max_total') String maxTotal,
      @JsonKey(name: 'state') String state});

  @override
  $EntityOrderInfoMarketBidCopyWith<$Res> get bid;
  @override
  $EntityOrderInfoMarketAskCopyWith<$Res> get ask;
}

/// @nodoc
class __$$_EntityOrderInfoMarketCopyWithImpl<$Res>
    extends _$EntityOrderInfoMarketCopyWithImpl<$Res>
    implements _$$_EntityOrderInfoMarketCopyWith<$Res> {
  __$$_EntityOrderInfoMarketCopyWithImpl(_$_EntityOrderInfoMarket _value,
      $Res Function(_$_EntityOrderInfoMarket) _then)
      : super(_value, (v) => _then(v as _$_EntityOrderInfoMarket));

  @override
  _$_EntityOrderInfoMarket get _value =>
      super._value as _$_EntityOrderInfoMarket;

  @override
  $Res call({
    Object? id = freezed,
    Object? name = freezed,
    Object? orderTypes = freezed,
    Object? orderSides = freezed,
    Object? bid = freezed,
    Object? ask = freezed,
    Object? maxTotal = freezed,
    Object? state = freezed,
  }) {
    return _then(_$_EntityOrderInfoMarket(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      name: name == freezed
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      orderTypes: orderTypes == freezed
          ? _value._orderTypes
          : orderTypes // ignore: cast_nullable_to_non_nullable
              as List<String>,
      orderSides: orderSides == freezed
          ? _value._orderSides
          : orderSides // ignore: cast_nullable_to_non_nullable
              as List<String>,
      bid: bid == freezed
          ? _value.bid
          : bid // ignore: cast_nullable_to_non_nullable
              as EntityOrderInfoMarketBid,
      ask: ask == freezed
          ? _value.ask
          : ask // ignore: cast_nullable_to_non_nullable
              as EntityOrderInfoMarketAsk,
      maxTotal: maxTotal == freezed
          ? _value.maxTotal
          : maxTotal // ignore: cast_nullable_to_non_nullable
              as String,
      state: state == freezed
          ? _value.state
          : state // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_EntityOrderInfoMarket implements _EntityOrderInfoMarket {
  _$_EntityOrderInfoMarket(
      {@JsonKey(name: 'id') required this.id,
      @JsonKey(name: 'name') required this.name,
      @JsonKey(name: 'order_types') required final List<String> orderTypes,
      @JsonKey(name: 'order_sides') required final List<String> orderSides,
      @JsonKey(name: 'bid') required this.bid,
      @JsonKey(name: 'ask') required this.ask,
      @JsonKey(name: 'max_total') required this.maxTotal,
      @JsonKey(name: 'state') required this.state})
      : _orderTypes = orderTypes,
        _orderSides = orderSides;

  factory _$_EntityOrderInfoMarket.fromJson(Map<String, dynamic> json) =>
      _$$_EntityOrderInfoMarketFromJson(json);

  @override
  @JsonKey(name: 'id')
  final String id;
  @override
  @JsonKey(name: 'name')
  final String name;
  final List<String> _orderTypes;
  @override
  @JsonKey(name: 'order_types')
  List<String> get orderTypes {
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_orderTypes);
  }

  final List<String> _orderSides;
  @override
  @JsonKey(name: 'order_sides')
  List<String> get orderSides {
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_orderSides);
  }

  @override
  @JsonKey(name: 'bid')
  final EntityOrderInfoMarketBid bid;
  @override
  @JsonKey(name: 'ask')
  final EntityOrderInfoMarketAsk ask;
  @override
  @JsonKey(name: 'max_total')
  final String maxTotal;
  @override
  @JsonKey(name: 'state')
  final String state;

  @override
  String toString() {
    return 'EntityOrderInfoMarket(id: $id, name: $name, orderTypes: $orderTypes, orderSides: $orderSides, bid: $bid, ask: $ask, maxTotal: $maxTotal, state: $state)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_EntityOrderInfoMarket &&
            const DeepCollectionEquality().equals(other.id, id) &&
            const DeepCollectionEquality().equals(other.name, name) &&
            const DeepCollectionEquality()
                .equals(other._orderTypes, _orderTypes) &&
            const DeepCollectionEquality()
                .equals(other._orderSides, _orderSides) &&
            const DeepCollectionEquality().equals(other.bid, bid) &&
            const DeepCollectionEquality().equals(other.ask, ask) &&
            const DeepCollectionEquality().equals(other.maxTotal, maxTotal) &&
            const DeepCollectionEquality().equals(other.state, state));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(id),
      const DeepCollectionEquality().hash(name),
      const DeepCollectionEquality().hash(_orderTypes),
      const DeepCollectionEquality().hash(_orderSides),
      const DeepCollectionEquality().hash(bid),
      const DeepCollectionEquality().hash(ask),
      const DeepCollectionEquality().hash(maxTotal),
      const DeepCollectionEquality().hash(state));

  @JsonKey(ignore: true)
  @override
  _$$_EntityOrderInfoMarketCopyWith<_$_EntityOrderInfoMarket> get copyWith =>
      __$$_EntityOrderInfoMarketCopyWithImpl<_$_EntityOrderInfoMarket>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_EntityOrderInfoMarketToJson(
      this,
    );
  }
}

abstract class _EntityOrderInfoMarket implements EntityOrderInfoMarket {
  factory _EntityOrderInfoMarket(
          {@JsonKey(name: 'id') required final String id,
          @JsonKey(name: 'name') required final String name,
          @JsonKey(name: 'order_types') required final List<String> orderTypes,
          @JsonKey(name: 'order_sides') required final List<String> orderSides,
          @JsonKey(name: 'bid') required final EntityOrderInfoMarketBid bid,
          @JsonKey(name: 'ask') required final EntityOrderInfoMarketAsk ask,
          @JsonKey(name: 'max_total') required final String maxTotal,
          @JsonKey(name: 'state') required final String state}) =
      _$_EntityOrderInfoMarket;

  factory _EntityOrderInfoMarket.fromJson(Map<String, dynamic> json) =
      _$_EntityOrderInfoMarket.fromJson;

  @override
  @JsonKey(name: 'id')
  String get id;
  @override
  @JsonKey(name: 'name')
  String get name;
  @override
  @JsonKey(name: 'order_types')
  List<String> get orderTypes;
  @override
  @JsonKey(name: 'order_sides')
  List<String> get orderSides;
  @override
  @JsonKey(name: 'bid')
  EntityOrderInfoMarketBid get bid;
  @override
  @JsonKey(name: 'ask')
  EntityOrderInfoMarketAsk get ask;
  @override
  @JsonKey(name: 'max_total')
  String get maxTotal;
  @override
  @JsonKey(name: 'state')
  String get state;
  @override
  @JsonKey(ignore: true)
  _$$_EntityOrderInfoMarketCopyWith<_$_EntityOrderInfoMarket> get copyWith =>
      throw _privateConstructorUsedError;
}
