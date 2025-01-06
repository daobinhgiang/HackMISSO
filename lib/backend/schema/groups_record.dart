import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';
import '/backend/schema/util/schema_util.dart';
import '/backend/schema/enums/enums.dart';

import 'index.dart';

class GroupsRecord extends FirestoreRecord {
  GroupsRecord._(
    super.reference,
    super.data,
  ) {
    _initializeFields();
  }

  // "groupName" field.
  String? _groupName;
  String get groupName => _groupName ?? '';
  bool hasGroupName() => _groupName != null;

  // "category" field.
  GroupCategory? _category;
  GroupCategory? get category => _category;
  bool hasCategory() => _category != null;

  // "groupPhoto" field.
  String? _groupPhoto;
  String get groupPhoto => _groupPhoto ?? '';
  bool hasGroupPhoto() => _groupPhoto != null;

  // "members" field.
  DocumentReference? _members;
  DocumentReference? get members => _members;
  bool hasMembers() => _members != null;

  // "groupID" field.
  String? _groupID;
  String get groupID => _groupID ?? '';
  bool hasGroupID() => _groupID != null;

  void _initializeFields() {
    _groupName = snapshotData['groupName'] as String?;
    _category = deserializeEnum<GroupCategory>(snapshotData['category']);
    _groupPhoto = snapshotData['groupPhoto'] as String?;
    _members = snapshotData['members'] as DocumentReference?;
    _groupID = snapshotData['groupID'] as String?;
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('groups');

  static Stream<GroupsRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => GroupsRecord.fromSnapshot(s));

  static Future<GroupsRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => GroupsRecord.fromSnapshot(s));

  static GroupsRecord fromSnapshot(DocumentSnapshot snapshot) => GroupsRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static GroupsRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      GroupsRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'GroupsRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is GroupsRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createGroupsRecordData({
  String? groupName,
  GroupCategory? category,
  String? groupPhoto,
  DocumentReference? members,
  String? groupID,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'groupName': groupName,
      'category': category,
      'groupPhoto': groupPhoto,
      'members': members,
      'groupID': groupID,
    }.withoutNulls,
  );

  return firestoreData;
}

class GroupsRecordDocumentEquality implements Equality<GroupsRecord> {
  const GroupsRecordDocumentEquality();

  @override
  bool equals(GroupsRecord? e1, GroupsRecord? e2) {
    return e1?.groupName == e2?.groupName &&
        e1?.category == e2?.category &&
        e1?.groupPhoto == e2?.groupPhoto &&
        e1?.members == e2?.members &&
        e1?.groupID == e2?.groupID;
  }

  @override
  int hash(GroupsRecord? e) => const ListEquality()
      .hash([e?.groupName, e?.category, e?.groupPhoto, e?.members, e?.groupID]);

  @override
  bool isValidKey(Object? o) => o is GroupsRecord;
}
