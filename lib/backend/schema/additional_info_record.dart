import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';
import '/backend/schema/util/schema_util.dart';

import 'index.dart';

class AdditionalInfoRecord extends FirestoreRecord {
  AdditionalInfoRecord._(
    super.reference,
    super.data,
  ) {
    _initializeFields();
  }

  // "preferred_language" field.
  String? _preferredLanguage;
  String get preferredLanguage => _preferredLanguage ?? '';
  bool hasPreferredLanguage() => _preferredLanguage != null;

  // "major" field.
  String? _major;
  String get major => _major ?? '';
  bool hasMajor() => _major != null;

  // "communication_style" field.
  String? _communicationStyle;
  String get communicationStyle => _communicationStyle ?? '';
  bool hasCommunicationStyle() => _communicationStyle != null;

  // "kind_of_place" field.
  String? _kindOfPlace;
  String get kindOfPlace => _kindOfPlace ?? '';
  bool hasKindOfPlace() => _kindOfPlace != null;

  // "fav_place" field.
  String? _favPlace;
  String get favPlace => _favPlace ?? '';
  bool hasFavPlace() => _favPlace != null;

  // "course" field.
  String? _course;
  String get course => _course ?? '';
  bool hasCourse() => _course != null;

  void _initializeFields() {
    _preferredLanguage = snapshotData['preferred_language'] as String?;
    _major = snapshotData['major'] as String?;
    _communicationStyle = snapshotData['communication_style'] as String?;
    _kindOfPlace = snapshotData['kind_of_place'] as String?;
    _favPlace = snapshotData['fav_place'] as String?;
    _course = snapshotData['course'] as String?;
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('additional_info');

  static Stream<AdditionalInfoRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => AdditionalInfoRecord.fromSnapshot(s));

  static Future<AdditionalInfoRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => AdditionalInfoRecord.fromSnapshot(s));

  static AdditionalInfoRecord fromSnapshot(DocumentSnapshot snapshot) =>
      AdditionalInfoRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static AdditionalInfoRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      AdditionalInfoRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'AdditionalInfoRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is AdditionalInfoRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createAdditionalInfoRecordData({
  String? preferredLanguage,
  String? major,
  String? communicationStyle,
  String? kindOfPlace,
  String? favPlace,
  String? course,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'preferred_language': preferredLanguage,
      'major': major,
      'communication_style': communicationStyle,
      'kind_of_place': kindOfPlace,
      'fav_place': favPlace,
      'course': course,
    }.withoutNulls,
  );

  return firestoreData;
}

class AdditionalInfoRecordDocumentEquality
    implements Equality<AdditionalInfoRecord> {
  const AdditionalInfoRecordDocumentEquality();

  @override
  bool equals(AdditionalInfoRecord? e1, AdditionalInfoRecord? e2) {
    return e1?.preferredLanguage == e2?.preferredLanguage &&
        e1?.major == e2?.major &&
        e1?.communicationStyle == e2?.communicationStyle &&
        e1?.kindOfPlace == e2?.kindOfPlace &&
        e1?.favPlace == e2?.favPlace &&
        e1?.course == e2?.course;
  }

  @override
  int hash(AdditionalInfoRecord? e) => const ListEquality().hash([
        e?.preferredLanguage,
        e?.major,
        e?.communicationStyle,
        e?.kindOfPlace,
        e?.favPlace,
        e?.course
      ]);

  @override
  bool isValidKey(Object? o) => o is AdditionalInfoRecord;
}
