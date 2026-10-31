// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';
import '../account/cloudflare_account.dart' show CloudflareAccount;

/// Sensitive field paths for `cloudflare_zero_trust_gateway_policies`.
const Set<String> _cloudflareZeroTrustGatewayPoliciesSensitive = <String>{};

/// Data Zero Trust Gateway Policies enum for `direction`.
extension type const DataZeroTrustGatewayPoliciesDirection._(TfArg<String> _)
    implements TfArg<String> {
  DataZeroTrustGatewayPoliciesDirection.variable(String name)
    : this._(TfArg.variable(name));
  DataZeroTrustGatewayPoliciesDirection.expression(String template)
    : this._(TfArg.expression(template));
  const DataZeroTrustGatewayPoliciesDirection.arg(TfArg<String> arg)
    : this._(arg);

  static const asc = DataZeroTrustGatewayPoliciesDirection._(
    TfArgLiteral('asc'),
  );
  static const desc = DataZeroTrustGatewayPoliciesDirection._(
    TfArgLiteral('desc'),
  );

  static const List<DataZeroTrustGatewayPoliciesDirection> values = [asc, desc];
}

/// Data Zero Trust Gateway Policies Order enum for `order_by`.
extension type const DataZeroTrustGatewayPoliciesOrderBy._(TfArg<String> _)
    implements TfArg<String> {
  DataZeroTrustGatewayPoliciesOrderBy.variable(String name)
    : this._(TfArg.variable(name));
  DataZeroTrustGatewayPoliciesOrderBy.expression(String template)
    : this._(TfArg.expression(template));
  const DataZeroTrustGatewayPoliciesOrderBy.arg(TfArg<String> arg)
    : this._(arg);

  static const name = DataZeroTrustGatewayPoliciesOrderBy._(
    TfArgLiteral('name'),
  );
  static const createdAt = DataZeroTrustGatewayPoliciesOrderBy._(
    TfArgLiteral('created_at'),
  );
  static const updatedAt = DataZeroTrustGatewayPoliciesOrderBy._(
    TfArgLiteral('updated_at'),
  );
  static const precedence = DataZeroTrustGatewayPoliciesOrderBy._(
    TfArgLiteral('precedence'),
  );

  static const List<DataZeroTrustGatewayPoliciesOrderBy> values = [
    name,
    createdAt,
    updatedAt,
    precedence,
  ];
}

/// Factory wrapper for `cloudflare_zero_trust_gateway_policies`.
final class DataCloudflareZeroTrustGatewayPolicies extends Data {
  static const String tfType = 'cloudflare_zero_trust_gateway_policies';

  DataCloudflareZeroTrustGatewayPolicies(
    super.localName, {
    RefTo<CloudflareAccount>? accountId,
    DataZeroTrustGatewayPoliciesDirection? direction,
    TfArg<List<String>>? filter,
    TfArg<num>? maxItems,
    DataZeroTrustGatewayPoliciesOrderBy? orderBy,
    TfArg<String>? search,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           'account_id': ?accountId?.encodeAs('id'),
           'direction': ?direction,
           'filter': ?filter,
           'max_items': ?maxItems,
           'order_by': ?orderBy,
           'search': ?search,
         },
       );

  @override
  Set<String> get sensitiveFields =>
      _cloudflareZeroTrustGatewayPoliciesSensitive;

  /// Reference to `account_id` attribute.
  TfRef<String> get accountId => TfRef.attribute<String>(this, 'account_id');

  /// Reference to `direction` attribute.
  TfRef<String> get direction => TfRef.attribute<String>(this, 'direction');

  /// Reference to `filter` attribute.
  TfRef<List<String>> get filter =>
      TfRef.attribute<List<String>>(this, 'filter');

  /// Reference to `max_items` attribute.
  TfRef<num> get maxItems => TfRef.attribute<num>(this, 'max_items');

  /// Reference to `order_by` attribute.
  TfRef<String> get orderBy => TfRef.attribute<String>(this, 'order_by');

  /// Reference to `search` attribute.
  TfRef<String> get search => TfRef.attribute<String>(this, 'search');
}
