// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';

import '../account/cloudflare_account.dart' show CloudflareAccount;

/// Sensitive field paths for `cloudflare_zero_trust_cws_rego_metadata`.
const Set<String> _cloudflareZeroTrustCwsRegoMetadataSensitive = <String>{};

/// Factory wrapper for `cloudflare_zero_trust_cws_rego_metadata`.
final class CloudflareZeroTrustCwsRegoMetadata extends Resource {
  static const String tfType = 'cloudflare_zero_trust_cws_rego_metadata';

  CloudflareZeroTrustCwsRegoMetadata(
    super.localName, {
    required RefTo<CloudflareAccount> accountId,
    required TfArg<String> data,
    required TfArg<String> importPath,
    required TfArg<String> name,
    super.lifecycle,
    super.dependsOn,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           'account_id': accountId.encodeAs('id'),
           'data': data,
           'import_path': importPath,
           'name': name,
         },
       );

  @override
  Set<String> get sensitiveFields =>
      _cloudflareZeroTrustCwsRegoMetadataSensitive;

  /// A reference to this resource, for arguments typed
  /// `RefTo<CloudflareZeroTrustCwsRegoMetadata>`.
  RefTo<CloudflareZeroTrustCwsRegoMetadata> get ref => RefTo.of(this);

  /// Reference to `name` attribute.
  TfRef<String> get name => TfRef.attribute<String>(this, 'name');

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `created_at` attribute.
  TfRef<String> get createdAt => TfRef.attribute<String>(this, 'created_at');

  /// Reference to `updated_at` attribute.
  TfRef<String> get updatedAt => TfRef.attribute<String>(this, 'updated_at');

  /// Reference to `account_id` attribute.
  TfRef<String> get accountId => TfRef.attribute<String>(this, 'account_id');

  /// Reference to `data` attribute.
  TfRef<String> get data => TfRef.attribute<String>(this, 'data');

  /// Reference to `import_path` attribute.
  TfRef<String> get importPath => TfRef.attribute<String>(this, 'import_path');
}
