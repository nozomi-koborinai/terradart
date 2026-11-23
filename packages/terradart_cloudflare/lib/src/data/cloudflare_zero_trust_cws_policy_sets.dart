// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';
import '../account/cloudflare_account.dart' show CloudflareAccount;

/// Sensitive field paths for `cloudflare_zero_trust_cws_policy_sets`.
const Set<String> _cloudflareZeroTrustCwsPolicySetsSensitive = <String>{};

/// Data Zero Trust Cws Policy Sets enum for `direction`.
extension type const DataZeroTrustCwsPolicySetsDirection._(TfArg<String> _)
    implements TfArg<String> {
  DataZeroTrustCwsPolicySetsDirection.variable(String name)
    : this._(TfArg.variable(name));
  DataZeroTrustCwsPolicySetsDirection.expression(String template)
    : this._(TfArg.expression(template));
  const DataZeroTrustCwsPolicySetsDirection.arg(TfArg<String> arg)
    : this._(arg);

  static const asc = DataZeroTrustCwsPolicySetsDirection._(TfArgLiteral('asc'));
  static const desc = DataZeroTrustCwsPolicySetsDirection._(
    TfArgLiteral('desc'),
  );

  static const List<DataZeroTrustCwsPolicySetsDirection> values = [asc, desc];
}

/// Data Zero Trust Cws Policy Sets enum for `order`.
extension type const DataZeroTrustCwsPolicySetsOrder._(TfArg<String> _)
    implements TfArg<String> {
  DataZeroTrustCwsPolicySetsOrder.variable(String name)
    : this._(TfArg.variable(name));
  DataZeroTrustCwsPolicySetsOrder.expression(String template)
    : this._(TfArg.expression(template));
  const DataZeroTrustCwsPolicySetsOrder.arg(TfArg<String> arg) : this._(arg);

  static const name = DataZeroTrustCwsPolicySetsOrder._(TfArgLiteral('name'));
  static const createdAt = DataZeroTrustCwsPolicySetsOrder._(
    TfArgLiteral('created_at'),
  );
  static const updatedAt = DataZeroTrustCwsPolicySetsOrder._(
    TfArgLiteral('updated_at'),
  );

  static const List<DataZeroTrustCwsPolicySetsOrder> values = [
    name,
    createdAt,
    updatedAt,
  ];
}

/// Factory wrapper for `cloudflare_zero_trust_cws_policy_sets`.
final class DataCloudflareZeroTrustCwsPolicySets extends Data {
  static const String tfType = 'cloudflare_zero_trust_cws_policy_sets';

  DataCloudflareZeroTrustCwsPolicySets(
    super.localName, {
    required RefTo<CloudflareAccount> accountId,
    TfArg<String>? deploymentId,
    DataZeroTrustCwsPolicySetsDirection? direction,
    TfArg<num>? maxItems,
    TfArg<String>? name,
    DataZeroTrustCwsPolicySetsOrder? order,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           'account_id': accountId.encodeAs('id'),
           'deployment_id': ?deploymentId,
           'direction': ?direction,
           'max_items': ?maxItems,
           'name': ?name,
           'order': ?order,
         },
       );

  @override
  Set<String> get sensitiveFields => _cloudflareZeroTrustCwsPolicySetsSensitive;

  /// Reference to `name` attribute.
  TfRef<String> get name => TfRef.attribute<String>(this, 'name');

  /// Reference to `account_id` attribute.
  TfRef<String> get accountId => TfRef.attribute<String>(this, 'account_id');

  /// Reference to `deployment_id` attribute.
  TfRef<String> get deploymentId =>
      TfRef.attribute<String>(this, 'deployment_id');

  /// Reference to `direction` attribute.
  TfRef<String> get direction => TfRef.attribute<String>(this, 'direction');

  /// Reference to `max_items` attribute.
  TfRef<num> get maxItems => TfRef.attribute<num>(this, 'max_items');

  /// Reference to `order` attribute.
  TfRef<String> get order => TfRef.attribute<String>(this, 'order');
}
