// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';
import '../account/cloudflare_account.dart' show CloudflareAccount;

/// Sensitive field paths for `cloudflare_zero_trust_cws_tenant_structure_nodes`.
const Set<String> _cloudflareZeroTrustCwsTenantStructureNodesSensitive =
    <String>{};

/// Data Zero Trust Cws Tenant Structure Nodes enum for `direction`.
extension type const DataZeroTrustCwsTenantStructureNodesDirection._(
  TfArg<String> _
)
    implements TfArg<String> {
  DataZeroTrustCwsTenantStructureNodesDirection.variable(String name)
    : this._(TfArg.variable(name));
  DataZeroTrustCwsTenantStructureNodesDirection.expression(String template)
    : this._(TfArg.expression(template));
  const DataZeroTrustCwsTenantStructureNodesDirection.arg(TfArg<String> arg)
    : this._(arg);

  static const asc = DataZeroTrustCwsTenantStructureNodesDirection._(
    TfArgLiteral('asc'),
  );
  static const desc = DataZeroTrustCwsTenantStructureNodesDirection._(
    TfArgLiteral('desc'),
  );

  static const List<DataZeroTrustCwsTenantStructureNodesDirection> values = [
    asc,
    desc,
  ];
}

/// Data Zero Trust Cws Tenant Structure Nodes enum for `order`.
extension type const DataZeroTrustCwsTenantStructureNodesOrder._(
  TfArg<String> _
)
    implements TfArg<String> {
  DataZeroTrustCwsTenantStructureNodesOrder.variable(String name)
    : this._(TfArg.variable(name));
  DataZeroTrustCwsTenantStructureNodesOrder.expression(String template)
    : this._(TfArg.expression(template));
  const DataZeroTrustCwsTenantStructureNodesOrder.arg(TfArg<String> arg)
    : this._(arg);

  static const name = DataZeroTrustCwsTenantStructureNodesOrder._(
    TfArgLiteral('name'),
  );
  static const createdAt = DataZeroTrustCwsTenantStructureNodesOrder._(
    TfArgLiteral('created_at'),
  );
  static const updatedAt = DataZeroTrustCwsTenantStructureNodesOrder._(
    TfArgLiteral('updated_at'),
  );

  static const List<DataZeroTrustCwsTenantStructureNodesOrder> values = [
    name,
    createdAt,
    updatedAt,
  ];
}

/// Factory wrapper for `cloudflare_zero_trust_cws_tenant_structure_nodes`.
final class DataCloudflareZeroTrustCwsTenantStructureNodes extends Data {
  static const String tfType =
      'cloudflare_zero_trust_cws_tenant_structure_nodes';

  DataCloudflareZeroTrustCwsTenantStructureNodes(
    super.localName, {
    required RefTo<CloudflareAccount> accountId,
    DataZeroTrustCwsTenantStructureNodesDirection? direction,
    TfArg<num>? maxItems,
    TfArg<String>? name,
    TfArg<String>? nativeId,
    TfArg<String>? nodeKind,
    DataZeroTrustCwsTenantStructureNodesOrder? order,
    TfArg<String>? parent,
    required TfArg<String> structureId,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           'account_id': accountId.encodeAs('id'),
           'direction': ?direction,
           'max_items': ?maxItems,
           'name': ?name,
           'native_id': ?nativeId,
           'node_kind': ?nodeKind,
           'order': ?order,
           'parent': ?parent,
           'structure_id': structureId,
         },
       );

  @override
  Set<String> get sensitiveFields =>
      _cloudflareZeroTrustCwsTenantStructureNodesSensitive;

  /// Reference to `name` attribute.
  TfRef<String> get name => TfRef.attribute<String>(this, 'name');

  /// Reference to `account_id` attribute.
  TfRef<String> get accountId => TfRef.attribute<String>(this, 'account_id');

  /// Reference to `direction` attribute.
  TfRef<String> get direction => TfRef.attribute<String>(this, 'direction');

  /// Reference to `max_items` attribute.
  TfRef<num> get maxItems => TfRef.attribute<num>(this, 'max_items');

  /// Reference to `native_id` attribute.
  TfRef<String> get nativeId => TfRef.attribute<String>(this, 'native_id');

  /// Reference to `node_kind` attribute.
  TfRef<String> get nodeKind => TfRef.attribute<String>(this, 'node_kind');

  /// Reference to `order` attribute.
  TfRef<String> get order => TfRef.attribute<String>(this, 'order');

  /// Reference to `parent` attribute.
  TfRef<String> get parent => TfRef.attribute<String>(this, 'parent');

  /// Reference to `structure_id` attribute.
  TfRef<String> get structureId =>
      TfRef.attribute<String>(this, 'structure_id');
}
