import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';
import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class GenPracReviewRecord extends FirestoreRecord {
  GenPracReviewRecord._(
    DocumentReference reference,
    Map<String, dynamic> data,
  ) : super(reference, data) {
    _initializeFields();
  }

  // "Comment_text" field.
  String? _commentText;
  String get commentText => _commentText ?? '';
  bool hasCommentText() => _commentText != null;

  // "Comment_user" field.
  DocumentReference? _commentUser;
  DocumentReference? get commentUser => _commentUser;
  bool hasCommentUser() => _commentUser != null;

  // "time" field.
  DateTime? _time;
  DateTime? get time => _time;
  bool hasTime() => _time != null;

  // "Doctor" field.
  DocumentReference? _doctor;
  DocumentReference? get doctor => _doctor;
  bool hasDoctor() => _doctor != null;

  void _initializeFields() {
    _commentText = snapshotData['Comment_text'] as String?;
    _commentUser = snapshotData['Comment_user'] as DocumentReference?;
    _time = snapshotData['time'] as DateTime?;
    _doctor = snapshotData['Doctor'] as DocumentReference?;
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('GenPracReview');

  static Stream<GenPracReviewRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => GenPracReviewRecord.fromSnapshot(s));

  static Future<GenPracReviewRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => GenPracReviewRecord.fromSnapshot(s));

  static GenPracReviewRecord fromSnapshot(DocumentSnapshot snapshot) =>
      GenPracReviewRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static GenPracReviewRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      GenPracReviewRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'GenPracReviewRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is GenPracReviewRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createGenPracReviewRecordData({
  String? commentText,
  DocumentReference? commentUser,
  DateTime? time,
  DocumentReference? doctor,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'Comment_text': commentText,
      'Comment_user': commentUser,
      'time': time,
      'Doctor': doctor,
    }.withoutNulls,
  );

  return firestoreData;
}

class GenPracReviewRecordDocumentEquality
    implements Equality<GenPracReviewRecord> {
  const GenPracReviewRecordDocumentEquality();

  @override
  bool equals(GenPracReviewRecord? e1, GenPracReviewRecord? e2) {
    return e1?.commentText == e2?.commentText &&
        e1?.commentUser == e2?.commentUser &&
        e1?.time == e2?.time &&
        e1?.doctor == e2?.doctor;
  }

  @override
  int hash(GenPracReviewRecord? e) => const ListEquality()
      .hash([e?.commentText, e?.commentUser, e?.time, e?.doctor]);

  @override
  bool isValidKey(Object? o) => o is GenPracReviewRecord;
}
