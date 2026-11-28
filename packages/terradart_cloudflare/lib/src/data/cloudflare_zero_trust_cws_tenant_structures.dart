// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';
import '../account/cloudflare_account.dart' show CloudflareAccount;

/// Sensitive field paths for `cloudflare_zero_trust_cws_tenant_structures`.
const Set<String> _cloudflareZeroTrustCwsTenantStructuresSensitive = <String>{};

/// Data Zero Trust Cws Tenant Structures enum for `direction`.
extension type const DataZeroTrustCwsTenantStructuresDirection._(
  TfArg<String> _
)
    implements TfArg<String> {
  DataZeroTrustCwsTenantStructuresDirection.variable(String name)
    : this._(TfArg.variable(name));
  DataZeroTrustCwsTenantStructuresDirection.expression(String template)
    : this._(TfArg.expression(template));
  const DataZeroTrustCwsTenantStructuresDirection.arg(TfArg<String> arg)
    : this._(arg);

  static const asc = DataZeroTrustCwsTenantStructuresDirection._(
    TfArgLiteral('asc'),
  );
  static const desc = DataZeroTrustCwsTenantStructuresDirection._(
    TfArgLiteral('desc'),
  );

  static const List<DataZeroTrustCwsTenantStructuresDirection> values = [
    asc,
    desc,
  ];
}

/// Data Zero Trust Cws Tenant Structures enum for `order`.
extension type const DataZeroTrustCwsTenantStructuresOrder._(TfArg<String> _)
    implements TfArg<String> {
  DataZeroTrustCwsTenantStructuresOrder.variable(String name)
    : this._(TfArg.variable(name));
  DataZeroTrustCwsTenantStructuresOrder.expression(String template)
    : this._(TfArg.expression(template));
  const DataZeroTrustCwsTenantStructuresOrder.arg(TfArg<String> arg)
    : this._(arg);

  static const name = DataZeroTrustCwsTenantStructuresOrder._(
    TfArgLiteral('name'),
  );
  static const createdAt = DataZeroTrustCwsTenantStructuresOrder._(
    TfArgLiteral('created_at'),
  );
  static const updatedAt = DataZeroTrustCwsTenantStructuresOrder._(
    TfArgLiteral('updated_at'),
  );

  static const List<DataZeroTrustCwsTenantStructuresOrder> values = [
    name,
    createdAt,
    updatedAt,
  ];
}

/// Factory wrapper for `cloudflare_zero_trust_cws_tenant_structures`.
final class DataCloudflareZeroTrustCwsTenantStructures extends Data {
  static const String tfType = 'cloudflare_zero_trust_cws_tenant_structures';

  DataCloudflareZeroTrustCwsTenantStructures(
    super.localName, {
    required RefTo<CloudflareAccount> accountId,
    DataZeroTrustCwsTenantStructuresDirection? direction,
    TfArg<String>? importPath,
    TfArg<num>? maxItems,
    TfArg<String>? name,
    DataZeroTrustCwsTenantStructuresOrder? order,
    super.dependsOn,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           'account_id': accountId.encodeAs('id'),
           'direction': ?direction,
           'import_path': ?importPath,
           'max_items': ?maxItems,
           'name': ?name,
           'order': ?order,
         },
       );

  @override
  Set<String> get sensitiveFields =>
      _cloudflareZeroTrustCwsTenantStructuresSensitive;

  /// Reference to `name` attribute.
  TfRef<String> get name => TfRef.attribute<String>(this, 'name');

  /// Reference to `account_id` attribute.
  TfRef<String> get accountId => TfRef.attribute<String>(this, 'account_id');

  /// Reference to `direction` attribute.
  TfRef<String> get direction => TfRef.attribute<String>(this, 'direction');

  /// Reference to `import_path` attribute.
  TfRef<String> get importPath => TfRef.attribute<String>(this, 'import_path');

  /// Reference to `max_items` attribute.
  TfRef<num> get maxItems => TfRef.attribute<num>(this, 'max_items');

  /// Reference to `order` attribute.
  TfRef<String> get order => TfRef.attribute<String>(this, 'order');
}
