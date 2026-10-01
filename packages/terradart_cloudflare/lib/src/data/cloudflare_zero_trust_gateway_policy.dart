// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:meta/meta.dart';
import 'package:terradart_core/terradart_core.dart';
import '../zero_trust/cloudflare_zero_trust_gateway_policy.dart';
import '../account/cloudflare_account.dart' show CloudflareAccount;

/// Sensitive field paths for `cloudflare_zero_trust_gateway_policy`.
const Set<String> _cloudflareZeroTrustGatewayPolicySensitive = <String>{};

/// Typed helper for the `filter` block of
/// `cloudflare_zero_trust_gateway_policy` (derived from provider schema).
@immutable
final class DataZeroTrustGatewayPolicyFilter {
  const DataZeroTrustGatewayPolicyFilter({
    this.direction,
    this.filter,
    this.orderBy,
    this.search,
  });

  final TfArg<DataZeroTrustGatewayPolicyDirection>? direction;

  final TfArg<List<String>>? filter;

  final TfArg<DataZeroTrustGatewayPolicyOrderBy>? orderBy;

  final TfArg<String>? search;

  Map<String, Object?> encode() => {
    'direction': ?direction?.toTfJson(),
    'filter': ?filter?.toTfJson(),
    'order_by': ?orderBy?.toTfJson(),
    'search': ?search?.toTfJson(),
  };
}

/// `direction` — derived from the provider schema description.
enum DataZeroTrustGatewayPolicyDirection implements TerraformEnum {
  asc('asc'),
  desc('desc');

  const DataZeroTrustGatewayPolicyDirection(this.terraformValue);
  @override
  final String terraformValue;
}

/// `order_by` — derived from the provider schema description.
enum DataZeroTrustGatewayPolicyOrderBy implements TerraformEnum {
  name('name'),
  createdAt('created_at'),
  updatedAt('updated_at'),
  precedence('precedence');

  const DataZeroTrustGatewayPolicyOrderBy(this.terraformValue);
  @override
  final String terraformValue;
}

/// Factory wrapper for `cloudflare_zero_trust_gateway_policy`.
final class DataCloudflareZeroTrustGatewayPolicy extends Data {
  static const String tfType = 'cloudflare_zero_trust_gateway_policy';

  DataCloudflareZeroTrustGatewayPolicy({
    required super.localName,
    RefTo<CloudflareAccount>? accountId,
    TfArg<String>? ruleId,
    DataZeroTrustGatewayPolicyFilter? filter,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           'account_id': ?accountId?.encodeAs('id'),
           'rule_id': ?ruleId,
           if (filter != null) 'filter': TfArg.literal(filter.encode()),
         },
       );

  @override
  Set<String> get sensitiveFields => _cloudflareZeroTrustGatewayPolicySensitive;

  /// A reference to the `cloudflare_zero_trust_gateway_policy` this data source reads, for
  /// arguments typed `RefTo<CloudflareZeroTrustGatewayPolicy>`.
  RefTo<CloudflareZeroTrustGatewayPolicy> get ref =>
      RefTo.read(this); // ignore: invalid_use_of_internal_member

  /// Reference to `name` attribute.
  TfRef<String> get nameRef => TfRef.attribute<String>(this, 'name');

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `action` attribute.
  TfRef<String> get action => TfRef.attribute<String>(this, 'action');

  /// Reference to `created_at` attribute.
  TfRef<String> get createdAt => TfRef.attribute<String>(this, 'created_at');

  /// Reference to `deleted_at` attribute.
  TfRef<String> get deletedAt => TfRef.attribute<String>(this, 'deleted_at');

  /// Reference to `description` attribute.
  TfRef<String> get description => TfRef.attribute<String>(this, 'description');

  /// Reference to `device_posture` attribute.
  TfRef<String> get devicePosture =>
      TfRef.attribute<String>(this, 'device_posture');

  /// Reference to `enabled` attribute.
  TfRef<bool> get enabled => TfRef.attribute<bool>(this, 'enabled');

  /// Reference to `filters` attribute.
  TfRef<List<String>> get filters =>
      TfRef.attribute<List<String>>(this, 'filters');

  /// Reference to `identity` attribute.
  TfRef<String> get identity => TfRef.attribute<String>(this, 'identity');

  /// Reference to `precedence` attribute.
  TfRef<num> get precedence => TfRef.attribute<num>(this, 'precedence');

  /// Reference to `read_only` attribute.
  TfRef<bool> get readOnly => TfRef.attribute<bool>(this, 'read_only');

  /// Reference to `sharable` attribute.
  TfRef<bool> get sharable => TfRef.attribute<bool>(this, 'sharable');

  /// Reference to `source_account` attribute.
  TfRef<String> get sourceAccount =>
      TfRef.attribute<String>(this, 'source_account');

  /// Reference to `traffic` attribute.
  TfRef<String> get traffic => TfRef.attribute<String>(this, 'traffic');

  /// Reference to `updated_at` attribute.
  TfRef<String> get updatedAt => TfRef.attribute<String>(this, 'updated_at');

  /// Reference to `version` attribute.
  TfRef<num> get version => TfRef.attribute<num>(this, 'version');

  /// Reference to `warning_status` attribute.
  TfRef<String> get warningStatus =>
      TfRef.attribute<String>(this, 'warning_status');

  /// Reference to `account_id` attribute.
  TfRef<String> get accountIdRef => TfRef.attribute<String>(this, 'account_id');

  /// Reference to `rule_id` attribute.
  TfRef<String> get ruleIdRef => TfRef.attribute<String>(this, 'rule_id');
}
