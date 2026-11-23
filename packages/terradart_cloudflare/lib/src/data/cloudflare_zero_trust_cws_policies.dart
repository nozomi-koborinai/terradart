// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';
import '../account/cloudflare_account.dart' show CloudflareAccount;

/// Sensitive field paths for `cloudflare_zero_trust_cws_policies`.
const Set<String> _cloudflareZeroTrustCwsPoliciesSensitive = <String>{};

/// Data Zero Trust Cws Policies enum for `direction`.
extension type const DataZeroTrustCwsPoliciesDirection._(TfArg<String> _)
    implements TfArg<String> {
  DataZeroTrustCwsPoliciesDirection.variable(String name)
    : this._(TfArg.variable(name));
  DataZeroTrustCwsPoliciesDirection.expression(String template)
    : this._(TfArg.expression(template));
  const DataZeroTrustCwsPoliciesDirection.arg(TfArg<String> arg) : this._(arg);

  static const asc = DataZeroTrustCwsPoliciesDirection._(TfArgLiteral('asc'));
  static const desc = DataZeroTrustCwsPoliciesDirection._(TfArgLiteral('desc'));

  static const List<DataZeroTrustCwsPoliciesDirection> values = [asc, desc];
}

/// Data Zero Trust Cws Policies enum for `order`.
extension type const DataZeroTrustCwsPoliciesOrder._(TfArg<String> _)
    implements TfArg<String> {
  DataZeroTrustCwsPoliciesOrder.variable(String name)
    : this._(TfArg.variable(name));
  DataZeroTrustCwsPoliciesOrder.expression(String template)
    : this._(TfArg.expression(template));
  const DataZeroTrustCwsPoliciesOrder.arg(TfArg<String> arg) : this._(arg);

  static const name = DataZeroTrustCwsPoliciesOrder._(TfArgLiteral('name'));
  static const createdAt = DataZeroTrustCwsPoliciesOrder._(
    TfArgLiteral('created_at'),
  );
  static const updatedAt = DataZeroTrustCwsPoliciesOrder._(
    TfArgLiteral('updated_at'),
  );

  static const List<DataZeroTrustCwsPoliciesOrder> values = [
    name,
    createdAt,
    updatedAt,
  ];
}

/// Factory wrapper for `cloudflare_zero_trust_cws_policies`.
final class DataCloudflareZeroTrustCwsPolicies extends Data {
  static const String tfType = 'cloudflare_zero_trust_cws_policies';

  DataCloudflareZeroTrustCwsPolicies(
    super.localName, {
    required RefTo<CloudflareAccount> accountId,
    DataZeroTrustCwsPoliciesDirection? direction,
    TfArg<num>? maxItems,
    TfArg<String>? name,
    DataZeroTrustCwsPoliciesOrder? order,
    TfArg<String>? packagePath,
    TfArg<String>? policySetId,
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
           'package_path': ?packagePath,
           'policy_set_id': ?policySetId,
         },
       );

  @override
  Set<String> get sensitiveFields => _cloudflareZeroTrustCwsPoliciesSensitive;

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

  /// Reference to `package_path` attribute.
  TfRef<String> get packagePath =>
      TfRef.attribute<String>(this, 'package_path');

  /// Reference to `policy_set_id` attribute.
  TfRef<String> get policySetId =>
      TfRef.attribute<String>(this, 'policy_set_id');
}
