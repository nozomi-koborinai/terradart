// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';

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
///   localName: 'insights_cmek',
///   location: TfArg.literal('asia-northeast1'),
///   kmsKey: TfArg.ref(paymentsKey.id),
/// );
/// ```
final class GoogleContactCenterInsightsEncryptionSpec extends Resource {
  static const String tfType = 'google_contact_center_insights_encryption_spec';

  GoogleContactCenterInsightsEncryptionSpec({
    required super.localName,
    required TfArg<String> location,
    required TfArg<String> kmsKey,
    TfArg<String>? project,
    super.lifecycle,
    super.dependsOn,
  }) : super(
         terraformType: tfType,
         argMap: {
           'location': location,
           'kms_key': kmsKey,
           if (project != null) 'project': project,
         },
       );

  @override
  Set<String> get sensitiveFields =>
      _googleContactCenterInsightsEncryptionSpecSensitive;

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');
}
