// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';
import '../account/cloudflare_account.dart' show CloudflareAccount;

/// Sensitive field paths for `cloudflare_zero_trust_cws_rego_modules`.
const Set<String> _cloudflareZeroTrustCwsRegoModulesSensitive = <String>{};

/// Data Zero Trust Cws Rego Modules enum for `direction`.
extension type const DataZeroTrustCwsRegoModulesDirection._(TfArg<String> _)
    implements TfArg<String> {
  DataZeroTrustCwsRegoModulesDirection.variable(String name)
    : this._(TfArg.variable(name));
  DataZeroTrustCwsRegoModulesDirection.expression(String template)
    : this._(TfArg.expression(template));
  const DataZeroTrustCwsRegoModulesDirection.arg(TfArg<String> arg)
    : this._(arg);

  static const asc = DataZeroTrustCwsRegoModulesDirection._(
    TfArgLiteral('asc'),
  );
  static const desc = DataZeroTrustCwsRegoModulesDirection._(
    TfArgLiteral('desc'),
  );

  static const List<DataZeroTrustCwsRegoModulesDirection> values = [asc, desc];
}

/// Data Zero Trust Cws Rego Modules enum for `order`.
extension type const DataZeroTrustCwsRegoModulesOrder._(TfArg<String> _)
    implements TfArg<String> {
  DataZeroTrustCwsRegoModulesOrder.variable(String name)
    : this._(TfArg.variable(name));
  DataZeroTrustCwsRegoModulesOrder.expression(String template)
    : this._(TfArg.expression(template));
  const DataZeroTrustCwsRegoModulesOrder.arg(TfArg<String> arg) : this._(arg);

  static const name = DataZeroTrustCwsRegoModulesOrder._(TfArgLiteral('name'));
  static const createdAt = DataZeroTrustCwsRegoModulesOrder._(
    TfArgLiteral('created_at'),
  );
  static const updatedAt = DataZeroTrustCwsRegoModulesOrder._(
    TfArgLiteral('updated_at'),
  );

  static const List<DataZeroTrustCwsRegoModulesOrder> values = [
    name,
    createdAt,
    updatedAt,
  ];
}

/// Factory wrapper for `cloudflare_zero_trust_cws_rego_modules`.
final class DataCloudflareZeroTrustCwsRegoModules extends Data {
  static const String tfType = 'cloudflare_zero_trust_cws_rego_modules';

  DataCloudflareZeroTrustCwsRegoModules(
    super.localName, {
    required RefTo<CloudflareAccount> accountId,
    DataZeroTrustCwsRegoModulesDirection? direction,
    TfArg<num>? maxItems,
    TfArg<String>? name,
    DataZeroTrustCwsRegoModulesOrder? order,
    TfArg<String>? packagePath,
    super.dependsOn,
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
         },
       );

  @override
  Set<String> get sensitiveFields =>
      _cloudflareZeroTrustCwsRegoModulesSensitive;

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
}
