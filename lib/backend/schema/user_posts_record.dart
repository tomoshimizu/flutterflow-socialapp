import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';
import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class UserPostsRecord extends FirestoreRecord {
  UserPostsRecord._(
    DocumentReference reference,
    Map<String, dynamic> data,
  ) : super(reference, data) {
    _initializeFields();
  }

  // "message" field.
  String? _message;
  String get message => _message ?? '';
  bool hasMessage() => _message != null;

  // "userEmail" field.
  String? _userEmail;
  String get userEmail => _userEmail ?? '';
  bool hasUserEmail() => _userEmail != null;

  // "createdTime" field.
  DateTime? _createdTime;
  DateTime? get createdTime => _createdTime;
  bool hasCreatedTime() => _createdTime != null;

  // "likes" field.
  List<String>? _likes;
  List<String> get likes => _likes ?? const [];
  bool hasLikes() => _likes != null;

  void _initializeFields() {
    _message = snapshotData['message'] as String?;
    _userEmail = snapshotData['userEmail'] as String?;
    _createdTime = snapshotData['createdTime'] as DateTime?;
    _likes = getDataList(snapshotData['likes']);
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('userPosts');

  static Stream<UserPostsRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => UserPostsRecord.fromSnapshot(s));

  static Future<UserPostsRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => UserPostsRecord.fromSnapshot(s));

  static UserPostsRecord fromSnapshot(DocumentSnapshot snapshot) =>
      UserPostsRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static UserPostsRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      UserPostsRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'UserPostsRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is UserPostsRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createUserPostsRecordData({
  String? message,
  String? userEmail,
  DateTime? createdTime,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'message': message,
      'userEmail': userEmail,
      'createdTime': createdTime,
    }.withoutNulls,
  );

  return firestoreData;
}

class UserPostsRecordDocumentEquality implements Equality<UserPostsRecord> {
  const UserPostsRecordDocumentEquality();

  @override
  bool equals(UserPostsRecord? e1, UserPostsRecord? e2) {
    const listEquality = ListEquality();
    return e1?.message == e2?.message &&
        e1?.userEmail == e2?.userEmail &&
        e1?.createdTime == e2?.createdTime &&
        listEquality.equals(e1?.likes, e2?.likes);
  }

  @override
  int hash(UserPostsRecord? e) => const ListEquality()
      .hash([e?.message, e?.userEmail, e?.createdTime, e?.likes]);

  @override
  bool isValidKey(Object? o) => o is UserPostsRecord;
}
