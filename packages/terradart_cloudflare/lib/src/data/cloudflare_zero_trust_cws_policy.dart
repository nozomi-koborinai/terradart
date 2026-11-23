// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:meta/meta.dart';
import 'package:terradart_core/terradart_core.dart';
import '../zero_trust/cloudflare_zero_trust_cws_policy.dart';
import '../account/cloudflare_account.dart' show CloudflareAccount;

/// Sensitive field paths for `cloudflare_zero_trust_cws_policy`.
const Set<String> _cloudflareZeroTrustCwsPolicySensitive = <String>{};

/// Typed helper for the `find_one_by` block of
/// `cloudflare_zero_trust_cws_policy` (derived from provider schema).
@immutable
final class DataZeroTrustCwsPolicyFindOneBy {
  const DataZeroTrustCwsPolicyFindOneBy({
    this.direction,
    this.name,
    this.order,
    this.packagePath,
    this.policySetId,
  });

  final DataZeroTrustCwsPolicyDirection? direction;

  final TfArg<String>? name;

  final DataZeroTrustCwsPolicyOrder? order;

  final TfArg<String>? packagePath;

  final TfArg<String>? policySetId;

  @internal
  Map<String, Object?> encode() => {
    'direction': ?direction?.toTfJson(),
    'name': ?name?.toTfJson(),
    'order': ?order?.toTfJson(),
    'package_path': ?packagePath?.toTfJson(),
    'policy_set_id': ?policySetId?.toTfJson(),
  };
}

/// `direction` — derived from the provider schema description.
extension type const DataZeroTrustCwsPolicyDirection._(TfArg<String> _)
    implements TfArg<String> {
  DataZeroTrustCwsPolicyDirection.variable(String name)
    : this._(TfArg.variable(name));
  DataZeroTrustCwsPolicyDirection.expression(String template)
    : this._(TfArg.expression(template));
  const DataZeroTrustCwsPolicyDirection.arg(TfArg<String> arg) : this._(arg);

  static const asc = DataZeroTrustCwsPolicyDirection._(TfArgLiteral('asc'));
  static const desc = DataZeroTrustCwsPolicyDirection._(TfArgLiteral('desc'));

  static const List<DataZeroTrustCwsPolicyDirection> values = [asc, desc];
}

/// `order` — derived from the provider schema description.
extension type const DataZeroTrustCwsPolicyOrder._(TfArg<String> _)
    implements TfArg<String> {
  DataZeroTrustCwsPolicyOrder.variable(String name)
    : this._(TfArg.variable(name));
  DataZeroTrustCwsPolicyOrder.expression(String template)
    : this._(TfArg.expression(template));
  const DataZeroTrustCwsPolicyOrder.arg(TfArg<String> arg) : this._(arg);

  static const name = DataZeroTrustCwsPolicyOrder._(TfArgLiteral('name'));
  static const createdAt = DataZeroTrustCwsPolicyOrder._(
    TfArgLiteral('created_at'),
  );
  static const updatedAt = DataZeroTrustCwsPolicyOrder._(
    TfArgLiteral('updated_at'),
  );

  static const List<DataZeroTrustCwsPolicyOrder> values = [
    name,
    createdAt,
    updatedAt,
  ];
}

/// Factory wrapper for `cloudflare_zero_trust_cws_policy`.
final class DataCloudflareZeroTrustCwsPolicy extends Data {
  static const String tfType = 'cloudflare_zero_trust_cws_policy';

  DataCloudflareZeroTrustCwsPolicy(
    super.localName, {
    required RefTo<CloudflareAccount> accountId,
    TfArg<String>? policyId,
    DataZeroTrustCwsPolicyFindOneBy? findOneBy,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           'account_id': accountId.encodeAs('id'),
           'policy_id': ?policyId,
           if (findOneBy != null)
             'find_one_by': TfArg.literal(findOneBy.encode()),
         },
       );

  @override
  Set<String> get sensitiveFields => _cloudflareZeroTrustCwsPolicySensitive;

  /// A reference to the `cloudflare_zero_trust_cws_policy` this data source reads, for
  /// arguments typed `RefTo<CloudflareZeroTrustCwsPolicy>`.
  RefTo<CloudflareZeroTrustCwsPolicy> get ref =>
      RefTo.read(this); // ignore: invalid_use_of_internal_member

  /// Reference to `name` attribute.
  TfRef<String> get name => TfRef.attribute<String>(this, 'name');

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `created_at` attribute.
  TfRef<String> get createdAt => TfRef.attribute<String>(this, 'created_at');

  /// Reference to `description` attribute.
  TfRef<String> get description => TfRef.attribute<String>(this, 'description');

  /// Reference to `entrypoint` attribute.
  TfRef<String> get entrypoint => TfRef.attribute<String>(this, 'entrypoint');

  /// Reference to `filter` attribute.
  TfRef<String> get filter => TfRef.attribute<String>(this, 'filter');

  /// Reference to `package_path` attribute.
  TfRef<String> get packagePath =>
      TfRef.attribute<String>(this, 'package_path');

  /// Reference to `rego_source` attribute.
  TfRef<String> get regoSource => TfRef.attribute<String>(this, 'rego_source');

  /// Reference to `tags` attribute.
  TfRef<Map<String, String>> get tags =>
      TfRef.attribute<Map<String, String>>(this, 'tags');

  /// Reference to `updated_at` attribute.
  TfRef<String> get updatedAt => TfRef.attribute<String>(this, 'updated_at');

  /// Reference to `account_id` attribute.
  TfRef<String> get accountId => TfRef.attribute<String>(this, 'account_id');

  /// Reference to `policy_id` attribute.
  TfRef<String> get policyId => TfRef.attribute<String>(this, 'policy_id');
}
