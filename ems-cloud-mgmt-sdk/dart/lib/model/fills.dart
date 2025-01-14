//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.0

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class Fills {
  /// Returns a new [Fills] instance.
  Fills({
    this.time,
    this.price,
    this.amount,
  });

  /// Execution time.
  DateTime time;

  /// Execution price.
  num price;

  /// Executed quantity.
  num amount;

  @override
  bool operator ==(Object other) => identical(this, other) || other is Fills &&
     other.time == time &&
     other.price == price &&
     other.amount == amount;

  @override
  int get hashCode =>
  // ignore: unnecessary_parenthesis
    (time == null ? 0 : time.hashCode) +
    (price == null ? 0 : price.hashCode) +
    (amount == null ? 0 : amount.hashCode);

  @override
  String toString() => 'Fills[time=$time, price=$price, amount=$amount]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    if (time != null) {
      json[r'time'] = time;
    }
    if (price != null) {
      json[r'price'] = price;
    }
    if (amount != null) {
      json[r'amount'] = amount;
    }
    return json;
  }

  /// Returns a new [Fills] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static Fills fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();
      return Fills(
        time: DateTime.fromJson(json[r'time']),
        price: json[r'price'] == null
          ? null
          : num.parse(json[r'price'].toString()),
        amount: json[r'amount'] == null
          ? null
          : num.parse(json[r'amount'].toString()),
      );
    }
    return null;
  }

  static List<Fills> listFromJson(dynamic json, {bool emptyIsNull, bool growable,}) =>
    json is List && json.isNotEmpty
      ? json.map(Fills.fromJson).toList(growable: true == growable)
      : true == emptyIsNull ? null : <Fills>[];

  static Map<String, Fills> mapFromJson(dynamic json) {
    final map = <String, Fills>{};
    if (json is Map && json.isNotEmpty) {
      json
        .cast<String, dynamic>()
        .forEach((key, dynamic value) => map[key] = Fills.fromJson(value));
    }
    return map;
  }

  // maps a json object with a list of Fills-objects as value to a dart map
  static Map<String, List<Fills>> mapListFromJson(dynamic json, {bool emptyIsNull, bool growable,}) {
    final map = <String, List<Fills>>{};
    if (json is Map && json.isNotEmpty) {
      json
        .cast<String, dynamic>()
        .forEach((key, dynamic value) {
          map[key] = Fills.listFromJson(
            value,
            emptyIsNull: emptyIsNull,
            growable: growable,
          );
        });
    }
    return map;
  }
}

