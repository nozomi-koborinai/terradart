// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `aws_signer_signing_profile`.
const Set<String> _awsSignerSigningProfileSensitive = <String>{};

/// Factory wrapper for `aws_signer_signing_profile`.
final class DataAwsSignerSigningProfile extends Data {
  static const String tfType = 'aws_signer_signing_profile';

  DataAwsSignerSigningProfile({
    required super.localName,
    required TfArg<String> name,
    TfArg<String>? region,
    TfArg<Map<String, String>>? tags,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           'name': name,
           if (region != null) 'region': region,
           if (tags != null) 'tags': tags,
         },
       );

  @override
  Set<String> get sensitiveFields => _awsSignerSigningProfileSensitive;

  /// Reference to `name` attribute.
  TfRef<String> get nameRef => TfRef.attribute<String>(this, 'name');

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `arn` attribute.
  TfRef<String> get arn => TfRef.attribute<String>(this, 'arn');

  /// Reference to `platform_display_name` attribute.
  TfRef<String> get platformDisplayName =>
      TfRef.attribute<String>(this, 'platform_display_name');

  /// Reference to `platform_id` attribute.
  TfRef<String> get platformId => TfRef.attribute<String>(this, 'platform_id');

  /// Reference to `revocation_record` attribute.
  TfRef<List<Map<String, Object?>>> get revocationRecord =>
      TfRef.attribute<List<Map<String, Object?>>>(this, 'revocation_record');

  /// Reference to `signature_validity_period` attribute.
  TfRef<List<Map<String, Object?>>> get signatureValidityPeriod =>
      TfRef.attribute<List<Map<String, Object?>>>(
        this,
        'signature_validity_period',
      );

  /// Reference to `signing_material` attribute.
  TfRef<List<Map<String, Object?>>> get signingMaterial =>
      TfRef.attribute<List<Map<String, Object?>>>(this, 'signing_material');

  /// Reference to `signing_parameters` attribute.
  TfRef<Map<String, String>> get signingParameters =>
      TfRef.attribute<Map<String, String>>(this, 'signing_parameters');

  /// Reference to `status` attribute.
  TfRef<String> get status => TfRef.attribute<String>(this, 'status');

  /// Reference to `version` attribute.
  TfRef<String> get version => TfRef.attribute<String>(this, 'version');

  /// Reference to `version_arn` attribute.
  TfRef<String> get versionArn => TfRef.attribute<String>(this, 'version_arn');
}
