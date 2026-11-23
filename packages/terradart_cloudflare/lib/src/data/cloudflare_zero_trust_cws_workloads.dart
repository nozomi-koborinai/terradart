// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';
import '../account/cloudflare_account.dart' show CloudflareAccount;

/// Sensitive field paths for `cloudflare_zero_trust_cws_workloads`.
const Set<String> _cloudflareZeroTrustCwsWorkloadsSensitive = <String>{};

/// Data Zero Trust Cws Workloads enum for `direction`.
extension type const DataZeroTrustCwsWorkloadsDirection._(TfArg<String> _)
    implements TfArg<String> {
  DataZeroTrustCwsWorkloadsDirection.variable(String name)
    : this._(TfArg.variable(name));
  DataZeroTrustCwsWorkloadsDirection.expression(String template)
    : this._(TfArg.expression(template));
  const DataZeroTrustCwsWorkloadsDirection.arg(TfArg<String> arg) : this._(arg);

  static const asc = DataZeroTrustCwsWorkloadsDirection._(TfArgLiteral('asc'));
  static const desc = DataZeroTrustCwsWorkloadsDirection._(
    TfArgLiteral('desc'),
  );

  static const List<DataZeroTrustCwsWorkloadsDirection> values = [asc, desc];
}

/// Data Zero Trust Cws Workloads enum for `order`.
extension type const DataZeroTrustCwsWorkloadsOrder._(TfArg<String> _)
    implements TfArg<String> {
  DataZeroTrustCwsWorkloadsOrder.variable(String name)
    : this._(TfArg.variable(name));
  DataZeroTrustCwsWorkloadsOrder.expression(String template)
    : this._(TfArg.expression(template));
  const DataZeroTrustCwsWorkloadsOrder.arg(TfArg<String> arg) : this._(arg);

  static const name = DataZeroTrustCwsWorkloadsOrder._(TfArgLiteral('name'));
  static const createdAt = DataZeroTrustCwsWorkloadsOrder._(
    TfArgLiteral('created_at'),
  );
  static const updatedAt = DataZeroTrustCwsWorkloadsOrder._(
    TfArgLiteral('updated_at'),
  );

  static const List<DataZeroTrustCwsWorkloadsOrder> values = [
    name,
    createdAt,
    updatedAt,
  ];
}

/// Factory wrapper for `cloudflare_zero_trust_cws_workloads`.
final class DataCloudflareZeroTrustCwsWorkloads extends Data {
  static const String tfType = 'cloudflare_zero_trust_cws_workloads';

  DataCloudflareZeroTrustCwsWorkloads(
    super.localName, {
    required RefTo<CloudflareAccount> accountId,
    DataZeroTrustCwsWorkloadsDirection? direction,
    TfArg<num>? maxItems,
    TfArg<String>? name,
    DataZeroTrustCwsWorkloadsOrder? order,
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
           'policy_set_id': ?policySetId,
         },
       );

  @override
  Set<String> get sensitiveFields => _cloudflareZeroTrustCwsWorkloadsSensitive;

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

  /// Reference to `policy_set_id` attribute.
  TfRef<String> get policySetId =>
      TfRef.attribute<String>(this, 'policy_set_id');
}
