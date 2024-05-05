import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';
import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class HospitalsRecord extends FirestoreRecord {
  HospitalsRecord._(
    super.reference,
    super.data,
  ) {
    _initializeFields();
  }

  // "hospital_name" field.
  String? _hospitalName;
  String get hospitalName => _hospitalName ?? '';
  bool hasHospitalName() => _hospitalName != null;

  // "address" field.
  String? _address;
  String get address => _address ?? '';
  bool hasAddress() => _address != null;

  // "postal_code" field.
  String? _postalCode;
  String get postalCode => _postalCode ?? '';
  bool hasPostalCode() => _postalCode != null;

  // "location_url" field.
  String? _locationUrl;
  String get locationUrl => _locationUrl ?? '';
  bool hasLocationUrl() => _locationUrl != null;

  // "email" field.
  String? _email;
  String get email => _email ?? '';
  bool hasEmail() => _email != null;

  // "open_hours" field.
  String? _openHours;
  String get openHours => _openHours ?? '';
  bool hasOpenHours() => _openHours != null;

  // "general_information" field.
  String? _generalInformation;
  String get generalInformation => _generalInformation ?? '';
  bool hasGeneralInformation() => _generalInformation != null;

  // "insurance_by" field.
  String? _insuranceBy;
  String get insuranceBy => _insuranceBy ?? '';
  bool hasInsuranceBy() => _insuranceBy != null;

  // "Filter" field.
  List<String>? _filter;
  List<String> get filter => _filter ?? const [];
  bool hasFilter() => _filter != null;

  // "photos" field.
  String? _photos;
  String get photos => _photos ?? '';
  bool hasPhotos() => _photos != null;

  // "languages" field.
  String? _languages;
  String get languages => _languages ?? '';
  bool hasLanguages() => _languages != null;

  // "website" field.
  String? _website;
  String get website => _website ?? '';
  bool hasWebsite() => _website != null;

  // "appointment" field.
  String? _appointment;
  String get appointment => _appointment ?? '';
  bool hasAppointment() => _appointment != null;

  // "location_LatLng" field.
  LatLng? _locationLatLng;
  LatLng? get locationLatLng => _locationLatLng;
  bool hasLocationLatLng() => _locationLatLng != null;

  // "phone_number" field.
  int? _phoneNumber;
  int get phoneNumber => _phoneNumber ?? 0;
  bool hasPhoneNumber() => _phoneNumber != null;

  void _initializeFields() {
    _hospitalName = snapshotData['hospital_name'] as String?;
    _address = snapshotData['address'] as String?;
    _postalCode = snapshotData['postal_code'] as String?;
    _locationUrl = snapshotData['location_url'] as String?;
    _email = snapshotData['email'] as String?;
    _openHours = snapshotData['open_hours'] as String?;
    _generalInformation = snapshotData['general_information'] as String?;
    _insuranceBy = snapshotData['insurance_by'] as String?;
    _filter = getDataList(snapshotData['Filter']);
    _photos = snapshotData['photos'] as String?;
    _languages = snapshotData['languages'] as String?;
    _website = snapshotData['website'] as String?;
    _appointment = snapshotData['appointment'] as String?;
    _locationLatLng = snapshotData['location_LatLng'] as LatLng?;
    _phoneNumber = castToType<int>(snapshotData['phone_number']);
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('hospitals');

  static Stream<HospitalsRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => HospitalsRecord.fromSnapshot(s));

  static Future<HospitalsRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => HospitalsRecord.fromSnapshot(s));

  static HospitalsRecord fromSnapshot(DocumentSnapshot snapshot) =>
      HospitalsRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static HospitalsRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      HospitalsRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'HospitalsRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is HospitalsRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createHospitalsRecordData({
  String? hospitalName,
  String? address,
  String? postalCode,
  String? locationUrl,
  String? email,
  String? openHours,
  String? generalInformation,
  String? insuranceBy,
  String? photos,
  String? languages,
  String? website,
  String? appointment,
  LatLng? locationLatLng,
  int? phoneNumber,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'hospital_name': hospitalName,
      'address': address,
      'postal_code': postalCode,
      'location_url': locationUrl,
      'email': email,
      'open_hours': openHours,
      'general_information': generalInformation,
      'insurance_by': insuranceBy,
      'photos': photos,
      'languages': languages,
      'website': website,
      'appointment': appointment,
      'location_LatLng': locationLatLng,
      'phone_number': phoneNumber,
    }.withoutNulls,
  );

  return firestoreData;
}

class HospitalsRecordDocumentEquality implements Equality<HospitalsRecord> {
  const HospitalsRecordDocumentEquality();

  @override
  bool equals(HospitalsRecord? e1, HospitalsRecord? e2) {
    const listEquality = ListEquality();
    return e1?.hospitalName == e2?.hospitalName &&
        e1?.address == e2?.address &&
        e1?.postalCode == e2?.postalCode &&
        e1?.locationUrl == e2?.locationUrl &&
        e1?.email == e2?.email &&
        e1?.openHours == e2?.openHours &&
        e1?.generalInformation == e2?.generalInformation &&
        e1?.insuranceBy == e2?.insuranceBy &&
        listEquality.equals(e1?.filter, e2?.filter) &&
        e1?.photos == e2?.photos &&
        e1?.languages == e2?.languages &&
        e1?.website == e2?.website &&
        e1?.appointment == e2?.appointment &&
        e1?.locationLatLng == e2?.locationLatLng &&
        e1?.phoneNumber == e2?.phoneNumber;
  }

  @override
  int hash(HospitalsRecord? e) => const ListEquality().hash([
        e?.hospitalName,
        e?.address,
        e?.postalCode,
        e?.locationUrl,
        e?.email,
        e?.openHours,
        e?.generalInformation,
        e?.insuranceBy,
        e?.filter,
        e?.photos,
        e?.languages,
        e?.website,
        e?.appointment,
        e?.locationLatLng,
        e?.phoneNumber
      ]);

  @override
  bool isValidKey(Object? o) => o is HospitalsRecord;
}
