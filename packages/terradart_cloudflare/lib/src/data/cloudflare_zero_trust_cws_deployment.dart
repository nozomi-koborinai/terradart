// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:meta/meta.dart';
import 'package:terradart_core/terradart_core.dart';
import '../zero_trust/cloudflare_zero_trust_cws_deployment.dart';
import '../account/cloudflare_account.dart' show CloudflareAccount;

/// Sensitive field paths for `cloudflare_zero_trust_cws_deployment`.
const Set<String> _cloudflareZeroTrustCwsDeploymentSensitive = <String>{};

/// Typed helper for the `filter` block of
/// `cloudflare_zero_trust_cws_deployment` (derived from provider schema).
@immutable
final class DataZeroTrustCwsDeploymentFilter {
  const DataZeroTrustCwsDeploymentFilter({
    this.direction,
    this.name,
    this.order,
  });

  final DataZeroTrustCwsDeploymentDirection? direction;

  final TfArg<String>? name;

  final DataZeroTrustCwsDeploymentOrder? order;

  @internal
  Map<String, Object?> encode() => {
    'direction': ?direction?.toTfJson(),
    'name': ?name?.toTfJson(),
    'order': ?order?.toTfJson(),
  };
}

/// `direction` — derived from the provider schema description.
extension type const DataZeroTrustCwsDeploymentDirection._(TfArg<String> _)
    implements TfArg<String> {
  DataZeroTrustCwsDeploymentDirection.variable(String name)
    : this._(TfArg.variable(name));
  DataZeroTrustCwsDeploymentDirection.expression(String template)
    : this._(TfArg.expression(template));
  const DataZeroTrustCwsDeploymentDirection.arg(TfArg<String> arg)
    : this._(arg);

  static const asc = DataZeroTrustCwsDeploymentDirection._(TfArgLiteral('asc'));
  static const desc = DataZeroTrustCwsDeploymentDirection._(
    TfArgLiteral('desc'),
  );

  static const List<DataZeroTrustCwsDeploymentDirection> values = [asc, desc];
}

/// `order` — derived from the provider schema description.
extension type const DataZeroTrustCwsDeploymentOrder._(TfArg<String> _)
    implements TfArg<String> {
  DataZeroTrustCwsDeploymentOrder.variable(String name)
    : this._(TfArg.variable(name));
  DataZeroTrustCwsDeploymentOrder.expression(String template)
    : this._(TfArg.expression(template));
  const DataZeroTrustCwsDeploymentOrder.arg(TfArg<String> arg) : this._(arg);

  static const name = DataZeroTrustCwsDeploymentOrder._(TfArgLiteral('name'));
  static const createdAt = DataZeroTrustCwsDeploymentOrder._(
    TfArgLiteral('created_at'),
  );
  static const updatedAt = DataZeroTrustCwsDeploymentOrder._(
    TfArgLiteral('updated_at'),
  );

  static const List<DataZeroTrustCwsDeploymentOrder> values = [
    name,
    createdAt,
    updatedAt,
  ];
}

/// Factory wrapper for `cloudflare_zero_trust_cws_deployment`.
final class DataCloudflareZeroTrustCwsDeployment extends Data {
  static const String tfType = 'cloudflare_zero_trust_cws_deployment';

  DataCloudflareZeroTrustCwsDeployment(
    super.localName, {
    required RefTo<CloudflareAccount> accountId,
    TfArg<String>? deploymentId,
    DataZeroTrustCwsDeploymentFilter? filter,
    super.dependsOn,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           'account_id': accountId.encodeAs('id'),
           'deployment_id': ?deploymentId,
           if (filter != null) 'filter': TfArg.literal(filter.encode()),
         },
       );

  @override
  Set<String> get sensitiveFields => _cloudflareZeroTrustCwsDeploymentSensitive;

  /// A reference to the `cloudflare_zero_trust_cws_deployment` this data source reads, for
  /// arguments typed `RefTo<CloudflareZeroTrustCwsDeployment>`.
  RefTo<CloudflareZeroTrustCwsDeployment> get ref =>
      RefTo.read(this); // ignore: invalid_use_of_internal_member

  /// Reference to `name` attribute.
  TfRef<String> get name => TfRef.attribute<String>(this, 'name');

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `basic_auth_credential_ids` attribute.
  TfRef<List<String>> get basicAuthCredentialIds =>
      TfRef.attribute<List<String>>(this, 'basic_auth_credential_ids');

  /// Reference to `created_at` attribute.
  TfRef<String> get createdAt => TfRef.attribute<String>(this, 'created_at');

  /// Reference to `default_mode` attribute.
  TfRef<String> get defaultMode =>
      TfRef.attribute<String>(this, 'default_mode');

  /// Reference to `description` attribute.
  TfRef<String> get description => TfRef.attribute<String>(this, 'description');

  /// Reference to `domain_acl_id` attribute.
  TfRef<String> get domainAclId =>
      TfRef.attribute<String>(this, 'domain_acl_id');

  /// Reference to `on_error_action` attribute.
  TfRef<String> get onErrorAction =>
      TfRef.attribute<String>(this, 'on_error_action');

  /// Reference to `policy_set_ids` attribute.
  TfRef<List<String>> get policySetIds =>
      TfRef.attribute<List<String>>(this, 'policy_set_ids');

  /// Reference to `rego_raise_error` attribute.
  TfRef<bool> get regoRaiseError =>
      TfRef.attribute<bool>(this, 'rego_raise_error');

  /// Reference to `tags` attribute.
  TfRef<Map<String, String>> get tags =>
      TfRef.attribute<Map<String, String>>(this, 'tags');

  /// Reference to `updated_at` attribute.
  TfRef<String> get updatedAt => TfRef.attribute<String>(this, 'updated_at');

  /// Reference to `account_id` attribute.
  TfRef<String> get accountId => TfRef.attribute<String>(this, 'account_id');

  /// Reference to `deployment_id` attribute.
  TfRef<String> get deploymentId =>
      TfRef.attribute<String>(this, 'deployment_id');
}
