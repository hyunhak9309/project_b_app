import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:mongo_dart/mongo_dart.dart';

class ObjectIdConverter implements JsonConverter<ObjectId, ObjectId> {
  const ObjectIdConverter();

  @override
  ObjectId fromJson(ObjectId id) {
    return id;
  }

  @override
  ObjectId toJson(ObjectId id) => id;
}