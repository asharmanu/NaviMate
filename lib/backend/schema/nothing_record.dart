import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';
import '/backend/schema/util/schema_util.dart';

import 'index.dart';

class NothingRecord extends FirestoreRecord {
  NothingRecord._(
    super.reference,
    super.data,
  ) {
    _initializeFields();
  }

  // "Type" field.
  String? _type;
  String get type => _type ?? '';
  bool hasType() => _type != null;

  // "location" field.
  List<LatLng>? _location;
  List<LatLng> get location => _location ?? const [];
  bool hasLocation() => _location != null;

  void _initializeFields() {
    _type = snapshotData['Type'] as String?;
    _location = getDataList(snapshotData['location']);
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('nothing');

  static Stream<NothingRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => NothingRecord.fromSnapshot(s));

  static Future<NothingRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => NothingRecord.fromSnapshot(s));

  static NothingRecord fromSnapshot(DocumentSnapshot snapshot) =>
      NothingRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static NothingRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      NothingRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'NothingRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is NothingRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createNothingRecordData({
  String? type,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'Type': type,
    }.withoutNulls,
  );

  return firestoreData;
}

class NothingRecordDocumentEquality implements Equality<NothingRecord> {
  const NothingRecordDocumentEquality();

  @override
  bool equals(NothingRecord? e1, NothingRecord? e2) {
    const listEquality = ListEquality();
    return e1?.type == e2?.type &&
        listEquality.equals(e1?.location, e2?.location);
  }

  @override
  int hash(NothingRecord? e) =>
      const ListEquality().hash([e?.type, e?.location]);

  @override
  bool isValidKey(Object? o) => o is NothingRecord;
}
