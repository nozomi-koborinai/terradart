// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:meta/meta.dart';
import 'package:terradart_core/terradart_core.dart';
import '../zero_trust/cloudflare_zero_trust_casb_finding_type.dart';
import '../account/cloudflare_account.dart' show CloudflareAccount;

/// Sensitive field paths for `cloudflare_zero_trust_casb_finding_type`.
const Set<String> _cloudflareZeroTrustCasbFindingTypeSensitive = <String>{};

/// Typed helper for the `filter` block of
/// `cloudflare_zero_trust_casb_finding_type` (derived from provider schema).
@immutable
final class DataZeroTrustCasbFindingTypeFilter {
  const DataZeroTrustCasbFindingTypeFilter({
    this.direction,
    this.maxUpdatedAt,
    this.minUpdatedAt,
    this.order,
    this.origins,
    this.quarantined,
    this.search,
    this.severities,
    this.types,
    this.vendors,
  });

  final DataZeroTrustCasbFindingTypeDirection? direction;

  final TfArg<String>? maxUpdatedAt;

  final TfArg<String>? minUpdatedAt;

  final DataZeroTrustCasbFindingTypeOrder? order;

  final TfArg<List<String>>? origins;

  final TfArg<bool>? quarantined;

  final TfArg<String>? search;

  final TfArg<List<String>>? severities;

  final TfArg<List<String>>? types;

  final TfArg<List<String>>? vendors;

  @internal
  Map<String, Object?> encode() => {
    'direction': ?direction?.toTfJson(),
    'max_updated_at': ?maxUpdatedAt?.toTfJson(),
    'min_updated_at': ?minUpdatedAt?.toTfJson(),
    'order': ?order?.toTfJson(),
    'origins': ?origins?.toTfJson(),
    'quarantined': ?quarantined?.toTfJson(),
    'search': ?search?.toTfJson(),
    'severities': ?severities?.toTfJson(),
    'types': ?types?.toTfJson(),
    'vendors': ?vendors?.toTfJson(),
  };
}

/// `direction` — derived from the provider schema description.
extension type const DataZeroTrustCasbFindingTypeDirection._(TfArg<String> _)
    implements TfArg<String> {
  DataZeroTrustCasbFindingTypeDirection.variable(String name)
    : this._(TfArg.variable(name));
  DataZeroTrustCasbFindingTypeDirection.expression(String template)
    : this._(TfArg.expression(template));
  const DataZeroTrustCasbFindingTypeDirection.arg(TfArg<String> arg)
    : this._(arg);

  static const asc = DataZeroTrustCasbFindingTypeDirection._(
    TfArgLiteral('asc'),
  );
  static const desc = DataZeroTrustCasbFindingTypeDirection._(
    TfArgLiteral('desc'),
  );

  static const List<DataZeroTrustCasbFindingTypeDirection> values = [asc, desc];
}

/// `order` — derived from the provider schema description.
extension type const DataZeroTrustCasbFindingTypeOrder._(TfArg<String> _)
    implements TfArg<String> {
  DataZeroTrustCasbFindingTypeOrder.variable(String name)
    : this._(TfArg.variable(name));
  DataZeroTrustCasbFindingTypeOrder.expression(String template)
    : this._(TfArg.expression(template));
  const DataZeroTrustCasbFindingTypeOrder.arg(TfArg<String> arg) : this._(arg);

  static const created = DataZeroTrustCasbFindingTypeOrder._(
    TfArgLiteral('created'),
  );
  static const updated = DataZeroTrustCasbFindingTypeOrder._(
    TfArgLiteral('updated'),
  );
  static const matchCount = DataZeroTrustCasbFindingTypeOrder._(
    TfArgLiteral('match_count'),
  );
  static const name = DataZeroTrustCasbFindingTypeOrder._(TfArgLiteral('name'));
  static const vendor = DataZeroTrustCasbFindingTypeOrder._(
    TfArgLiteral('vendor'),
  );
  static const type = DataZeroTrustCasbFindingTypeOrder._(TfArgLiteral('type'));
  static const origin = DataZeroTrustCasbFindingTypeOrder._(
    TfArgLiteral('origin'),
  );
  static const severity = DataZeroTrustCasbFindingTypeOrder._(
    TfArgLiteral('severity'),
  );

  static const List<DataZeroTrustCasbFindingTypeOrder> values = [
    created,
    updated,
    matchCount,
    name,
    vendor,
    type,
    origin,
    severity,
  ];
}

/// Factory wrapper for `cloudflare_zero_trust_casb_finding_type`.
///
/// Accepted Permissions
///
/// - `Zero Trust Read` - `Zero Trust Write`
final class DataCloudflareZeroTrustCasbFindingType extends Data {
  static const String tfType = 'cloudflare_zero_trust_casb_finding_type';

  DataCloudflareZeroTrustCasbFindingType(
    super.localName, {
    required RefTo<CloudflareAccount> accountId,
    TfArg<String>? findingTypeId,
    DataZeroTrustCasbFindingTypeFilter? filter,
    super.dependsOn,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           'account_id': accountId.encodeAs('id'),
           'finding_type_id': ?findingTypeId,
           if (filter != null) 'filter': TfArg.literal(filter.encode()),
         },
       );

  @override
  Set<String> get sensitiveFields =>
      _cloudflareZeroTrustCasbFindingTypeSensitive;

  /// A reference to the `cloudflare_zero_trust_casb_finding_type` this data source reads, for
  /// arguments typed `RefTo<CloudflareZeroTrustCasbFindingType>`.
  RefTo<CloudflareZeroTrustCasbFindingType> get ref =>
      RefTo.read(this); // ignore: invalid_use_of_internal_member

  /// Reference to `name` attribute.
  TfRef<String> get name => TfRef.attribute<String>(this, 'name');

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `applies_to_all_integrations` attribute.
  TfRef<bool> get appliesToAllIntegrations =>
      TfRef.attribute<bool>(this, 'applies_to_all_integrations');

  /// Reference to `asset_class` attribute.
  TfRef<String> get assetClass => TfRef.attribute<String>(this, 'asset_class');

  /// Reference to `asset_vendor` attribute.
  TfRef<String> get assetVendor =>
      TfRef.attribute<String>(this, 'asset_vendor');

  /// Reference to `created_at` attribute.
  TfRef<String> get createdAt => TfRef.attribute<String>(this, 'created_at');

  /// Reference to `description` attribute.
  TfRef<String> get description => TfRef.attribute<String>(this, 'description');

  /// Reference to `expression` attribute.
  TfRef<String> get expression => TfRef.attribute<String>(this, 'expression');

  /// Reference to `integration_ids` attribute.
  TfRef<List<String>> get integrationIds =>
      TfRef.attribute<List<String>>(this, 'integration_ids');

  /// Reference to `match_count` attribute.
  TfRef<num> get matchCount => TfRef.attribute<num>(this, 'match_count');

  /// Reference to `origin` attribute.
  TfRef<String> get origin => TfRef.attribute<String>(this, 'origin');

  /// Reference to `quarantined` attribute.
  TfRef<bool> get quarantined => TfRef.attribute<bool>(this, 'quarantined');

  /// Reference to `severity` attribute.
  TfRef<String> get severity => TfRef.attribute<String>(this, 'severity');

  /// Reference to `updated_at` attribute.
  TfRef<String> get updatedAt => TfRef.attribute<String>(this, 'updated_at');

  /// Reference to `vendor` attribute.
  TfRef<String> get vendor => TfRef.attribute<String>(this, 'vendor');

  /// Reference to `version` attribute.
  TfRef<num> get version => TfRef.attribute<num>(this, 'version');

  /// Reference to `account_id` attribute.
  TfRef<String> get accountId => TfRef.attribute<String>(this, 'account_id');

  /// Reference to `finding_type_id` attribute.
  TfRef<String> get findingTypeId =>
      TfRef.attribute<String>(this, 'finding_type_id');
}
