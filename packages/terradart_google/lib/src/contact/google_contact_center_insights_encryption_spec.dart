// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';

import '../kms/google_kms_crypto_key.dart' show GoogleKmsCryptoKey;

/// Sensitive field paths for `google_contact_center_insights_encryption_spec`.
const Set<String> _googleContactCenterInsightsEncryptionSpecSensitive =
    <String>{};

/// Factory wrapper for `google_contact_center_insights_encryption_spec`.
///
/// Initializes a location-level encryption key specification.
///
/// Location-level CMEK for Contact Center AI Insights.
///
/// Enable `contactcenterinsights.googleapis.com` via [GoogleProjectService]
/// before apply. The [kmsKey] must live in the same region as [location].
///
/// Example:
/// ```dart
/// GoogleContactCenterInsightsEncryptionSpec(
///   'insights_cmek',
///   location: TfArg.literal('asia-northeast1'),
///   kmsKey: paymentsKey.ref,
/// );
/// ```
final class GoogleContactCenterInsightsEncryptionSpec extends Resource {
  static const String tfType = 'google_contact_center_insights_encryption_spec';

  GoogleContactCenterInsightsEncryptionSpec(
    super.localName, {
    required TfArg<String> location,
    required RefTo<GoogleKmsCryptoKey> kmsKey,
    TfArg<String>? project,
    super.lifecycle,
    super.dependsOn,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           'location': location,
           'kms_key': kmsKey.encodeAs('id'),
           'project': ?project,
         },
       );

  @override
  Set<String> get sensitiveFields =>
      _googleContactCenterInsightsEncryptionSpecSensitive;

  /// A reference to this resource, for arguments typed
  /// `RefTo<GoogleContactCenterInsightsEncryptionSpec>`.
  RefTo<GoogleContactCenterInsightsEncryptionSpec> get ref => RefTo.of(this);

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `kms_key` attribute.
  TfRef<String> get kmsKey => TfRef.attribute<String>(this, 'kms_key');

  /// Reference to `location` attribute.
  TfRef<String> get location => TfRef.attribute<String>(this, 'location');

  /// Reference to `project` attribute.
  TfRef<String> get project => TfRef.attribute<String>(this, 'project');
}
