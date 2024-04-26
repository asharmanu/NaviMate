import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';
import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class GeneralPractitionersRecord extends FirestoreRecord {
  GeneralPractitionersRecord._(
    DocumentReference reference,
    Map<String, dynamic> data,
  ) : super(reference, data) {
    _initializeFields();
  }

  // "name_surname" field.
  String? _nameSurname;
  String get nameSurname => _nameSurname ?? '';
  bool hasNameSurname() => _nameSurname != null;

  // "address" field.
  String? _address;
  String get address => _address ?? '';
  bool hasAddress() => _address != null;

  // "phone_number" field.
  int? _phoneNumber;
  int get phoneNumber => _phoneNumber ?? 0;
  bool hasPhoneNumber() => _phoneNumber != null;

  // "insuranced_by" field.
  String? _insurancedBy;
  String get insurancedBy => _insurancedBy ?? '';
  bool hasInsurancedBy() => _insurancedBy != null;

  void _initializeFields() {
    _nameSurname = snapshotData['name_surname'] as String?;
    _address = snapshotData['address'] as String?;
    _phoneNumber = castToType<int>(snapshotData['phone_number']);
    _insurancedBy = snapshotData['insuranced_by'] as String?;
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('GeneralPractitioners');

  static Stream<GeneralPractitionersRecord> getDocument(
          DocumentReference ref) =>
      ref.snapshots().map((s) => GeneralPractitionersRecord.fromSnapshot(s));

  static Future<GeneralPractitionersRecord> getDocumentOnce(
          DocumentReference ref) =>
      ref.get().then((s) => GeneralPractitionersRecord.fromSnapshot(s));

  static GeneralPractitionersRecord fromSnapshot(DocumentSnapshot snapshot) =>
      GeneralPractitionersRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static GeneralPractitionersRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      GeneralPractitionersRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'GeneralPractitionersRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is GeneralPractitionersRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createGeneralPractitionersRecordData({
  String? nameSurname,
  String? address,
  int? phoneNumber,
  String? insurancedBy,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'name_surname': nameSurname,
      'address': address,
      'phone_number': phoneNumber,
      'insuranced_by': insurancedBy,
    }.withoutNulls,
  );

  return firestoreData;
}

class GeneralPractitionersRecordDocumentEquality
    implements Equality<GeneralPractitionersRecord> {
  const GeneralPractitionersRecordDocumentEquality();

  @override
  bool equals(GeneralPractitionersRecord? e1, GeneralPractitionersRecord? e2) {
    return e1?.nameSurname == e2?.nameSurname &&
        e1?.address == e2?.address &&
        e1?.phoneNumber == e2?.phoneNumber &&
        e1?.insurancedBy == e2?.insurancedBy;
  }

  @override
  int hash(GeneralPractitionersRecord? e) => const ListEquality()
      .hash([e?.nameSurname, e?.address, e?.phoneNumber, e?.insurancedBy]);

  @override
  bool isValidKey(Object? o) => o is GeneralPractitionersRecord;
}
