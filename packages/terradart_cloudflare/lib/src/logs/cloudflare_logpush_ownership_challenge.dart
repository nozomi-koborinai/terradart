// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `cloudflare_logpush_ownership_challenge`.
const Set<String> _cloudflareLogpushOwnershipChallengeSensitive = <String>{
  'destination_conf',
};

/// Factory wrapper for `cloudflare_logpush_ownership_challenge`.
///
/// Accepted Permissions
///
/// - `Logs Write`
final class CloudflareLogpushOwnershipChallenge extends Resource {
  static const String tfType = 'cloudflare_logpush_ownership_challenge';

  CloudflareLogpushOwnershipChallenge({
    required super.localName,
    TfArg<String>? accountId,
    required TfArg<String> destinationConf,
    TfArg<String>? zoneId,
    super.lifecycle,
    super.dependsOn,
  }) : super(
         terraformType: tfType,
         argMap: {
           if (accountId != null) 'account_id': accountId,
           'destination_conf': destinationConf,
           if (zoneId != null) 'zone_id': zoneId,
         },
       );

  @override
  Set<String> get sensitiveFields =>
      _cloudflareLogpushOwnershipChallengeSensitive;

  /// Reference to `filename` attribute.
  TfRef<String> get filename => TfRef.attribute<String>(this, 'filename');

  /// Reference to `message` attribute.
  TfRef<String> get message => TfRef.attribute<String>(this, 'message');

  /// Reference to `valid` attribute.
  TfRef<bool> get valid => TfRef.attribute<bool>(this, 'valid');
}
