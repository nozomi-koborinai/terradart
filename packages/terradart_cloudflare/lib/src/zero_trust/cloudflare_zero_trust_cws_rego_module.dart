// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';

import '../account/cloudflare_account.dart' show CloudflareAccount;

/// Sensitive field paths for `cloudflare_zero_trust_cws_rego_module`.
const Set<String> _cloudflareZeroTrustCwsRegoModuleSensitive = <String>{};

/// Factory wrapper for `cloudflare_zero_trust_cws_rego_module`.
final class CloudflareZeroTrustCwsRegoModule extends Resource {
  static const String tfType = 'cloudflare_zero_trust_cws_rego_module';

  CloudflareZeroTrustCwsRegoModule(
    super.localName, {
    required RefTo<CloudflareAccount> accountId,
    required TfArg<String> name,
    required TfArg<String> regoSource,
    super.lifecycle,
    super.dependsOn,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           'account_id': accountId.encodeAs('id'),
           'name': name,
           'rego_source': regoSource,
         },
       );

  @override
  Set<String> get sensitiveFields => _cloudflareZeroTrustCwsRegoModuleSensitive;

  /// A reference to this resource, for arguments typed
  /// `RefTo<CloudflareZeroTrustCwsRegoModule>`.
  RefTo<CloudflareZeroTrustCwsRegoModule> get ref => RefTo.of(this);

  /// Reference to `name` attribute.
  TfRef<String> get name => TfRef.attribute<String>(this, 'name');

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `created_at` attribute.
  TfRef<String> get createdAt => TfRef.attribute<String>(this, 'created_at');

  /// Reference to `package_path` attribute.
  TfRef<String> get packagePath =>
      TfRef.attribute<String>(this, 'package_path');

  /// Reference to `updated_at` attribute.
  TfRef<String> get updatedAt => TfRef.attribute<String>(this, 'updated_at');

  /// Reference to `account_id` attribute.
  TfRef<String> get accountId => TfRef.attribute<String>(this, 'account_id');

  /// Reference to `rego_source` attribute.
  TfRef<String> get regoSource => TfRef.attribute<String>(this, 'rego_source');
}
