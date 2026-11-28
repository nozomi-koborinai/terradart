// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:meta/meta.dart';
import 'package:terradart_core/terradart_core.dart';
import '../zero_trust/cloudflare_zero_trust_cws_policy_set.dart';
import '../account/cloudflare_account.dart' show CloudflareAccount;

/// Sensitive field paths for `cloudflare_zero_trust_cws_policy_set`.
const Set<String> _cloudflareZeroTrustCwsPolicySetSensitive = <String>{};

/// Typed helper for the `filter` block of
/// `cloudflare_zero_trust_cws_policy_set` (derived from provider schema).
@immutable
final class DataZeroTrustCwsPolicySetFilter {
  const DataZeroTrustCwsPolicySetFilter({
    this.deploymentId,
    this.direction,
    this.name,
    this.order,
  });

  final TfArg<String>? deploymentId;

  final DataZeroTrustCwsPolicySetDirection? direction;

  final TfArg<String>? name;

  final DataZeroTrustCwsPolicySetOrder? order;

  @internal
  Map<String, Object?> encode() => {
    'deployment_id': ?deploymentId?.toTfJson(),
    'direction': ?direction?.toTfJson(),
    'name': ?name?.toTfJson(),
    'order': ?order?.toTfJson(),
  };
}

/// `direction` — derived from the provider schema description.
extension type const DataZeroTrustCwsPolicySetDirection._(TfArg<String> _)
    implements TfArg<String> {
  DataZeroTrustCwsPolicySetDirection.variable(String name)
    : this._(TfArg.variable(name));
  DataZeroTrustCwsPolicySetDirection.expression(String template)
    : this._(TfArg.expression(template));
  const DataZeroTrustCwsPolicySetDirection.arg(TfArg<String> arg) : this._(arg);

  static const asc = DataZeroTrustCwsPolicySetDirection._(TfArgLiteral('asc'));
  static const desc = DataZeroTrustCwsPolicySetDirection._(
    TfArgLiteral('desc'),
  );

  static const List<DataZeroTrustCwsPolicySetDirection> values = [asc, desc];
}

/// `order` — derived from the provider schema description.
extension type const DataZeroTrustCwsPolicySetOrder._(TfArg<String> _)
    implements TfArg<String> {
  DataZeroTrustCwsPolicySetOrder.variable(String name)
    : this._(TfArg.variable(name));
  DataZeroTrustCwsPolicySetOrder.expression(String template)
    : this._(TfArg.expression(template));
  const DataZeroTrustCwsPolicySetOrder.arg(TfArg<String> arg) : this._(arg);

  static const name = DataZeroTrustCwsPolicySetOrder._(TfArgLiteral('name'));
  static const createdAt = DataZeroTrustCwsPolicySetOrder._(
    TfArgLiteral('created_at'),
  );
  static const updatedAt = DataZeroTrustCwsPolicySetOrder._(
    TfArgLiteral('updated_at'),
  );

  static const List<DataZeroTrustCwsPolicySetOrder> values = [
    name,
    createdAt,
    updatedAt,
  ];
}

/// Factory wrapper for `cloudflare_zero_trust_cws_policy_set`.
final class DataCloudflareZeroTrustCwsPolicySet extends Data {
  static const String tfType = 'cloudflare_zero_trust_cws_policy_set';

  DataCloudflareZeroTrustCwsPolicySet(
    super.localName, {
    required RefTo<CloudflareAccount> accountId,
    TfArg<String>? policySetId,
    DataZeroTrustCwsPolicySetFilter? filter,
    super.dependsOn,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           'account_id': accountId.encodeAs('id'),
           'policy_set_id': ?policySetId,
           if (filter != null) 'filter': TfArg.literal(filter.encode()),
         },
       );

  @override
  Set<String> get sensitiveFields => _cloudflareZeroTrustCwsPolicySetSensitive;

  /// A reference to the `cloudflare_zero_trust_cws_policy_set` this data source reads, for
  /// arguments typed `RefTo<CloudflareZeroTrustCwsPolicySet>`.
  RefTo<CloudflareZeroTrustCwsPolicySet> get ref =>
      RefTo.read(this); // ignore: invalid_use_of_internal_member

  /// Reference to `name` attribute.
  TfRef<String> get name => TfRef.attribute<String>(this, 'name');

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `created_at` attribute.
  TfRef<String> get createdAt => TfRef.attribute<String>(this, 'created_at');

  /// Reference to `description` attribute.
  TfRef<String> get description => TfRef.attribute<String>(this, 'description');

  /// Reference to `exclude_workload_ids` attribute.
  TfRef<List<String>> get excludeWorkloadIds =>
      TfRef.attribute<List<String>>(this, 'exclude_workload_ids');

  /// Reference to `include_workload_ids` attribute.
  TfRef<List<String>> get includeWorkloadIds =>
      TfRef.attribute<List<String>>(this, 'include_workload_ids');

  /// Reference to `tags` attribute.
  TfRef<Map<String, String>> get tags =>
      TfRef.attribute<Map<String, String>>(this, 'tags');

  /// Reference to `updated_at` attribute.
  TfRef<String> get updatedAt => TfRef.attribute<String>(this, 'updated_at');

  /// Reference to `account_id` attribute.
  TfRef<String> get accountId => TfRef.attribute<String>(this, 'account_id');

  /// Reference to `policy_set_id` attribute.
  TfRef<String> get policySetId =>
      TfRef.attribute<String>(this, 'policy_set_id');
}
