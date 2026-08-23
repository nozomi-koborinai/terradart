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
final class CloudflareZoneDnssec extends Resource {
  static const String tfType = 'cloudflare_zone_dnssec';

  CloudflareZoneDnssec({
    required super.localName,
    TfArg<bool>? dnssecMultiSigner,
    TfArg<bool>? dnssecPresigned,
    TfArg<bool>? dnssecUseNsec3,
    TfArg<String>? status,
    required TfArg<String> zoneId,
    super.lifecycle,
    super.dependsOn,
  }) : super(
         terraformType: tfType,
         argMap: {
           if (dnssecMultiSigner != null)
             'dnssec_multi_signer': dnssecMultiSigner,
           if (dnssecPresigned != null) 'dnssec_presigned': dnssecPresigned,
           if (dnssecUseNsec3 != null) 'dnssec_use_nsec3': dnssecUseNsec3,
           if (status != null) 'status': status,
           'zone_id': zoneId,
         },
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
}
