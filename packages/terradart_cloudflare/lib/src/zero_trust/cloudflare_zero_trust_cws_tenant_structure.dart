// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';

import '../account/cloudflare_account.dart' show CloudflareAccount;

/// Sensitive field paths for `cloudflare_zero_trust_cws_tenant_structure`.
const Set<String> _cloudflareZeroTrustCwsTenantStructureSensitive = <String>{};

/// Zero Trust Cws Tenant Structure enum for `application`.
extension type const ZeroTrustCwsTenantStructureApplication._(TfArg<String> _)
    implements TfArg<String> {
  ZeroTrustCwsTenantStructureApplication.variable(String name)
    : this._(TfArg.variable(name));
  ZeroTrustCwsTenantStructureApplication.expression(String template)
    : this._(TfArg.expression(template));
  const ZeroTrustCwsTenantStructureApplication.arg(TfArg<String> arg)
    : this._(arg);

  static const aws = ZeroTrustCwsTenantStructureApplication._(
    TfArgLiteral('aws'),
  );
  static const cloudflare = ZeroTrustCwsTenantStructureApplication._(
    TfArgLiteral('cloudflare'),
  );

  static const List<ZeroTrustCwsTenantStructureApplication> values = [
    aws,
    cloudflare,
  ];
}

/// Factory wrapper for `cloudflare_zero_trust_cws_tenant_structure`.
final class CloudflareZeroTrustCwsTenantStructure extends Resource {
  static const String tfType = 'cloudflare_zero_trust_cws_tenant_structure';

  CloudflareZeroTrustCwsTenantStructure(
    super.localName, {
    required RefTo<CloudflareAccount> accountId,
    required ZeroTrustCwsTenantStructureApplication application,
    TfArg<String>? importPath,
    required TfArg<String> name,
    super.lifecycle,
    super.dependsOn,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           'account_id': accountId.encodeAs('id'),
           'application': application,
           'import_path': ?importPath,
           'name': name,
         },
       );

  @override
  Set<String> get sensitiveFields =>
      _cloudflareZeroTrustCwsTenantStructureSensitive;

  /// A reference to this resource, for arguments typed
  /// `RefTo<CloudflareZeroTrustCwsTenantStructure>`.
  RefTo<CloudflareZeroTrustCwsTenantStructure> get ref => RefTo.of(this);

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

  /// Reference to `application` attribute.
  TfRef<String> get application => TfRef.attribute<String>(this, 'application');

  /// Reference to `import_path` attribute.
  TfRef<String> get importPath => TfRef.attribute<String>(this, 'import_path');
}
