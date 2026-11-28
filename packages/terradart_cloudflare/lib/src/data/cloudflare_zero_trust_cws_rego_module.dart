// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:meta/meta.dart';
import 'package:terradart_core/terradart_core.dart';
import '../zero_trust/cloudflare_zero_trust_cws_rego_module.dart';
import '../account/cloudflare_account.dart' show CloudflareAccount;

/// Sensitive field paths for `cloudflare_zero_trust_cws_rego_module`.
const Set<String> _cloudflareZeroTrustCwsRegoModuleSensitive = <String>{};

/// Typed helper for the `filter` block of
/// `cloudflare_zero_trust_cws_rego_module` (derived from provider schema).
@immutable
final class DataZeroTrustCwsRegoModuleFilter {
  const DataZeroTrustCwsRegoModuleFilter({
    this.direction,
    this.name,
    this.order,
    this.packagePath,
  });

  final DataZeroTrustCwsRegoModuleDirection? direction;

  final TfArg<String>? name;

  final DataZeroTrustCwsRegoModuleOrder? order;

  final TfArg<String>? packagePath;

  @internal
  Map<String, Object?> encode() => {
    'direction': ?direction?.toTfJson(),
    'name': ?name?.toTfJson(),
    'order': ?order?.toTfJson(),
    'package_path': ?packagePath?.toTfJson(),
  };
}

/// `direction` — derived from the provider schema description.
extension type const DataZeroTrustCwsRegoModuleDirection._(TfArg<String> _)
    implements TfArg<String> {
  DataZeroTrustCwsRegoModuleDirection.variable(String name)
    : this._(TfArg.variable(name));
  DataZeroTrustCwsRegoModuleDirection.expression(String template)
    : this._(TfArg.expression(template));
  const DataZeroTrustCwsRegoModuleDirection.arg(TfArg<String> arg)
    : this._(arg);

  static const asc = DataZeroTrustCwsRegoModuleDirection._(TfArgLiteral('asc'));
  static const desc = DataZeroTrustCwsRegoModuleDirection._(
    TfArgLiteral('desc'),
  );

  static const List<DataZeroTrustCwsRegoModuleDirection> values = [asc, desc];
}

/// `order` — derived from the provider schema description.
extension type const DataZeroTrustCwsRegoModuleOrder._(TfArg<String> _)
    implements TfArg<String> {
  DataZeroTrustCwsRegoModuleOrder.variable(String name)
    : this._(TfArg.variable(name));
  DataZeroTrustCwsRegoModuleOrder.expression(String template)
    : this._(TfArg.expression(template));
  const DataZeroTrustCwsRegoModuleOrder.arg(TfArg<String> arg) : this._(arg);

  static const name = DataZeroTrustCwsRegoModuleOrder._(TfArgLiteral('name'));
  static const createdAt = DataZeroTrustCwsRegoModuleOrder._(
    TfArgLiteral('created_at'),
  );
  static const updatedAt = DataZeroTrustCwsRegoModuleOrder._(
    TfArgLiteral('updated_at'),
  );

  static const List<DataZeroTrustCwsRegoModuleOrder> values = [
    name,
    createdAt,
    updatedAt,
  ];
}

/// Factory wrapper for `cloudflare_zero_trust_cws_rego_module`.
final class DataCloudflareZeroTrustCwsRegoModule extends Data {
  static const String tfType = 'cloudflare_zero_trust_cws_rego_module';

  DataCloudflareZeroTrustCwsRegoModule(
    super.localName, {
    required RefTo<CloudflareAccount> accountId,
    TfArg<String>? regoModuleId,
    DataZeroTrustCwsRegoModuleFilter? filter,
    super.dependsOn,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           'account_id': accountId.encodeAs('id'),
           'rego_module_id': ?regoModuleId,
           if (filter != null) 'filter': TfArg.literal(filter.encode()),
         },
       );

  @override
  Set<String> get sensitiveFields => _cloudflareZeroTrustCwsRegoModuleSensitive;

  /// A reference to the `cloudflare_zero_trust_cws_rego_module` this data source reads, for
  /// arguments typed `RefTo<CloudflareZeroTrustCwsRegoModule>`.
  RefTo<CloudflareZeroTrustCwsRegoModule> get ref =>
      RefTo.read(this); // ignore: invalid_use_of_internal_member

  /// Reference to `name` attribute.
  TfRef<String> get name => TfRef.attribute<String>(this, 'name');

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `created_at` attribute.
  TfRef<String> get createdAt => TfRef.attribute<String>(this, 'created_at');

  /// Reference to `package_path` attribute.
  TfRef<String> get packagePath =>
      TfRef.attribute<String>(this, 'package_path');

  /// Reference to `rego_source` attribute.
  TfRef<String> get regoSource => TfRef.attribute<String>(this, 'rego_source');

  /// Reference to `updated_at` attribute.
  TfRef<String> get updatedAt => TfRef.attribute<String>(this, 'updated_at');

  /// Reference to `account_id` attribute.
  TfRef<String> get accountId => TfRef.attribute<String>(this, 'account_id');

  /// Reference to `rego_module_id` attribute.
  TfRef<String> get regoModuleId =>
      TfRef.attribute<String>(this, 'rego_module_id');
}
