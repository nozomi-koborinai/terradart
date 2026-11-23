// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';
import '../account/cloudflare_account.dart' show CloudflareAccount;

/// Sensitive field paths for `cloudflare_zero_trust_cws_domain_acls`.
const Set<String> _cloudflareZeroTrustCwsDomainAclsSensitive = <String>{};

/// Data Zero Trust Cws Domain Acls enum for `direction`.
extension type const DataZeroTrustCwsDomainAclsDirection._(TfArg<String> _)
    implements TfArg<String> {
  DataZeroTrustCwsDomainAclsDirection.variable(String name)
    : this._(TfArg.variable(name));
  DataZeroTrustCwsDomainAclsDirection.expression(String template)
    : this._(TfArg.expression(template));
  const DataZeroTrustCwsDomainAclsDirection.arg(TfArg<String> arg)
    : this._(arg);

  static const asc = DataZeroTrustCwsDomainAclsDirection._(TfArgLiteral('asc'));
  static const desc = DataZeroTrustCwsDomainAclsDirection._(
    TfArgLiteral('desc'),
  );

  static const List<DataZeroTrustCwsDomainAclsDirection> values = [asc, desc];
}

/// Data Zero Trust Cws Domain Acls enum for `order`.
extension type const DataZeroTrustCwsDomainAclsOrder._(TfArg<String> _)
    implements TfArg<String> {
  DataZeroTrustCwsDomainAclsOrder.variable(String name)
    : this._(TfArg.variable(name));
  DataZeroTrustCwsDomainAclsOrder.expression(String template)
    : this._(TfArg.expression(template));
  const DataZeroTrustCwsDomainAclsOrder.arg(TfArg<String> arg) : this._(arg);

  static const name = DataZeroTrustCwsDomainAclsOrder._(TfArgLiteral('name'));
  static const createdAt = DataZeroTrustCwsDomainAclsOrder._(
    TfArgLiteral('created_at'),
  );
  static const updatedAt = DataZeroTrustCwsDomainAclsOrder._(
    TfArgLiteral('updated_at'),
  );

  static const List<DataZeroTrustCwsDomainAclsOrder> values = [
    name,
    createdAt,
    updatedAt,
  ];
}

/// Factory wrapper for `cloudflare_zero_trust_cws_domain_acls`.
final class DataCloudflareZeroTrustCwsDomainAcls extends Data {
  static const String tfType = 'cloudflare_zero_trust_cws_domain_acls';

  DataCloudflareZeroTrustCwsDomainAcls(
    super.localName, {
    required RefTo<CloudflareAccount> accountId,
    TfArg<String>? deploymentId,
    DataZeroTrustCwsDomainAclsDirection? direction,
    TfArg<num>? maxItems,
    TfArg<String>? name,
    DataZeroTrustCwsDomainAclsOrder? order,
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
  Set<String> get sensitiveFields => _cloudflareZeroTrustCwsDomainAclsSensitive;

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
