// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';

import '../account/cloudflare_account.dart' show CloudflareAccount;
import '../zone/cloudflare_zone.dart' show CloudflareZone;

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

  CloudflareLogpushOwnershipChallenge(
    super.localName, {
    RefTo<CloudflareAccount>? accountId,
    required TfArg<String> destinationConf,
    RefTo<CloudflareZone>? zoneId,
    super.lifecycle,
    super.dependsOn,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           'account_id': ?accountId?.encodeAs('id'),
           'destination_conf': destinationConf,
           'zone_id': ?zoneId?.encodeAs('id'),
         },
       );

  @override
  Set<String> get sensitiveFields =>
      _cloudflareLogpushOwnershipChallengeSensitive;

  /// A reference to this resource, for arguments typed
  /// `RefTo<CloudflareLogpushOwnershipChallenge>`.
  RefTo<CloudflareLogpushOwnershipChallenge> get ref => RefTo.of(this);

  /// Reference to `filename` attribute.
  TfRef<String> get filename => TfRef.attribute<String>(this, 'filename');

  /// Reference to `message` attribute.
  TfRef<String> get message => TfRef.attribute<String>(this, 'message');

  /// Reference to `valid` attribute.
  TfRef<bool> get valid => TfRef.attribute<bool>(this, 'valid');

  /// Reference to `account_id` attribute.
  TfRef<String> get accountId => TfRef.attribute<String>(this, 'account_id');

  /// Reference to `destination_conf` attribute.
  TfRef<String> get destinationConf =>
      TfRef.attribute<String>(this, 'destination_conf');

  /// Reference to `zone_id` attribute.
  TfRef<String> get zoneId => TfRef.attribute<String>(this, 'zone_id');
}
