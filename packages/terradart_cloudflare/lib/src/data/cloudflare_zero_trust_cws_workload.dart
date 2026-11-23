// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:meta/meta.dart';
import 'package:terradart_core/terradart_core.dart';
import '../zero_trust/cloudflare_zero_trust_cws_workload.dart';
import '../account/cloudflare_account.dart' show CloudflareAccount;

/// Sensitive field paths for `cloudflare_zero_trust_cws_workload`.
const Set<String> _cloudflareZeroTrustCwsWorkloadSensitive = <String>{};

/// Typed helper for the `find_one_by` block of
/// `cloudflare_zero_trust_cws_workload` (derived from provider schema).
@immutable
final class DataZeroTrustCwsWorkloadFindOneBy {
  const DataZeroTrustCwsWorkloadFindOneBy({
    this.direction,
    this.name,
    this.order,
    this.policySetId,
  });

  final DataZeroTrustCwsWorkloadDirection? direction;

  final TfArg<String>? name;

  final DataZeroTrustCwsWorkloadOrder? order;

  final TfArg<String>? policySetId;

  @internal
  Map<String, Object?> encode() => {
    'direction': ?direction?.toTfJson(),
    'name': ?name?.toTfJson(),
    'order': ?order?.toTfJson(),
    'policy_set_id': ?policySetId?.toTfJson(),
  };
}

/// `direction` — derived from the provider schema description.
extension type const DataZeroTrustCwsWorkloadDirection._(TfArg<String> _)
    implements TfArg<String> {
  DataZeroTrustCwsWorkloadDirection.variable(String name)
    : this._(TfArg.variable(name));
  DataZeroTrustCwsWorkloadDirection.expression(String template)
    : this._(TfArg.expression(template));
  const DataZeroTrustCwsWorkloadDirection.arg(TfArg<String> arg) : this._(arg);

  static const asc = DataZeroTrustCwsWorkloadDirection._(TfArgLiteral('asc'));
  static const desc = DataZeroTrustCwsWorkloadDirection._(TfArgLiteral('desc'));

  static const List<DataZeroTrustCwsWorkloadDirection> values = [asc, desc];
}

/// `order` — derived from the provider schema description.
extension type const DataZeroTrustCwsWorkloadOrder._(TfArg<String> _)
    implements TfArg<String> {
  DataZeroTrustCwsWorkloadOrder.variable(String name)
    : this._(TfArg.variable(name));
  DataZeroTrustCwsWorkloadOrder.expression(String template)
    : this._(TfArg.expression(template));
  const DataZeroTrustCwsWorkloadOrder.arg(TfArg<String> arg) : this._(arg);

  static const name = DataZeroTrustCwsWorkloadOrder._(TfArgLiteral('name'));
  static const createdAt = DataZeroTrustCwsWorkloadOrder._(
    TfArgLiteral('created_at'),
  );
  static const updatedAt = DataZeroTrustCwsWorkloadOrder._(
    TfArgLiteral('updated_at'),
  );

  static const List<DataZeroTrustCwsWorkloadOrder> values = [
    name,
    createdAt,
    updatedAt,
  ];
}

/// Factory wrapper for `cloudflare_zero_trust_cws_workload`.
final class DataCloudflareZeroTrustCwsWorkload extends Data {
  static const String tfType = 'cloudflare_zero_trust_cws_workload';

  DataCloudflareZeroTrustCwsWorkload(
    super.localName, {
    required RefTo<CloudflareAccount> accountId,
    TfArg<String>? workloadId,
    DataZeroTrustCwsWorkloadFindOneBy? findOneBy,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           'account_id': accountId.encodeAs('id'),
           'workload_id': ?workloadId,
           if (findOneBy != null)
             'find_one_by': TfArg.literal(findOneBy.encode()),
         },
       );

  @override
  Set<String> get sensitiveFields => _cloudflareZeroTrustCwsWorkloadSensitive;

  /// A reference to the `cloudflare_zero_trust_cws_workload` this data source reads, for
  /// arguments typed `RefTo<CloudflareZeroTrustCwsWorkload>`.
  RefTo<CloudflareZeroTrustCwsWorkload> get ref =>
      RefTo.read(this); // ignore: invalid_use_of_internal_member

  /// Reference to `name` attribute.
  TfRef<String> get name => TfRef.attribute<String>(this, 'name');

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `created_at` attribute.
  TfRef<String> get createdAt => TfRef.attribute<String>(this, 'created_at');

  /// Reference to `description` attribute.
  TfRef<String> get description => TfRef.attribute<String>(this, 'description');

  /// Reference to `filter` attribute.
  TfRef<String> get filter => TfRef.attribute<String>(this, 'filter');

  /// Reference to `tags` attribute.
  TfRef<Map<String, String>> get tags =>
      TfRef.attribute<Map<String, String>>(this, 'tags');

  /// Reference to `updated_at` attribute.
  TfRef<String> get updatedAt => TfRef.attribute<String>(this, 'updated_at');

  /// Reference to `account_id` attribute.
  TfRef<String> get accountId => TfRef.attribute<String>(this, 'account_id');

  /// Reference to `workload_id` attribute.
  TfRef<String> get workloadId => TfRef.attribute<String>(this, 'workload_id');
}
