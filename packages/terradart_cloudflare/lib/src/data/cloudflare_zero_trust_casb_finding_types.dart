// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';
import '../account/cloudflare_account.dart' show CloudflareAccount;

/// Sensitive field paths for `cloudflare_zero_trust_casb_finding_types`.
const Set<String> _cloudflareZeroTrustCasbFindingTypesSensitive = <String>{};

/// Data Zero Trust Casb Finding Types enum for `direction`.
extension type const DataZeroTrustCasbFindingTypesDirection._(TfArg<String> _)
    implements TfArg<String> {
  DataZeroTrustCasbFindingTypesDirection.variable(String name)
    : this._(TfArg.variable(name));
  DataZeroTrustCasbFindingTypesDirection.expression(String template)
    : this._(TfArg.expression(template));
  const DataZeroTrustCasbFindingTypesDirection.arg(TfArg<String> arg)
    : this._(arg);

  static const asc = DataZeroTrustCasbFindingTypesDirection._(
    TfArgLiteral('asc'),
  );
  static const desc = DataZeroTrustCasbFindingTypesDirection._(
    TfArgLiteral('desc'),
  );

  static const List<DataZeroTrustCasbFindingTypesDirection> values = [
    asc,
    desc,
  ];
}

/// Data Zero Trust Casb Finding Types enum for `order`.
extension type const DataZeroTrustCasbFindingTypesOrder._(TfArg<String> _)
    implements TfArg<String> {
  DataZeroTrustCasbFindingTypesOrder.variable(String name)
    : this._(TfArg.variable(name));
  DataZeroTrustCasbFindingTypesOrder.expression(String template)
    : this._(TfArg.expression(template));
  const DataZeroTrustCasbFindingTypesOrder.arg(TfArg<String> arg) : this._(arg);

  static const created = DataZeroTrustCasbFindingTypesOrder._(
    TfArgLiteral('created'),
  );
  static const updated = DataZeroTrustCasbFindingTypesOrder._(
    TfArgLiteral('updated'),
  );
  static const matchCount = DataZeroTrustCasbFindingTypesOrder._(
    TfArgLiteral('match_count'),
  );
  static const name = DataZeroTrustCasbFindingTypesOrder._(
    TfArgLiteral('name'),
  );
  static const vendor = DataZeroTrustCasbFindingTypesOrder._(
    TfArgLiteral('vendor'),
  );
  static const type = DataZeroTrustCasbFindingTypesOrder._(
    TfArgLiteral('type'),
  );
  static const origin = DataZeroTrustCasbFindingTypesOrder._(
    TfArgLiteral('origin'),
  );
  static const severity = DataZeroTrustCasbFindingTypesOrder._(
    TfArgLiteral('severity'),
  );

  static const List<DataZeroTrustCasbFindingTypesOrder> values = [
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

/// Factory wrapper for `cloudflare_zero_trust_casb_finding_types`.
///
/// Accepted Permissions
///
/// - `Zero Trust Read` - `Zero Trust Write`
final class DataCloudflareZeroTrustCasbFindingTypes extends Data {
  static const String tfType = 'cloudflare_zero_trust_casb_finding_types';

  DataCloudflareZeroTrustCasbFindingTypes(
    super.localName, {
    required RefTo<CloudflareAccount> accountId,
    DataZeroTrustCasbFindingTypesDirection? direction,
    TfArg<num>? maxItems,
    TfArg<String>? maxUpdatedAt,
    TfArg<String>? minUpdatedAt,
    DataZeroTrustCasbFindingTypesOrder? order,
    TfArg<List<String>>? origins,
    TfArg<bool>? quarantined,
    TfArg<String>? search,
    TfArg<List<String>>? severities,
    TfArg<List<String>>? types,
    TfArg<List<String>>? vendors,
    super.dependsOn,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           'account_id': accountId.encodeAs('id'),
           'direction': ?direction,
           'max_items': ?maxItems,
           'max_updated_at': ?maxUpdatedAt,
           'min_updated_at': ?minUpdatedAt,
           'order': ?order,
           'origins': ?origins,
           'quarantined': ?quarantined,
           'search': ?search,
           'severities': ?severities,
           'types': ?types,
           'vendors': ?vendors,
         },
       );

  @override
  Set<String> get sensitiveFields =>
      _cloudflareZeroTrustCasbFindingTypesSensitive;

  /// Reference to `account_id` attribute.
  TfRef<String> get accountId => TfRef.attribute<String>(this, 'account_id');

  /// Reference to `direction` attribute.
  TfRef<String> get direction => TfRef.attribute<String>(this, 'direction');

  /// Reference to `max_items` attribute.
  TfRef<num> get maxItems => TfRef.attribute<num>(this, 'max_items');

  /// Reference to `max_updated_at` attribute.
  TfRef<String> get maxUpdatedAt =>
      TfRef.attribute<String>(this, 'max_updated_at');

  /// Reference to `min_updated_at` attribute.
  TfRef<String> get minUpdatedAt =>
      TfRef.attribute<String>(this, 'min_updated_at');

  /// Reference to `order` attribute.
  TfRef<String> get order => TfRef.attribute<String>(this, 'order');

  /// Reference to `origins` attribute.
  TfRef<List<String>> get origins =>
      TfRef.attribute<List<String>>(this, 'origins');

  /// Reference to `quarantined` attribute.
  TfRef<bool> get quarantined => TfRef.attribute<bool>(this, 'quarantined');

  /// Reference to `search` attribute.
  TfRef<String> get search => TfRef.attribute<String>(this, 'search');

  /// Reference to `severities` attribute.
  TfRef<List<String>> get severities =>
      TfRef.attribute<List<String>>(this, 'severities');

  /// Reference to `types` attribute.
  TfRef<List<String>> get types => TfRef.attribute<List<String>>(this, 'types');

  /// Reference to `vendors` attribute.
  TfRef<List<String>> get vendors =>
      TfRef.attribute<List<String>>(this, 'vendors');
}
