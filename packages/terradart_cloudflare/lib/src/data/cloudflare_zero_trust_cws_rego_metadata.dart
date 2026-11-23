// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:meta/meta.dart';
import 'package:terradart_core/terradart_core.dart';
import '../zero_trust/cloudflare_zero_trust_cws_rego_metadata.dart';
import '../account/cloudflare_account.dart' show CloudflareAccount;

/// Sensitive field paths for `cloudflare_zero_trust_cws_rego_metadata`.
const Set<String> _cloudflareZeroTrustCwsRegoMetadataSensitive = <String>{};

/// Typed helper for the `filter` block of
/// `cloudflare_zero_trust_cws_rego_metadata` (derived from provider schema).
@immutable
final class DataZeroTrustCwsRegoMetadataFilter {
  const DataZeroTrustCwsRegoMetadataFilter({
    this.direction,
    this.importPath,
    this.name,
    this.order,
  });

  final DataZeroTrustCwsRegoMetadataDirection? direction;

  final TfArg<String>? importPath;

  final TfArg<String>? name;

  final DataZeroTrustCwsRegoMetadataOrder? order;

  @internal
  Map<String, Object?> encode() => {
    'direction': ?direction?.toTfJson(),
    'import_path': ?importPath?.toTfJson(),
    'name': ?name?.toTfJson(),
    'order': ?order?.toTfJson(),
  };
}

/// `direction` — derived from the provider schema description.
extension type const DataZeroTrustCwsRegoMetadataDirection._(TfArg<String> _)
    implements TfArg<String> {
  DataZeroTrustCwsRegoMetadataDirection.variable(String name)
    : this._(TfArg.variable(name));
  DataZeroTrustCwsRegoMetadataDirection.expression(String template)
    : this._(TfArg.expression(template));
  const DataZeroTrustCwsRegoMetadataDirection.arg(TfArg<String> arg)
    : this._(arg);

  static const asc = DataZeroTrustCwsRegoMetadataDirection._(
    TfArgLiteral('asc'),
  );
  static const desc = DataZeroTrustCwsRegoMetadataDirection._(
    TfArgLiteral('desc'),
  );

  static const List<DataZeroTrustCwsRegoMetadataDirection> values = [asc, desc];
}

/// `order` — derived from the provider schema description.
extension type const DataZeroTrustCwsRegoMetadataOrder._(TfArg<String> _)
    implements TfArg<String> {
  DataZeroTrustCwsRegoMetadataOrder.variable(String name)
    : this._(TfArg.variable(name));
  DataZeroTrustCwsRegoMetadataOrder.expression(String template)
    : this._(TfArg.expression(template));
  const DataZeroTrustCwsRegoMetadataOrder.arg(TfArg<String> arg) : this._(arg);

  static const name = DataZeroTrustCwsRegoMetadataOrder._(TfArgLiteral('name'));
  static const createdAt = DataZeroTrustCwsRegoMetadataOrder._(
    TfArgLiteral('created_at'),
  );
  static const updatedAt = DataZeroTrustCwsRegoMetadataOrder._(
    TfArgLiteral('updated_at'),
  );

  static const List<DataZeroTrustCwsRegoMetadataOrder> values = [
    name,
    createdAt,
    updatedAt,
  ];
}

/// Factory wrapper for `cloudflare_zero_trust_cws_rego_metadata`.
final class DataCloudflareZeroTrustCwsRegoMetadata extends Data {
  static const String tfType = 'cloudflare_zero_trust_cws_rego_metadata';

  DataCloudflareZeroTrustCwsRegoMetadata(
    super.localName, {
    required RefTo<CloudflareAccount> accountId,
    TfArg<String>? regoMetadataId,
    DataZeroTrustCwsRegoMetadataFilter? filter,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           'account_id': accountId.encodeAs('id'),
           'rego_metadata_id': ?regoMetadataId,
           if (filter != null) 'filter': TfArg.literal(filter.encode()),
         },
       );

  @override
  Set<String> get sensitiveFields =>
      _cloudflareZeroTrustCwsRegoMetadataSensitive;

  /// A reference to the `cloudflare_zero_trust_cws_rego_metadata` this data source reads, for
  /// arguments typed `RefTo<CloudflareZeroTrustCwsRegoMetadata>`.
  RefTo<CloudflareZeroTrustCwsRegoMetadata> get ref =>
      RefTo.read(this); // ignore: invalid_use_of_internal_member

  /// Reference to `name` attribute.
  TfRef<String> get name => TfRef.attribute<String>(this, 'name');

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `created_at` attribute.
  TfRef<String> get createdAt => TfRef.attribute<String>(this, 'created_at');

  /// Reference to `data` attribute.
  TfRef<String> get data => TfRef.attribute<String>(this, 'data');

  /// Reference to `import_path` attribute.
  TfRef<String> get importPath => TfRef.attribute<String>(this, 'import_path');

  /// Reference to `updated_at` attribute.
  TfRef<String> get updatedAt => TfRef.attribute<String>(this, 'updated_at');

  /// Reference to `account_id` attribute.
  TfRef<String> get accountId => TfRef.attribute<String>(this, 'account_id');

  /// Reference to `rego_metadata_id` attribute.
  TfRef<String> get regoMetadataId =>
      TfRef.attribute<String>(this, 'rego_metadata_id');
}
