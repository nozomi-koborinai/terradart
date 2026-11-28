// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:meta/meta.dart';
import 'package:terradart_core/terradart_core.dart';
import '../zero_trust/cloudflare_zero_trust_cws_domain_acl.dart';
import '../account/cloudflare_account.dart' show CloudflareAccount;

/// Sensitive field paths for `cloudflare_zero_trust_cws_domain_acl`.
const Set<String> _cloudflareZeroTrustCwsDomainAclSensitive = <String>{};

/// Typed helper for the `filter` block of
/// `cloudflare_zero_trust_cws_domain_acl` (derived from provider schema).
@immutable
final class DataZeroTrustCwsDomainAclFilter {
  const DataZeroTrustCwsDomainAclFilter({
    this.deploymentId,
    this.direction,
    this.name,
    this.order,
  });

  final TfArg<String>? deploymentId;

  final DataZeroTrustCwsDomainAclDirection? direction;

  final TfArg<String>? name;

  final DataZeroTrustCwsDomainAclOrder? order;

  @internal
  Map<String, Object?> encode() => {
    'deployment_id': ?deploymentId?.toTfJson(),
    'direction': ?direction?.toTfJson(),
    'name': ?name?.toTfJson(),
    'order': ?order?.toTfJson(),
  };
}

/// `direction` — derived from the provider schema description.
extension type const DataZeroTrustCwsDomainAclDirection._(TfArg<String> _)
    implements TfArg<String> {
  DataZeroTrustCwsDomainAclDirection.variable(String name)
    : this._(TfArg.variable(name));
  DataZeroTrustCwsDomainAclDirection.expression(String template)
    : this._(TfArg.expression(template));
  const DataZeroTrustCwsDomainAclDirection.arg(TfArg<String> arg) : this._(arg);

  static const asc = DataZeroTrustCwsDomainAclDirection._(TfArgLiteral('asc'));
  static const desc = DataZeroTrustCwsDomainAclDirection._(
    TfArgLiteral('desc'),
  );

  static const List<DataZeroTrustCwsDomainAclDirection> values = [asc, desc];
}

/// `order` — derived from the provider schema description.
extension type const DataZeroTrustCwsDomainAclOrder._(TfArg<String> _)
    implements TfArg<String> {
  DataZeroTrustCwsDomainAclOrder.variable(String name)
    : this._(TfArg.variable(name));
  DataZeroTrustCwsDomainAclOrder.expression(String template)
    : this._(TfArg.expression(template));
  const DataZeroTrustCwsDomainAclOrder.arg(TfArg<String> arg) : this._(arg);

  static const name = DataZeroTrustCwsDomainAclOrder._(TfArgLiteral('name'));
  static const createdAt = DataZeroTrustCwsDomainAclOrder._(
    TfArgLiteral('created_at'),
  );
  static const updatedAt = DataZeroTrustCwsDomainAclOrder._(
    TfArgLiteral('updated_at'),
  );

  static const List<DataZeroTrustCwsDomainAclOrder> values = [
    name,
    createdAt,
    updatedAt,
  ];
}

/// Factory wrapper for `cloudflare_zero_trust_cws_domain_acl`.
final class DataCloudflareZeroTrustCwsDomainAcl extends Data {
  static const String tfType = 'cloudflare_zero_trust_cws_domain_acl';

  DataCloudflareZeroTrustCwsDomainAcl(
    super.localName, {
    required RefTo<CloudflareAccount> accountId,
    TfArg<String>? domainAclId,
    DataZeroTrustCwsDomainAclFilter? filter,
    super.dependsOn,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           'account_id': accountId.encodeAs('id'),
           'domain_acl_id': ?domainAclId,
           if (filter != null) 'filter': TfArg.literal(filter.encode()),
         },
       );

  @override
  Set<String> get sensitiveFields => _cloudflareZeroTrustCwsDomainAclSensitive;

  /// A reference to the `cloudflare_zero_trust_cws_domain_acl` this data source reads, for
  /// arguments typed `RefTo<CloudflareZeroTrustCwsDomainAcl>`.
  RefTo<CloudflareZeroTrustCwsDomainAcl> get ref =>
      RefTo.read(this); // ignore: invalid_use_of_internal_member

  /// Reference to `name` attribute.
  TfRef<String> get name => TfRef.attribute<String>(this, 'name');

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `created_at` attribute.
  TfRef<String> get createdAt => TfRef.attribute<String>(this, 'created_at');

  /// Reference to `default_action` attribute.
  TfRef<String> get defaultAction =>
      TfRef.attribute<String>(this, 'default_action');

  /// Reference to `updated_at` attribute.
  TfRef<String> get updatedAt => TfRef.attribute<String>(this, 'updated_at');

  /// Reference to `account_id` attribute.
  TfRef<String> get accountId => TfRef.attribute<String>(this, 'account_id');

  /// Reference to `domain_acl_id` attribute.
  TfRef<String> get domainAclId =>
      TfRef.attribute<String>(this, 'domain_acl_id');
}
