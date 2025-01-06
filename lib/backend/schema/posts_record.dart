import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';
import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class PostsRecord extends FirestoreRecord {
  PostsRecord._(
    super.reference,
    super.data,
  ) {
    _initializeFields();
  }

  // "postImage" field.
  String? _postImage;
  String get postImage => _postImage ?? '';
  bool hasPostImage() => _postImage != null;

  // "postUser" field.
  DocumentReference? _postUser;
  DocumentReference? get postUser => _postUser;
  bool hasPostUser() => _postUser != null;

  // "usersShares" field.
  int? _usersShares;
  int get usersShares => _usersShares ?? 0;
  bool hasUsersShares() => _usersShares != null;

  // "usersText" field.
  String? _usersText;
  String get usersText => _usersText ?? '';
  bool hasUsersText() => _usersText != null;

  // "postUserName" field.
  String? _postUserName;
  String get postUserName => _postUserName ?? '';
  bool hasPostUserName() => _postUserName != null;

  // "postUserImage" field.
  String? _postUserImage;
  String get postUserImage => _postUserImage ?? '';
  bool hasPostUserImage() => _postUserImage != null;

  // "usersLikes" field.
  List<DocumentReference>? _usersLikes;
  List<DocumentReference> get usersLikes => _usersLikes ?? const [];
  bool hasUsersLikes() => _usersLikes != null;

  void _initializeFields() {
    _postImage = snapshotData['postImage'] as String?;
    _postUser = snapshotData['postUser'] as DocumentReference?;
    _usersShares = castToType<int>(snapshotData['usersShares']);
    _usersText = snapshotData['usersText'] as String?;
    _postUserName = snapshotData['postUserName'] as String?;
    _postUserImage = snapshotData['postUserImage'] as String?;
    _usersLikes = getDataList(snapshotData['usersLikes']);
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('posts');

  static Stream<PostsRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => PostsRecord.fromSnapshot(s));

  static Future<PostsRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => PostsRecord.fromSnapshot(s));

  static PostsRecord fromSnapshot(DocumentSnapshot snapshot) => PostsRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static PostsRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      PostsRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'PostsRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is PostsRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createPostsRecordData({
  String? postImage,
  DocumentReference? postUser,
  int? usersShares,
  String? usersText,
  String? postUserName,
  String? postUserImage,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'postImage': postImage,
      'postUser': postUser,
      'usersShares': usersShares,
      'usersText': usersText,
      'postUserName': postUserName,
      'postUserImage': postUserImage,
    }.withoutNulls,
  );

  return firestoreData;
}

class PostsRecordDocumentEquality implements Equality<PostsRecord> {
  const PostsRecordDocumentEquality();

  @override
  bool equals(PostsRecord? e1, PostsRecord? e2) {
    const listEquality = ListEquality();
    return e1?.postImage == e2?.postImage &&
        e1?.postUser == e2?.postUser &&
        e1?.usersShares == e2?.usersShares &&
        e1?.usersText == e2?.usersText &&
        e1?.postUserName == e2?.postUserName &&
        e1?.postUserImage == e2?.postUserImage &&
        listEquality.equals(e1?.usersLikes, e2?.usersLikes);
  }

  @override
  int hash(PostsRecord? e) => const ListEquality().hash([
        e?.postImage,
        e?.postUser,
        e?.usersShares,
        e?.usersText,
        e?.postUserName,
        e?.postUserImage,
        e?.usersLikes
      ]);

  @override
  bool isValidKey(Object? o) => o is PostsRecord;
}
