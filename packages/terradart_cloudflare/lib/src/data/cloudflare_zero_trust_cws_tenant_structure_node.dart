// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:meta/meta.dart';
import 'package:terradart_core/terradart_core.dart';
import '../zero_trust/cloudflare_zero_trust_cws_tenant_structure_node.dart';
import '../account/cloudflare_account.dart' show CloudflareAccount;

/// Sensitive field paths for `cloudflare_zero_trust_cws_tenant_structure_node`.
const Set<String> _cloudflareZeroTrustCwsTenantStructureNodeSensitive =
    <String>{};

/// Typed helper for the `filter` block of
/// `cloudflare_zero_trust_cws_tenant_structure_node` (derived from provider schema).
@immutable
final class DataZeroTrustCwsTenantStructureNodeFilter {
  const DataZeroTrustCwsTenantStructureNodeFilter({
    this.direction,
    this.name,
    this.nativeId,
    this.nodeKind,
    this.order,
    this.parent,
  });

  final DataZeroTrustCwsTenantStructureNodeDirection? direction;

  final TfArg<String>? name;

  final TfArg<String>? nativeId;

  final TfArg<String>? nodeKind;

  final DataZeroTrustCwsTenantStructureNodeOrder? order;

  final TfArg<String>? parent;

  @internal
  Map<String, Object?> encode() => {
    'direction': ?direction?.toTfJson(),
    'name': ?name?.toTfJson(),
    'native_id': ?nativeId?.toTfJson(),
    'node_kind': ?nodeKind?.toTfJson(),
    'order': ?order?.toTfJson(),
    'parent': ?parent?.toTfJson(),
  };
}

/// `direction` — derived from the provider schema description.
extension type const DataZeroTrustCwsTenantStructureNodeDirection._(
  TfArg<String> _
)
    implements TfArg<String> {
  DataZeroTrustCwsTenantStructureNodeDirection.variable(String name)
    : this._(TfArg.variable(name));
  DataZeroTrustCwsTenantStructureNodeDirection.expression(String template)
    : this._(TfArg.expression(template));
  const DataZeroTrustCwsTenantStructureNodeDirection.arg(TfArg<String> arg)
    : this._(arg);

  static const asc = DataZeroTrustCwsTenantStructureNodeDirection._(
    TfArgLiteral('asc'),
  );
  static const desc = DataZeroTrustCwsTenantStructureNodeDirection._(
    TfArgLiteral('desc'),
  );

  static const List<DataZeroTrustCwsTenantStructureNodeDirection> values = [
    asc,
    desc,
  ];
}

/// `order` — derived from the provider schema description.
extension type const DataZeroTrustCwsTenantStructureNodeOrder._(TfArg<String> _)
    implements TfArg<String> {
  DataZeroTrustCwsTenantStructureNodeOrder.variable(String name)
    : this._(TfArg.variable(name));
  DataZeroTrustCwsTenantStructureNodeOrder.expression(String template)
    : this._(TfArg.expression(template));
  const DataZeroTrustCwsTenantStructureNodeOrder.arg(TfArg<String> arg)
    : this._(arg);

  static const name = DataZeroTrustCwsTenantStructureNodeOrder._(
    TfArgLiteral('name'),
  );
  static const createdAt = DataZeroTrustCwsTenantStructureNodeOrder._(
    TfArgLiteral('created_at'),
  );
  static const updatedAt = DataZeroTrustCwsTenantStructureNodeOrder._(
    TfArgLiteral('updated_at'),
  );

  static const List<DataZeroTrustCwsTenantStructureNodeOrder> values = [
    name,
    createdAt,
    updatedAt,
  ];
}

/// Factory wrapper for `cloudflare_zero_trust_cws_tenant_structure_node`.
final class DataCloudflareZeroTrustCwsTenantStructureNode extends Data {
  static const String tfType =
      'cloudflare_zero_trust_cws_tenant_structure_node';

  DataCloudflareZeroTrustCwsTenantStructureNode(
    super.localName, {
    required RefTo<CloudflareAccount> accountId,
    TfArg<String>? nodeId,
    required TfArg<String> structureId,
    DataZeroTrustCwsTenantStructureNodeFilter? filter,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           'account_id': accountId.encodeAs('id'),
           'node_id': ?nodeId,
           'structure_id': structureId,
           if (filter != null) 'filter': TfArg.literal(filter.encode()),
         },
       );

  @override
  Set<String> get sensitiveFields =>
      _cloudflareZeroTrustCwsTenantStructureNodeSensitive;

  /// A reference to the `cloudflare_zero_trust_cws_tenant_structure_node` this data source reads, for
  /// arguments typed `RefTo<CloudflareZeroTrustCwsTenantStructureNode>`.
  RefTo<CloudflareZeroTrustCwsTenantStructureNode> get ref =>
      RefTo.read(this); // ignore: invalid_use_of_internal_member

  /// Reference to `name` attribute.
  TfRef<String> get name => TfRef.attribute<String>(this, 'name');

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `created_at` attribute.
  TfRef<String> get createdAt => TfRef.attribute<String>(this, 'created_at');

  /// Reference to `native_id` attribute.
  TfRef<String> get nativeId => TfRef.attribute<String>(this, 'native_id');

  /// Reference to `node_kind` attribute.
  TfRef<String> get nodeKind => TfRef.attribute<String>(this, 'node_kind');

  /// Reference to `parent` attribute.
  TfRef<String> get parent => TfRef.attribute<String>(this, 'parent');

  /// Reference to `updated_at` attribute.
  TfRef<String> get updatedAt => TfRef.attribute<String>(this, 'updated_at');

  /// Reference to `account_id` attribute.
  TfRef<String> get accountId => TfRef.attribute<String>(this, 'account_id');

  /// Reference to `node_id` attribute.
  TfRef<String> get nodeId => TfRef.attribute<String>(this, 'node_id');

  /// Reference to `structure_id` attribute.
  TfRef<String> get structureId =>
      TfRef.attribute<String>(this, 'structure_id');
}
