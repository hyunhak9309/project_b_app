import 'package:freezed_annotation/freezed_annotation.dart';

class TimestampConverter implements JsonConverter<DateTime, DateTime> {
  const TimestampConverter();

  @override
  DateTime fromJson(DateTime dateTime) {
    return dateTime.toLocal();
  }

  @override
  DateTime toJson(DateTime dateTime) => dateTime;
}