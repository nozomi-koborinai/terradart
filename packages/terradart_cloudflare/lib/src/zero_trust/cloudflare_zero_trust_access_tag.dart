// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';

import '../account/cloudflare_account.dart' show CloudflareAccount;

/// Sensitive field paths for `cloudflare_zero_trust_access_tag`.
const Set<String> _cloudflareZeroTrustAccessTagSensitive = <String>{};

/// Factory wrapper for `cloudflare_zero_trust_access_tag`.
final class CloudflareZeroTrustAccessTag extends Resource {
  static const String tfType = 'cloudflare_zero_trust_access_tag';

  CloudflareZeroTrustAccessTag(
    super.localName, {
    required RefTo<CloudflareAccount> accountId,
    required TfArg<String> name,
    super.lifecycle,
    super.dependsOn,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {'account_id': accountId.encodeAs('id'), 'name': name},
       );

  @override
  Set<String> get sensitiveFields => _cloudflareZeroTrustAccessTagSensitive;

  /// A reference to this resource, for arguments typed
  /// `RefTo<CloudflareZeroTrustAccessTag>`.
  RefTo<CloudflareZeroTrustAccessTag> get ref => RefTo.of(this);

  /// Reference to `name` attribute.
  TfRef<String> get name => TfRef.attribute<String>(this, 'name');

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `account_id` attribute.
  TfRef<String> get accountId => TfRef.attribute<String>(this, 'account_id');
}
