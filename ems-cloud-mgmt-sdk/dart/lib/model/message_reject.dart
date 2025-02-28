//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.0

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class MessageReject {
  /// Returns a new [MessageReject] instance.
  MessageReject({
    this.type,
    this.rejectReason,
    this.exchangeId,
    this.message,
    this.rejectedMessage,
  });

  /// Message type, constant.
  String type;

  RejectReason rejectReason;

  /// If the message related to exchange, then the identifier of the exchange will be provided.
  String exchangeId;

  /// Message text.
  String message;

  /// Value of rejected request, if available.
  String rejectedMessage;

  @override
  bool operator ==(Object other) => identical(this, other) || other is MessageReject &&
     other.type == type &&
     other.rejectReason == rejectReason &&
     other.exchangeId == exchangeId &&
     other.message == message &&
     other.rejectedMessage == rejectedMessage;

  @override
  int get hashCode =>
  // ignore: unnecessary_parenthesis
    (type == null ? 0 : type.hashCode) +
    (rejectReason == null ? 0 : rejectReason.hashCode) +
    (exchangeId == null ? 0 : exchangeId.hashCode) +
    (message == null ? 0 : message.hashCode) +
    (rejectedMessage == null ? 0 : rejectedMessage.hashCode);

  @override
  String toString() => 'MessageReject[type=$type, rejectReason=$rejectReason, exchangeId=$exchangeId, message=$message, rejectedMessage=$rejectedMessage]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    if (type != null) {
      json[r'type'] = type;
    }
    if (rejectReason != null) {
      json[r'reject_reason'] = rejectReason;
    }
    if (exchangeId != null) {
      json[r'exchange_id'] = exchangeId;
    }
    if (message != null) {
      json[r'message'] = message;
    }
    if (rejectedMessage != null) {
      json[r'rejected_message'] = rejectedMessage;
    }
    return json;
  }

  /// Returns a new [MessageReject] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static MessageReject fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();
      return MessageReject(
        type: mapValueOfType<String>(json, r'type'),
        rejectReason: RejectReason.fromJson(json[r'reject_reason']),
        exchangeId: mapValueOfType<String>(json, r'exchange_id'),
        message: mapValueOfType<String>(json, r'message'),
        rejectedMessage: mapValueOfType<String>(json, r'rejected_message'),
      );
    }
    return null;
  }

  static List<MessageReject> listFromJson(dynamic json, {bool emptyIsNull, bool growable,}) =>
    json is List && json.isNotEmpty
      ? json.map(MessageReject.fromJson).toList(growable: true == growable)
      : true == emptyIsNull ? null : <MessageReject>[];

  static Map<String, MessageReject> mapFromJson(dynamic json) {
    final map = <String, MessageReject>{};
    if (json is Map && json.isNotEmpty) {
      json
        .cast<String, dynamic>()
        .forEach((key, dynamic value) => map[key] = MessageReject.fromJson(value));
    }
    return map;
  }

  // maps a json object with a list of MessageReject-objects as value to a dart map
  static Map<String, List<MessageReject>> mapListFromJson(dynamic json, {bool emptyIsNull, bool growable,}) {
    final map = <String, List<MessageReject>>{};
    if (json is Map && json.isNotEmpty) {
      json
        .cast<String, dynamic>()
        .forEach((key, dynamic value) {
          map[key] = MessageReject.listFromJson(
            value,
            emptyIsNull: emptyIsNull,
            growable: growable,
          );
        });
    }
    return map;
  }
}

