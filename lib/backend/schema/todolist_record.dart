import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';
import '/backend/schema/util/schema_util.dart';
import '/backend/schema/enums/enums.dart';

import 'index.dart';

class TodolistRecord extends FirestoreRecord {
  TodolistRecord._(
    super.reference,
    super.data,
  ) {
    _initializeFields();
  }

  // "task_name" field.
  String? _taskName;
  String get taskName => _taskName ?? '';
  bool hasTaskName() => _taskName != null;

  // "task_description" field.
  String? _taskDescription;
  String get taskDescription => _taskDescription ?? '';
  bool hasTaskDescription() => _taskDescription != null;

  // "tags" field.
  String? _tags;
  String get tags => _tags ?? '';
  bool hasTags() => _tags != null;

  // "due_date" field.
  DateTime? _dueDate;
  DateTime? get dueDate => _dueDate;
  bool hasDueDate() => _dueDate != null;

  // "status" field.
  Status? _status;
  Status? get status => _status;
  bool hasStatus() => _status != null;

  // "description" field.
  String? _description;
  String get description => _description ?? '';
  bool hasDescription() => _description != null;

  // "assignees" field.
  DocumentReference? _assignees;
  DocumentReference? get assignees => _assignees;
  bool hasAssignees() => _assignees != null;

  void _initializeFields() {
    _taskName = snapshotData['task_name'] as String?;
    _taskDescription = snapshotData['task_description'] as String?;
    _tags = snapshotData['tags'] as String?;
    _dueDate = snapshotData['due_date'] as DateTime?;
    _status = deserializeEnum<Status>(snapshotData['status']);
    _description = snapshotData['description'] as String?;
    _assignees = snapshotData['assignees'] as DocumentReference?;
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('todolist');

  static Stream<TodolistRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => TodolistRecord.fromSnapshot(s));

  static Future<TodolistRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => TodolistRecord.fromSnapshot(s));

  static TodolistRecord fromSnapshot(DocumentSnapshot snapshot) =>
      TodolistRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static TodolistRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      TodolistRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'TodolistRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is TodolistRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createTodolistRecordData({
  String? taskName,
  String? taskDescription,
  String? tags,
  DateTime? dueDate,
  Status? status,
  String? description,
  DocumentReference? assignees,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'task_name': taskName,
      'task_description': taskDescription,
      'tags': tags,
      'due_date': dueDate,
      'status': status,
      'description': description,
      'assignees': assignees,
    }.withoutNulls,
  );

  return firestoreData;
}

class TodolistRecordDocumentEquality implements Equality<TodolistRecord> {
  const TodolistRecordDocumentEquality();

  @override
  bool equals(TodolistRecord? e1, TodolistRecord? e2) {
    return e1?.taskName == e2?.taskName &&
        e1?.taskDescription == e2?.taskDescription &&
        e1?.tags == e2?.tags &&
        e1?.dueDate == e2?.dueDate &&
        e1?.status == e2?.status &&
        e1?.description == e2?.description &&
        e1?.assignees == e2?.assignees;
  }

  @override
  int hash(TodolistRecord? e) => const ListEquality().hash([
        e?.taskName,
        e?.taskDescription,
        e?.tags,
        e?.dueDate,
        e?.status,
        e?.description,
        e?.assignees
      ]);

  @override
  bool isValidKey(Object? o) => o is TodolistRecord;
}
