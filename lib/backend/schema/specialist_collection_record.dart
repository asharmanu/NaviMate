import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';
import '/backend/schema/util/schema_util.dart';

import 'index.dart';

class SpecialistCollectionRecord extends FirestoreRecord {
  SpecialistCollectionRecord._(
    super.reference,
    super.data,
  ) {
    _initializeFields();
  }

  // "Profession" field.
  String? _profession;
  String get profession => _profession ?? '';
  bool hasProfession() => _profession != null;

  void _initializeFields() {
    _profession = snapshotData['Profession'] as String?;
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('Specialist_Collection');

  static Stream<SpecialistCollectionRecord> getDocument(
          DocumentReference ref) =>
      ref.snapshots().map((s) => SpecialistCollectionRecord.fromSnapshot(s));

  static Future<SpecialistCollectionRecord> getDocumentOnce(
          DocumentReference ref) =>
      ref.get().then((s) => SpecialistCollectionRecord.fromSnapshot(s));

  static SpecialistCollectionRecord fromSnapshot(DocumentSnapshot snapshot) =>
      SpecialistCollectionRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static SpecialistCollectionRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      SpecialistCollectionRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'SpecialistCollectionRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is SpecialistCollectionRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createSpecialistCollectionRecordData({
  String? profession,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'Profession': profession,
    }.withoutNulls,
  );

  return firestoreData;
}

class SpecialistCollectionRecordDocumentEquality
    implements Equality<SpecialistCollectionRecord> {
  const SpecialistCollectionRecordDocumentEquality();

  @override
  bool equals(SpecialistCollectionRecord? e1, SpecialistCollectionRecord? e2) {
    return e1?.profession == e2?.profession;
  }

  @override
  int hash(SpecialistCollectionRecord? e) =>
      const ListEquality().hash([e?.profession]);

  @override
  bool isValidKey(Object? o) => o is SpecialistCollectionRecord;
}
