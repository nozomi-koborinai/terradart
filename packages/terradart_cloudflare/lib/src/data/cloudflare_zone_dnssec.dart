// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `cloudflare_zone_dnssec`.
const Set<String> _cloudflareZoneDnssecSensitive = <String>{};

/// Factory wrapper for `cloudflare_zone_dnssec`.
///
/// Accepted Permissions
///
/// - `DNS Read` - `DNS Write`
final class DataCloudflareZoneDnssec extends Data {
  static const String tfType = 'cloudflare_zone_dnssec';

  DataCloudflareZoneDnssec({required super.localName, TfArg<String>? zoneId})
    : super(
        terraformType: tfType,
        argMap: {if (zoneId != null) 'zone_id': zoneId},
      );

  @override
  Set<String> get sensitiveFields => _cloudflareZoneDnssecSensitive;

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `algorithm` attribute.
  TfRef<String> get algorithm => TfRef.attribute<String>(this, 'algorithm');

  /// Reference to `digest` attribute.
  TfRef<String> get digest => TfRef.attribute<String>(this, 'digest');

  /// Reference to `digest_algorithm` attribute.
  TfRef<String> get digestAlgorithm =>
      TfRef.attribute<String>(this, 'digest_algorithm');

  /// Reference to `digest_type` attribute.
  TfRef<String> get digestType => TfRef.attribute<String>(this, 'digest_type');

  /// Reference to `dnssec_multi_signer` attribute.
  TfRef<bool> get dnssecMultiSigner =>
      TfRef.attribute<bool>(this, 'dnssec_multi_signer');

  /// Reference to `dnssec_presigned` attribute.
  TfRef<bool> get dnssecPresigned =>
      TfRef.attribute<bool>(this, 'dnssec_presigned');

  /// Reference to `dnssec_use_nsec3` attribute.
  TfRef<bool> get dnssecUseNsec3 =>
      TfRef.attribute<bool>(this, 'dnssec_use_nsec3');

  /// Reference to `ds` attribute.
  TfRef<String> get ds => TfRef.attribute<String>(this, 'ds');

  /// Reference to `flags` attribute.
  TfRef<num> get flags => TfRef.attribute<num>(this, 'flags');

  /// Reference to `key_tag` attribute.
  TfRef<num> get keyTag => TfRef.attribute<num>(this, 'key_tag');

  /// Reference to `key_type` attribute.
  TfRef<String> get keyType => TfRef.attribute<String>(this, 'key_type');

  /// Reference to `modified_on` attribute.
  TfRef<String> get modifiedOn => TfRef.attribute<String>(this, 'modified_on');

  /// Reference to `public_key` attribute.
  TfRef<String> get publicKey => TfRef.attribute<String>(this, 'public_key');

  /// Reference to `status` attribute.
  TfRef<String> get status => TfRef.attribute<String>(this, 'status');
}
