import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';
import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class SpecialistsRecord extends FirestoreRecord {
  SpecialistsRecord._(
    super.reference,
    super.data,
  ) {
    _initializeFields();
  }

  // "name_surname" field.
  String? _nameSurname;
  String get nameSurname => _nameSurname ?? '';
  bool hasNameSurname() => _nameSurname != null;

  // "Filter" field.
  List<String>? _filter;
  List<String> get filter => _filter ?? const [];
  bool hasFilter() => _filter != null;

  // "Speciality" field.
  String? _speciality;
  String get speciality => _speciality ?? '';
  bool hasSpeciality() => _speciality != null;

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

  // "location_LanLng" field.
  LatLng? _locationLanLng;
  LatLng? get locationLanLng => _locationLanLng;
  bool hasLocationLanLng() => _locationLanLng != null;

  // "number" field.
  String? _number;
  String get number => _number ?? '';
  bool hasNumber() => _number != null;

  // "email" field.
  String? _email;
  String get email => _email ?? '';
  bool hasEmail() => _email != null;

  // "open_hours" field.
  String? _openHours;
  String get openHours => _openHours ?? '';
  bool hasOpenHours() => _openHours != null;

  // "Liked_by" field.
  List<DocumentReference>? _likedBy;
  List<DocumentReference> get likedBy => _likedBy ?? const [];
  bool hasLikedBy() => _likedBy != null;

  // "netLike" field.
  int? _netLike;
  int get netLike => _netLike ?? 0;
  bool hasNetLike() => _netLike != null;

  // "language" field.
  String? _language;
  String get language => _language ?? '';
  bool hasLanguage() => _language != null;

  // "general_information" field.
  String? _generalInformation;
  String get generalInformation => _generalInformation ?? '';
  bool hasGeneralInformation() => _generalInformation != null;

  // "photo" field.
  String? _photo;
  String get photo => _photo ?? '';
  bool hasPhoto() => _photo != null;

  // "insured_by" field.
  String? _insuredBy;
  String get insuredBy => _insuredBy ?? '';
  bool hasInsuredBy() => _insuredBy != null;

  // "appointment" field.
  String? _appointment;
  String get appointment => _appointment ?? '';
  bool hasAppointment() => _appointment != null;

  // "website" field.
  String? _website;
  String get website => _website ?? '';
  bool hasWebsite() => _website != null;

  void _initializeFields() {
    _nameSurname = snapshotData['name_surname'] as String?;
    _filter = getDataList(snapshotData['Filter']);
    _speciality = snapshotData['Speciality'] as String?;
    _address = snapshotData['address'] as String?;
    _postalCode = snapshotData['postal_code'] as String?;
    _locationUrl = snapshotData['location_url'] as String?;
    _locationLanLng = snapshotData['location_LanLng'] as LatLng?;
    _number = snapshotData['number'] as String?;
    _email = snapshotData['email'] as String?;
    _openHours = snapshotData['open_hours'] as String?;
    _likedBy = getDataList(snapshotData['Liked_by']);
    _netLike = castToType<int>(snapshotData['netLike']);
    _language = snapshotData['language'] as String?;
    _generalInformation = snapshotData['general_information'] as String?;
    _photo = snapshotData['photo'] as String?;
    _insuredBy = snapshotData['insured_by'] as String?;
    _appointment = snapshotData['appointment'] as String?;
    _website = snapshotData['website'] as String?;
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('Specialists');

  static Stream<SpecialistsRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => SpecialistsRecord.fromSnapshot(s));

  static Future<SpecialistsRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => SpecialistsRecord.fromSnapshot(s));

  static SpecialistsRecord fromSnapshot(DocumentSnapshot snapshot) =>
      SpecialistsRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static SpecialistsRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      SpecialistsRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'SpecialistsRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is SpecialistsRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createSpecialistsRecordData({
  String? nameSurname,
  String? speciality,
  String? address,
  String? postalCode,
  String? locationUrl,
  LatLng? locationLanLng,
  String? number,
  String? email,
  String? openHours,
  int? netLike,
  String? language,
  String? generalInformation,
  String? photo,
  String? insuredBy,
  String? appointment,
  String? website,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'name_surname': nameSurname,
      'Speciality': speciality,
      'address': address,
      'postal_code': postalCode,
      'location_url': locationUrl,
      'location_LanLng': locationLanLng,
      'number': number,
      'email': email,
      'open_hours': openHours,
      'netLike': netLike,
      'language': language,
      'general_information': generalInformation,
      'photo': photo,
      'insured_by': insuredBy,
      'appointment': appointment,
      'website': website,
    }.withoutNulls,
  );

  return firestoreData;
}

class SpecialistsRecordDocumentEquality implements Equality<SpecialistsRecord> {
  const SpecialistsRecordDocumentEquality();

  @override
  bool equals(SpecialistsRecord? e1, SpecialistsRecord? e2) {
    const listEquality = ListEquality();
    return e1?.nameSurname == e2?.nameSurname &&
        listEquality.equals(e1?.filter, e2?.filter) &&
        e1?.speciality == e2?.speciality &&
        e1?.address == e2?.address &&
        e1?.postalCode == e2?.postalCode &&
        e1?.locationUrl == e2?.locationUrl &&
        e1?.locationLanLng == e2?.locationLanLng &&
        e1?.number == e2?.number &&
        e1?.email == e2?.email &&
        e1?.openHours == e2?.openHours &&
        listEquality.equals(e1?.likedBy, e2?.likedBy) &&
        e1?.netLike == e2?.netLike &&
        e1?.language == e2?.language &&
        e1?.generalInformation == e2?.generalInformation &&
        e1?.photo == e2?.photo &&
        e1?.insuredBy == e2?.insuredBy &&
        e1?.appointment == e2?.appointment &&
        e1?.website == e2?.website;
  }

  @override
  int hash(SpecialistsRecord? e) => const ListEquality().hash([
        e?.nameSurname,
        e?.filter,
        e?.speciality,
        e?.address,
        e?.postalCode,
        e?.locationUrl,
        e?.locationLanLng,
        e?.number,
        e?.email,
        e?.openHours,
        e?.likedBy,
        e?.netLike,
        e?.language,
        e?.generalInformation,
        e?.photo,
        e?.insuredBy,
        e?.appointment,
        e?.website
      ]);

  @override
  bool isValidKey(Object? o) => o is SpecialistsRecord;
}
