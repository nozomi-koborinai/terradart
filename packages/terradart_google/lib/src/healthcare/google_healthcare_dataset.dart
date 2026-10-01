// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:meta/meta.dart';
import 'package:terradart_core/terradart_core.dart';

import '../kms/google_kms_crypto_key.dart' show GoogleKmsCryptoKey;

/// Sensitive field paths for `google_healthcare_dataset`.
const Set<String> _googleHealthcareDatasetSensitive = <String>{};

/// Typed helper for the `encryption_spec` block of
/// `google_healthcare_dataset` (derived from provider schema).
@immutable
final class HealthcareDatasetEncryptionSpec {
  const HealthcareDatasetEncryptionSpec({this.kmsKeyName});

  final RefTo<GoogleKmsCryptoKey>? kmsKeyName;

  Map<String, Object?> encode() => {
    'kms_key_name': ?kmsKeyName?.encodeAs('id').toTfJson(),
  };
}

/// Factory wrapper for `google_healthcare_dataset`.
///
/// A Healthcare `Dataset` is a toplevel logical grouping of `dicomStores`,
/// `fhirStores` and `hl7V2Stores`.
final class GoogleHealthcareDataset extends Resource {
  static const String tfType = 'google_healthcare_dataset';

  GoogleHealthcareDataset(
    super.localName, {
    required TfArg<String> name,
    required TfArg<String> location,
    TfArg<String>? timeZone,
    TfArg<String>? project,
    HealthcareDatasetEncryptionSpec? encryptionSpec,
    super.lifecycle,
    super.dependsOn,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           'name': name,
           'location': location,
           'time_zone': ?timeZone,
           'project': ?project,
           if (encryptionSpec != null)
             'encryption_spec': TfArg.literal(encryptionSpec.encode()),
         },
       );

  @override
  Set<String> get sensitiveFields => _googleHealthcareDatasetSensitive;

  /// A reference to this resource, for arguments typed
  /// `RefTo<GoogleHealthcareDataset>`.
  RefTo<GoogleHealthcareDataset> get ref => RefTo.of(this);

  /// Reference to `name` attribute.
  TfRef<String> get name => TfRef.attribute<String>(this, 'name');

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `self_link` attribute.
  TfRef<String> get selfLink => TfRef.attribute<String>(this, 'self_link');

  /// Reference to `deletion_policy` attribute.
  TfRef<String> get deletionPolicy =>
      TfRef.attribute<String>(this, 'deletion_policy');

  /// Reference to `location` attribute.
  TfRef<String> get location => TfRef.attribute<String>(this, 'location');

  /// Reference to `project` attribute.
  TfRef<String> get project => TfRef.attribute<String>(this, 'project');

  /// Reference to `time_zone` attribute.
  TfRef<String> get timeZone => TfRef.attribute<String>(this, 'time_zone');
}
