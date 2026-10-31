// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:meta/meta.dart';
import 'package:terradart_core/terradart_core.dart';

import '../storage/azurerm_storage_account.dart' show AzurermStorageAccount;

/// Sensitive field paths for `azurerm_storage_account_table_properties`.
const Set<String> _azurermStorageAccountTablePropertiesSensitive = <String>{};

/// Typed helper for the `cors_rule` block of
/// `azurerm_storage_account_table_properties` (derived from provider schema).
@immutable
final class StorageAccountTablePropertiesCorsRule {
  const StorageAccountTablePropertiesCorsRule({
    required this.allowedHeaders,
    required this.allowedMethods,
    required this.allowedOrigins,
    required this.exposedHeaders,
    required this.maxAgeInSeconds,
  });

  final TfArg<List<String>> allowedHeaders;

  final EnumList<StorageAccountTablePropertiesAllowedMethods> allowedMethods;

  final TfArg<List<String>> allowedOrigins;

  final TfArg<List<String>> exposedHeaders;

  final TfArg<num> maxAgeInSeconds;

  @internal
  Map<String, Object?> encode() => {
    'allowed_headers': allowedHeaders.toTfJson(),
    'allowed_methods': allowedMethods.toTfJson(),
    'allowed_origins': allowedOrigins.toTfJson(),
    'exposed_headers': exposedHeaders.toTfJson(),
    'max_age_in_seconds': maxAgeInSeconds.toTfJson(),
  };
}

/// `allowed_methods` — derived from the provider schema description.
extension type const StorageAccountTablePropertiesAllowedMethods._(
  TfArg<String> _
) implements TfArg<String> {
  StorageAccountTablePropertiesAllowedMethods.variable(String name)
    : this._(TfArg.variable(name));
  StorageAccountTablePropertiesAllowedMethods.expression(String template)
    : this._(TfArg.expression(template));
  const StorageAccountTablePropertiesAllowedMethods.arg(TfArg<String> arg)
    : this._(arg);

  static const delete = StorageAccountTablePropertiesAllowedMethods._(
    TfArgLiteral('DELETE'),
  );
  static const get = StorageAccountTablePropertiesAllowedMethods._(
    TfArgLiteral('GET'),
  );
  static const head = StorageAccountTablePropertiesAllowedMethods._(
    TfArgLiteral('HEAD'),
  );
  static const merge = StorageAccountTablePropertiesAllowedMethods._(
    TfArgLiteral('MERGE'),
  );
  static const post = StorageAccountTablePropertiesAllowedMethods._(
    TfArgLiteral('POST'),
  );
  static const options = StorageAccountTablePropertiesAllowedMethods._(
    TfArgLiteral('OPTIONS'),
  );
  static const put = StorageAccountTablePropertiesAllowedMethods._(
    TfArgLiteral('PUT'),
  );

  static const List<StorageAccountTablePropertiesAllowedMethods> values = [
    delete,
    get,
    head,
    merge,
    post,
    options,
    put,
  ];
}

/// Typed helper for the `hour_metrics` block of
/// `azurerm_storage_account_table_properties` (derived from provider schema).
@immutable
final class StorageAccountTablePropertiesHourMetrics {
  const StorageAccountTablePropertiesHourMetrics({
    this.includeApis,
    this.retentionPolicyDays,
    required this.version,
  });

  final TfArg<bool>? includeApis;

  final TfArg<num>? retentionPolicyDays;

  final TfArg<String> version;

  @internal
  Map<String, Object?> encode() => {
    'include_apis': ?includeApis?.toTfJson(),
    'retention_policy_days': ?retentionPolicyDays?.toTfJson(),
    'version': version.toTfJson(),
  };
}

/// Typed helper for the `logging` block of
/// `azurerm_storage_account_table_properties` (derived from provider schema).
@immutable
final class StorageAccountTablePropertiesLogging {
  const StorageAccountTablePropertiesLogging({
    required this.delete,
    required this.read,
    this.retentionPolicyDays,
    required this.version,
    required this.write,
  });

  final TfArg<bool> delete;

  final TfArg<bool> read;

  final TfArg<num>? retentionPolicyDays;

  final TfArg<String> version;

  final TfArg<bool> write;

  @internal
  Map<String, Object?> encode() => {
    'delete': delete.toTfJson(),
    'read': read.toTfJson(),
    'retention_policy_days': ?retentionPolicyDays?.toTfJson(),
    'version': version.toTfJson(),
    'write': write.toTfJson(),
  };
}

/// Typed helper for the `minute_metrics` block of
/// `azurerm_storage_account_table_properties` (derived from provider schema).
@immutable
final class StorageAccountTablePropertiesMinuteMetrics {
  const StorageAccountTablePropertiesMinuteMetrics({
    this.includeApis,
    this.retentionPolicyDays,
    required this.version,
  });

  final TfArg<bool>? includeApis;

  final TfArg<num>? retentionPolicyDays;

  final TfArg<String> version;

  @internal
  Map<String, Object?> encode() => {
    'include_apis': ?includeApis?.toTfJson(),
    'retention_policy_days': ?retentionPolicyDays?.toTfJson(),
    'version': version.toTfJson(),
  };
}

/// Factory wrapper for `azurerm_storage_account_table_properties`.
final class AzurermStorageAccountTableProperties extends Resource {
  static const String tfType = 'azurerm_storage_account_table_properties';

  AzurermStorageAccountTableProperties(
    super.localName, {
    required RefTo<AzurermStorageAccount> storageAccountId,
    List<StorageAccountTablePropertiesCorsRule>? corsRule,
    StorageAccountTablePropertiesHourMetrics? hourMetrics,
    StorageAccountTablePropertiesLogging? logging,
    StorageAccountTablePropertiesMinuteMetrics? minuteMetrics,
    super.lifecycle,
    super.dependsOn,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           'storage_account_id': storageAccountId.encodeAs('id'),
           if (corsRule != null)
             'cors_rule': TfArg.literal([for (final e in corsRule) e.encode()]),
           if (hourMetrics != null)
             'hour_metrics': TfArg.literal(hourMetrics.encode()),
           if (logging != null) 'logging': TfArg.literal(logging.encode()),
           if (minuteMetrics != null)
             'minute_metrics': TfArg.literal(minuteMetrics.encode()),
         },
       );

  @override
  Set<String> get sensitiveFields =>
      _azurermStorageAccountTablePropertiesSensitive;

  /// A reference to this resource, for arguments typed
  /// `RefTo<AzurermStorageAccountTableProperties>`.
  RefTo<AzurermStorageAccountTableProperties> get ref => RefTo.of(this);

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `storage_account_id` attribute.
  TfRef<String> get storageAccountId =>
      TfRef.attribute<String>(this, 'storage_account_id');
}
