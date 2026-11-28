// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';
import '../account/cloudflare_account.dart' show CloudflareAccount;

/// Sensitive field paths for `cloudflare_zero_trust_cws_rego_metadata_list`.
const Set<String> _cloudflareZeroTrustCwsRegoMetadataListSensitive = <String>{};

/// Data Zero Trust Cws Rego Metadata List enum for `direction`.
extension type const DataZeroTrustCwsRegoMetadataListDirection._(
  TfArg<String> _
)
    implements TfArg<String> {
  DataZeroTrustCwsRegoMetadataListDirection.variable(String name)
    : this._(TfArg.variable(name));
  DataZeroTrustCwsRegoMetadataListDirection.expression(String template)
    : this._(TfArg.expression(template));
  const DataZeroTrustCwsRegoMetadataListDirection.arg(TfArg<String> arg)
    : this._(arg);

  static const asc = DataZeroTrustCwsRegoMetadataListDirection._(
    TfArgLiteral('asc'),
  );
  static const desc = DataZeroTrustCwsRegoMetadataListDirection._(
    TfArgLiteral('desc'),
  );

  static const List<DataZeroTrustCwsRegoMetadataListDirection> values = [
    asc,
    desc,
  ];
}

/// Data Zero Trust Cws Rego Metadata List enum for `order`.
extension type const DataZeroTrustCwsRegoMetadataListOrder._(TfArg<String> _)
    implements TfArg<String> {
  DataZeroTrustCwsRegoMetadataListOrder.variable(String name)
    : this._(TfArg.variable(name));
  DataZeroTrustCwsRegoMetadataListOrder.expression(String template)
    : this._(TfArg.expression(template));
  const DataZeroTrustCwsRegoMetadataListOrder.arg(TfArg<String> arg)
    : this._(arg);

  static const name = DataZeroTrustCwsRegoMetadataListOrder._(
    TfArgLiteral('name'),
  );
  static const createdAt = DataZeroTrustCwsRegoMetadataListOrder._(
    TfArgLiteral('created_at'),
  );
  static const updatedAt = DataZeroTrustCwsRegoMetadataListOrder._(
    TfArgLiteral('updated_at'),
  );

  static const List<DataZeroTrustCwsRegoMetadataListOrder> values = [
    name,
    createdAt,
    updatedAt,
  ];
}

/// Factory wrapper for `cloudflare_zero_trust_cws_rego_metadata_list`.
final class DataCloudflareZeroTrustCwsRegoMetadataList extends Data {
  static const String tfType = 'cloudflare_zero_trust_cws_rego_metadata_list';

  DataCloudflareZeroTrustCwsRegoMetadataList(
    super.localName, {
    required RefTo<CloudflareAccount> accountId,
    DataZeroTrustCwsRegoMetadataListDirection? direction,
    TfArg<String>? importPath,
    TfArg<num>? maxItems,
    TfArg<String>? name,
    DataZeroTrustCwsRegoMetadataListOrder? order,
    super.dependsOn,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           'account_id': accountId.encodeAs('id'),
           'direction': ?direction,
           'import_path': ?importPath,
           'max_items': ?maxItems,
           'name': ?name,
           'order': ?order,
         },
       );

  @override
  Set<String> get sensitiveFields =>
      _cloudflareZeroTrustCwsRegoMetadataListSensitive;

  /// Reference to `name` attribute.
  TfRef<String> get name => TfRef.attribute<String>(this, 'name');

  /// Reference to `account_id` attribute.
  TfRef<String> get accountId => TfRef.attribute<String>(this, 'account_id');

  /// Reference to `direction` attribute.
  TfRef<String> get direction => TfRef.attribute<String>(this, 'direction');

  /// Reference to `import_path` attribute.
  TfRef<String> get importPath => TfRef.attribute<String>(this, 'import_path');

  /// Reference to `max_items` attribute.
  TfRef<num> get maxItems => TfRef.attribute<num>(this, 'max_items');

  /// Reference to `order` attribute.
  TfRef<String> get order => TfRef.attribute<String>(this, 'order');
}
