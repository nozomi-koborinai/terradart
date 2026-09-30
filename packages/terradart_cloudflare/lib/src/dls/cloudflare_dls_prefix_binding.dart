// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';

import '../account/cloudflare_account.dart' show CloudflareAccount;

/// Sensitive field paths for `cloudflare_dls_prefix_binding`.
const Set<String> _cloudflareDlsPrefixBindingSensitive = <String>{};

/// Factory wrapper for `cloudflare_dls_prefix_binding`.
///
/// Accepted Permissions
///
/// - `DLS: Read` - `DLS: Write` - `IP Prefixes: Write`
final class CloudflareDlsPrefixBinding extends Resource {
  static const String tfType = 'cloudflare_dls_prefix_binding';

  CloudflareDlsPrefixBinding({
    required super.localName,
    required RefTo<CloudflareAccount> accountId,
    required TfArg<String> cidr,
    required TfArg<String> prefixId,
    required TfArg<String> regionKey,
    super.lifecycle,
    super.dependsOn,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           'account_id': accountId.encodeAs('id'),
           'cidr': cidr,
           'prefix_id': prefixId,
           'region_key': regionKey,
         },
       );

  @override
  Set<String> get sensitiveFields => _cloudflareDlsPrefixBindingSensitive;

  /// A reference to this resource, for arguments typed
  /// `RefTo<CloudflareDlsPrefixBinding>`.
  RefTo<CloudflareDlsPrefixBinding> get ref => RefTo.of(this);

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `account_id` attribute.
  TfRef<String> get accountIdRef => TfRef.attribute<String>(this, 'account_id');

  /// Reference to `cidr` attribute.
  TfRef<String> get cidrRef => TfRef.attribute<String>(this, 'cidr');

  /// Reference to `prefix_id` attribute.
  TfRef<String> get prefixIdRef => TfRef.attribute<String>(this, 'prefix_id');

  /// Reference to `region_key` attribute.
  TfRef<String> get regionKeyRef => TfRef.attribute<String>(this, 'region_key');
}
