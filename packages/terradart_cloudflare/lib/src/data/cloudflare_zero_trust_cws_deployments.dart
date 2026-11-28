// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';
import '../account/cloudflare_account.dart' show CloudflareAccount;

/// Sensitive field paths for `cloudflare_zero_trust_cws_deployments`.
const Set<String> _cloudflareZeroTrustCwsDeploymentsSensitive = <String>{};

/// Data Zero Trust Cws Deployments enum for `direction`.
extension type const DataZeroTrustCwsDeploymentsDirection._(TfArg<String> _)
    implements TfArg<String> {
  DataZeroTrustCwsDeploymentsDirection.variable(String name)
    : this._(TfArg.variable(name));
  DataZeroTrustCwsDeploymentsDirection.expression(String template)
    : this._(TfArg.expression(template));
  const DataZeroTrustCwsDeploymentsDirection.arg(TfArg<String> arg)
    : this._(arg);

  static const asc = DataZeroTrustCwsDeploymentsDirection._(
    TfArgLiteral('asc'),
  );
  static const desc = DataZeroTrustCwsDeploymentsDirection._(
    TfArgLiteral('desc'),
  );

  static const List<DataZeroTrustCwsDeploymentsDirection> values = [asc, desc];
}

/// Data Zero Trust Cws Deployments enum for `order`.
extension type const DataZeroTrustCwsDeploymentsOrder._(TfArg<String> _)
    implements TfArg<String> {
  DataZeroTrustCwsDeploymentsOrder.variable(String name)
    : this._(TfArg.variable(name));
  DataZeroTrustCwsDeploymentsOrder.expression(String template)
    : this._(TfArg.expression(template));
  const DataZeroTrustCwsDeploymentsOrder.arg(TfArg<String> arg) : this._(arg);

  static const name = DataZeroTrustCwsDeploymentsOrder._(TfArgLiteral('name'));
  static const createdAt = DataZeroTrustCwsDeploymentsOrder._(
    TfArgLiteral('created_at'),
  );
  static const updatedAt = DataZeroTrustCwsDeploymentsOrder._(
    TfArgLiteral('updated_at'),
  );

  static const List<DataZeroTrustCwsDeploymentsOrder> values = [
    name,
    createdAt,
    updatedAt,
  ];
}

/// Factory wrapper for `cloudflare_zero_trust_cws_deployments`.
final class DataCloudflareZeroTrustCwsDeployments extends Data {
  static const String tfType = 'cloudflare_zero_trust_cws_deployments';

  DataCloudflareZeroTrustCwsDeployments(
    super.localName, {
    required RefTo<CloudflareAccount> accountId,
    DataZeroTrustCwsDeploymentsDirection? direction,
    TfArg<num>? maxItems,
    TfArg<String>? name,
    DataZeroTrustCwsDeploymentsOrder? order,
    super.dependsOn,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           'account_id': accountId.encodeAs('id'),
           'direction': ?direction,
           'max_items': ?maxItems,
           'name': ?name,
           'order': ?order,
         },
       );

  @override
  Set<String> get sensitiveFields =>
      _cloudflareZeroTrustCwsDeploymentsSensitive;

  /// Reference to `name` attribute.
  TfRef<String> get name => TfRef.attribute<String>(this, 'name');

  /// Reference to `account_id` attribute.
  TfRef<String> get accountId => TfRef.attribute<String>(this, 'account_id');

  /// Reference to `direction` attribute.
  TfRef<String> get direction => TfRef.attribute<String>(this, 'direction');

  /// Reference to `max_items` attribute.
  TfRef<num> get maxItems => TfRef.attribute<num>(this, 'max_items');

  /// Reference to `order` attribute.
  TfRef<String> get order => TfRef.attribute<String>(this, 'order');
}
