// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';

import '../account/cloudflare_account.dart' show CloudflareAccount;

/// Sensitive field paths for `cloudflare_zero_trust_cws_policy`.
const Set<String> _cloudflareZeroTrustCwsPolicySensitive = <String>{};

/// Factory wrapper for `cloudflare_zero_trust_cws_policy`.
final class CloudflareZeroTrustCwsPolicy extends Resource {
  static const String tfType = 'cloudflare_zero_trust_cws_policy';

  CloudflareZeroTrustCwsPolicy(
    super.localName, {
    required RefTo<CloudflareAccount> accountId,
    TfArg<String>? description,
    required TfArg<String> entrypoint,
    required TfArg<String> filter,
    required TfArg<String> name,
    required TfArg<String> regoSource,
    TfArg<Map<String, String>>? tags,
    super.lifecycle,
    super.dependsOn,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           'account_id': accountId.encodeAs('id'),
           'description': ?description,
           'entrypoint': entrypoint,
           'filter': filter,
           'name': name,
           'rego_source': regoSource,
           'tags': ?tags,
         },
       );

  @override
  Set<String> get sensitiveFields => _cloudflareZeroTrustCwsPolicySensitive;

  /// A reference to this resource, for arguments typed
  /// `RefTo<CloudflareZeroTrustCwsPolicy>`.
  RefTo<CloudflareZeroTrustCwsPolicy> get ref => RefTo.of(this);

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

  /// Reference to `description` attribute.
  TfRef<String> get description => TfRef.attribute<String>(this, 'description');

  /// Reference to `entrypoint` attribute.
  TfRef<String> get entrypoint => TfRef.attribute<String>(this, 'entrypoint');

  /// Reference to `filter` attribute.
  TfRef<String> get filter => TfRef.attribute<String>(this, 'filter');

  /// Reference to `rego_source` attribute.
  TfRef<String> get regoSource => TfRef.attribute<String>(this, 'rego_source');

  /// Reference to `tags` attribute.
  TfRef<Map<String, String>> get tags =>
      TfRef.attribute<Map<String, String>>(this, 'tags');
}
