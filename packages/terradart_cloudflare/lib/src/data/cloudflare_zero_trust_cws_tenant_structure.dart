// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:meta/meta.dart';
import 'package:terradart_core/terradart_core.dart';
import '../zero_trust/cloudflare_zero_trust_cws_tenant_structure.dart';
import '../account/cloudflare_account.dart' show CloudflareAccount;

/// Sensitive field paths for `cloudflare_zero_trust_cws_tenant_structure`.
const Set<String> _cloudflareZeroTrustCwsTenantStructureSensitive = <String>{};

/// Typed helper for the `filter` block of
/// `cloudflare_zero_trust_cws_tenant_structure` (derived from provider schema).
@immutable
final class DataZeroTrustCwsTenantStructureFilter {
  const DataZeroTrustCwsTenantStructureFilter({
    this.direction,
    this.importPath,
    this.name,
    this.order,
  });

  final DataZeroTrustCwsTenantStructureDirection? direction;

  final TfArg<String>? importPath;

  final TfArg<String>? name;

  final DataZeroTrustCwsTenantStructureOrder? order;

  @internal
  Map<String, Object?> encode() => {
    'direction': ?direction?.toTfJson(),
    'import_path': ?importPath?.toTfJson(),
    'name': ?name?.toTfJson(),
    'order': ?order?.toTfJson(),
  };
}

/// `direction` — derived from the provider schema description.
extension type const DataZeroTrustCwsTenantStructureDirection._(TfArg<String> _)
    implements TfArg<String> {
  DataZeroTrustCwsTenantStructureDirection.variable(String name)
    : this._(TfArg.variable(name));
  DataZeroTrustCwsTenantStructureDirection.expression(String template)
    : this._(TfArg.expression(template));
  const DataZeroTrustCwsTenantStructureDirection.arg(TfArg<String> arg)
    : this._(arg);

  static const asc = DataZeroTrustCwsTenantStructureDirection._(
    TfArgLiteral('asc'),
  );
  static const desc = DataZeroTrustCwsTenantStructureDirection._(
    TfArgLiteral('desc'),
  );

  static const List<DataZeroTrustCwsTenantStructureDirection> values = [
    asc,
    desc,
  ];
}

/// `order` — derived from the provider schema description.
extension type const DataZeroTrustCwsTenantStructureOrder._(TfArg<String> _)
    implements TfArg<String> {
  DataZeroTrustCwsTenantStructureOrder.variable(String name)
    : this._(TfArg.variable(name));
  DataZeroTrustCwsTenantStructureOrder.expression(String template)
    : this._(TfArg.expression(template));
  const DataZeroTrustCwsTenantStructureOrder.arg(TfArg<String> arg)
    : this._(arg);

  static const name = DataZeroTrustCwsTenantStructureOrder._(
    TfArgLiteral('name'),
  );
  static const createdAt = DataZeroTrustCwsTenantStructureOrder._(
    TfArgLiteral('created_at'),
  );
  static const updatedAt = DataZeroTrustCwsTenantStructureOrder._(
    TfArgLiteral('updated_at'),
  );

  static const List<DataZeroTrustCwsTenantStructureOrder> values = [
    name,
    createdAt,
    updatedAt,
  ];
}

/// Factory wrapper for `cloudflare_zero_trust_cws_tenant_structure`.
final class DataCloudflareZeroTrustCwsTenantStructure extends Data {
  static const String tfType = 'cloudflare_zero_trust_cws_tenant_structure';

  DataCloudflareZeroTrustCwsTenantStructure(
    super.localName, {
    required RefTo<CloudflareAccount> accountId,
    TfArg<String>? structureId,
    DataZeroTrustCwsTenantStructureFilter? filter,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           'account_id': accountId.encodeAs('id'),
           'structure_id': ?structureId,
           if (filter != null) 'filter': TfArg.literal(filter.encode()),
         },
       );

  @override
  Set<String> get sensitiveFields =>
      _cloudflareZeroTrustCwsTenantStructureSensitive;

  /// A reference to the `cloudflare_zero_trust_cws_tenant_structure` this data source reads, for
  /// arguments typed `RefTo<CloudflareZeroTrustCwsTenantStructure>`.
  RefTo<CloudflareZeroTrustCwsTenantStructure> get ref =>
      RefTo.read(this); // ignore: invalid_use_of_internal_member

  /// Reference to `name` attribute.
  TfRef<String> get name => TfRef.attribute<String>(this, 'name');

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `application` attribute.
  TfRef<String> get application => TfRef.attribute<String>(this, 'application');

  /// Reference to `created_at` attribute.
  TfRef<String> get createdAt => TfRef.attribute<String>(this, 'created_at');

  /// Reference to `import_path` attribute.
  TfRef<String> get importPath => TfRef.attribute<String>(this, 'import_path');

  /// Reference to `updated_at` attribute.
  TfRef<String> get updatedAt => TfRef.attribute<String>(this, 'updated_at');

  /// Reference to `account_id` attribute.
  TfRef<String> get accountId => TfRef.attribute<String>(this, 'account_id');

  /// Reference to `structure_id` attribute.
  TfRef<String> get structureId =>
      TfRef.attribute<String>(this, 'structure_id');
}
