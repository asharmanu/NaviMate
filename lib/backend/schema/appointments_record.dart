import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';
import '/backend/schema/util/schema_util.dart';

import 'index.dart';

class AppointmentsRecord extends FirestoreRecord {
  AppointmentsRecord._(
    super.reference,
    super.data,
  ) {
    _initializeFields();
  }

  // "date" field.
  DateTime? _date;
  DateTime? get date => _date;
  bool hasDate() => _date != null;

  // "name" field.
  DocumentReference? _name;
  DocumentReference? get name => _name;
  bool hasName() => _name != null;

  // "user" field.
  DocumentReference? _user;
  DocumentReference? get user => _user;
  bool hasUser() => _user != null;

  void _initializeFields() {
    _date = snapshotData['date'] as DateTime?;
    _name = snapshotData['name'] as DocumentReference?;
    _user = snapshotData['user'] as DocumentReference?;
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('appointments');

  static Stream<AppointmentsRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => AppointmentsRecord.fromSnapshot(s));

  static Future<AppointmentsRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => AppointmentsRecord.fromSnapshot(s));

  static AppointmentsRecord fromSnapshot(DocumentSnapshot snapshot) =>
      AppointmentsRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static AppointmentsRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      AppointmentsRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'AppointmentsRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is AppointmentsRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createAppointmentsRecordData({
  DateTime? date,
  DocumentReference? name,
  DocumentReference? user,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'date': date,
      'name': name,
      'user': user,
    }.withoutNulls,
  );

  return firestoreData;
}

class AppointmentsRecordDocumentEquality
    implements Equality<AppointmentsRecord> {
  const AppointmentsRecordDocumentEquality();

  @override
  bool equals(AppointmentsRecord? e1, AppointmentsRecord? e2) {
    return e1?.date == e2?.date && e1?.name == e2?.name && e1?.user == e2?.user;
  }

  @override
  int hash(AppointmentsRecord? e) =>
      const ListEquality().hash([e?.date, e?.name, e?.user]);

  @override
  bool isValidKey(Object? o) => o is AppointmentsRecord;
}
