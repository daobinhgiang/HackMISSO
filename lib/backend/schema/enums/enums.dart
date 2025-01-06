import 'package:collection/collection.dart';

enum Status {
  done25,
  done50,
  done75,
  completed,
}

enum GroupCategory {
  MISSO,
  HR,
  Vietnamese,
  LibraryLover,
}

extension FFEnumExtensions<T extends Enum> on T {
  String serialize() => name;
}

extension FFEnumListExtensions<T extends Enum> on Iterable<T> {
  T? deserialize(String? value) =>
      firstWhereOrNull((e) => e.serialize() == value);
}

T? deserializeEnum<T>(String? value) {
  switch (T) {
    case (Status):
      return Status.values.deserialize(value) as T?;
    case (GroupCategory):
      return GroupCategory.values.deserialize(value) as T?;
    default:
      return null;
  }
}
