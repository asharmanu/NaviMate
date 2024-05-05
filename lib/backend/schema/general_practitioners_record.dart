import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';
import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class GeneralPractitionersRecord extends FirestoreRecord {
  GeneralPractitionersRecord._(
    super.reference,
    super.data,
  ) {
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

  // "language" field.
  String? _language;
  String get language => _language ?? '';
  bool hasLanguage() => _language != null;

  // "Filter" field.
  List<String>? _filter;
  List<String> get filter => _filter ?? const [];
  bool hasFilter() => _filter != null;

  // "location" field.
  LatLng? _location;
  LatLng? get location => _location;
  bool hasLocation() => _location != null;

  // "postal_code" field.
  String? _postalCode;
  String get postalCode => _postalCode ?? '';
  bool hasPostalCode() => _postalCode != null;

  // "map_location_url" field.
  String? _mapLocationUrl;
  String get mapLocationUrl => _mapLocationUrl ?? '';
  bool hasMapLocationUrl() => _mapLocationUrl != null;

  // "origin" field.
  String? _origin;
  String get origin => _origin ?? '';
  bool hasOrigin() => _origin != null;

  // "general_information" field.
  String? _generalInformation;
  String get generalInformation => _generalInformation ?? '';
  bool hasGeneralInformation() => _generalInformation != null;

  // "appointments" field.
  String? _appointments;
  String get appointments => _appointments ?? '';
  bool hasAppointments() => _appointments != null;

  // "billing_type" field.
  String? _billingType;
  String get billingType => _billingType ?? '';
  bool hasBillingType() => _billingType != null;

  // "website_url" field.
  String? _websiteUrl;
  String get websiteUrl => _websiteUrl ?? '';
  bool hasWebsiteUrl() => _websiteUrl != null;

  // "photos" field.
  String? _photos;
  String get photos => _photos ?? '';
  bool hasPhotos() => _photos != null;

  // "email" field.
  String? _email;
  String get email => _email ?? '';
  bool hasEmail() => _email != null;

  // "experience" field.
  String? _experience;
  String get experience => _experience ?? '';
  bool hasExperience() => _experience != null;

  // "opening_hours" field.
  String? _openingHours;
  String get openingHours => _openingHours ?? '';
  bool hasOpeningHours() => _openingHours != null;

  // "Liked_by" field.
  List<DocumentReference>? _likedBy;
  List<DocumentReference> get likedBy => _likedBy ?? const [];
  bool hasLikedBy() => _likedBy != null;

  // "netLike" field.
  int? _netLike;
  int get netLike => _netLike ?? 0;
  bool hasNetLike() => _netLike != null;

  void _initializeFields() {
    _nameSurname = snapshotData['name_surname'] as String?;
    _address = snapshotData['address'] as String?;
    _phoneNumber = castToType<int>(snapshotData['phone_number']);
    _insurancedBy = snapshotData['insuranced_by'] as String?;
    _language = snapshotData['language'] as String?;
    _filter = getDataList(snapshotData['Filter']);
    _location = snapshotData['location'] as LatLng?;
    _postalCode = snapshotData['postal_code'] as String?;
    _mapLocationUrl = snapshotData['map_location_url'] as String?;
    _origin = snapshotData['origin'] as String?;
    _generalInformation = snapshotData['general_information'] as String?;
    _appointments = snapshotData['appointments'] as String?;
    _billingType = snapshotData['billing_type'] as String?;
    _websiteUrl = snapshotData['website_url'] as String?;
    _photos = snapshotData['photos'] as String?;
    _email = snapshotData['email'] as String?;
    _experience = snapshotData['experience'] as String?;
    _openingHours = snapshotData['opening_hours'] as String?;
    _likedBy = getDataList(snapshotData['Liked_by']);
    _netLike = castToType<int>(snapshotData['netLike']);
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
  String? language,
  LatLng? location,
  String? postalCode,
  String? mapLocationUrl,
  String? origin,
  String? generalInformation,
  String? appointments,
  String? billingType,
  String? websiteUrl,
  String? photos,
  String? email,
  String? experience,
  String? openingHours,
  int? netLike,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'name_surname': nameSurname,
      'address': address,
      'phone_number': phoneNumber,
      'insuranced_by': insurancedBy,
      'language': language,
      'location': location,
      'postal_code': postalCode,
      'map_location_url': mapLocationUrl,
      'origin': origin,
      'general_information': generalInformation,
      'appointments': appointments,
      'billing_type': billingType,
      'website_url': websiteUrl,
      'photos': photos,
      'email': email,
      'experience': experience,
      'opening_hours': openingHours,
      'netLike': netLike,
    }.withoutNulls,
  );

  return firestoreData;
}

class GeneralPractitionersRecordDocumentEquality
    implements Equality<GeneralPractitionersRecord> {
  const GeneralPractitionersRecordDocumentEquality();

  @override
  bool equals(GeneralPractitionersRecord? e1, GeneralPractitionersRecord? e2) {
    const listEquality = ListEquality();
    return e1?.nameSurname == e2?.nameSurname &&
        e1?.address == e2?.address &&
        e1?.phoneNumber == e2?.phoneNumber &&
        e1?.insurancedBy == e2?.insurancedBy &&
        e1?.language == e2?.language &&
        listEquality.equals(e1?.filter, e2?.filter) &&
        e1?.location == e2?.location &&
        e1?.postalCode == e2?.postalCode &&
        e1?.mapLocationUrl == e2?.mapLocationUrl &&
        e1?.origin == e2?.origin &&
        e1?.generalInformation == e2?.generalInformation &&
        e1?.appointments == e2?.appointments &&
        e1?.billingType == e2?.billingType &&
        e1?.websiteUrl == e2?.websiteUrl &&
        e1?.photos == e2?.photos &&
        e1?.email == e2?.email &&
        e1?.experience == e2?.experience &&
        e1?.openingHours == e2?.openingHours &&
        listEquality.equals(e1?.likedBy, e2?.likedBy) &&
        e1?.netLike == e2?.netLike;
  }

  @override
  int hash(GeneralPractitionersRecord? e) => const ListEquality().hash([
        e?.nameSurname,
        e?.address,
        e?.phoneNumber,
        e?.insurancedBy,
        e?.language,
        e?.filter,
        e?.location,
        e?.postalCode,
        e?.mapLocationUrl,
        e?.origin,
        e?.generalInformation,
        e?.appointments,
        e?.billingType,
        e?.websiteUrl,
        e?.photos,
        e?.email,
        e?.experience,
        e?.openingHours,
        e?.likedBy,
        e?.netLike
      ]);

  @override
  bool isValidKey(Object? o) => o is GeneralPractitionersRecord;
}
