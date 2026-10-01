// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';

import '../kms/google_kms_crypto_key.dart' show GoogleKmsCryptoKey;
import '../spanner/google_spanner_instance.dart' show GoogleSpannerInstance;

/// Sensitive field paths for `google_spanner_database`.
const Set<String> _googleSpannerDatabaseSensitive = <String>{};

/// `database_dialect` — GoogleSQL vs PostgreSQL interface.
enum SpannerDatabaseDialect implements TerraformEnum {
  googleStandardSql('GOOGLE_STANDARD_SQL'),
  postgresql('POSTGRESQL');

  const SpannerDatabaseDialect(this.terraformValue);
  @override
  final String terraformValue;
}

/// Exactly one of `kms_key_name`, `kms_key_names` on the `encryption_config` block of `google_spanner_database`: the provider rejects
/// none and more than one, so each variant sets one of them.
///
/// Pick one with a dot shorthand: `.kmsKeyName(...)`.
sealed class SpannerDatabaseEncryptionConfig {
  const SpannerDatabaseEncryptionConfig();

  /// Sets `kms_key_name`.
  const factory SpannerDatabaseEncryptionConfig.kmsKeyName(
    RefTo<GoogleKmsCryptoKey> kmsKeyName,
  ) = SpannerDatabaseEncryptionConfigKmsKeyName;

  /// Sets `kms_key_names`.
  const factory SpannerDatabaseEncryptionConfig.kmsKeyNames(
    TfArg<List<String>> kmsKeyNames,
  ) = SpannerDatabaseEncryptionConfigKmsKeyNames;

  /// The Terraform argument this choice sets.
  String get blockKey;

  Map<String, Object?> encode();
}

/// The [SpannerDatabaseEncryptionConfig.kmsKeyName] choice: sets `kms_key_name`.
final class SpannerDatabaseEncryptionConfigKmsKeyName
    extends SpannerDatabaseEncryptionConfig {
  const SpannerDatabaseEncryptionConfigKmsKeyName(this.kmsKeyName);

  final RefTo<GoogleKmsCryptoKey> kmsKeyName;

  @override
  String get blockKey => 'kms_key_name';

  @override
  Map<String, Object?> encode() => {
    'kms_key_name': kmsKeyName.encodeAs('id').toTfJson(),
  };
}

/// The [SpannerDatabaseEncryptionConfig.kmsKeyNames] choice: sets `kms_key_names`.
final class SpannerDatabaseEncryptionConfigKmsKeyNames
    extends SpannerDatabaseEncryptionConfig {
  const SpannerDatabaseEncryptionConfigKmsKeyNames(this.kmsKeyNames);

  final TfArg<List<String>> kmsKeyNames;

  @override
  String get blockKey => 'kms_key_names';

  @override
  Map<String, Object?> encode() => {'kms_key_names': kmsKeyNames.toTfJson()};
}

/// Factory wrapper for `google_spanner_database`.
///
/// A Cloud Spanner Database which is hosted on a Spanner instance.
///
/// Cloud Spanner database inside a [GoogleSpannerInstance].
///
/// Required identity:
/// - [localName]: Terraform local name.
/// - [instance]: parent instance — `TfArg.ref(spanner.id)` or name.
/// - [name]: database ID.
///
/// Example:
/// ```dart
/// GoogleSpannerDatabase(
///   localName: 'main',
///   instance: spanner.ref,
///   name: TfArg.literal('main'),
///   versionRetentionPeriod: TfArg.literal('86400s'),
/// );
/// ```
final class GoogleSpannerDatabase extends Resource {
  static const String tfType = 'google_spanner_database';

  GoogleSpannerDatabase({
    required super.localName,
    required RefTo<GoogleSpannerInstance> instance,
    required TfArg<String> name,
    TfArg<SpannerDatabaseDialect>? databaseDialect,
    TfArg<String>? versionRetentionPeriod,
    TfArg<List<String>>? ddl,
    TfArg<bool>? deletionProtection,
    TfArg<String>? defaultTimeZone,
    TfArg<bool>? enableDropProtection,
    TfArg<String>? project,
    SpannerDatabaseEncryptionConfig? encryptionConfig,
    super.lifecycle,
    super.dependsOn,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           'instance': instance.encodeAs('name'),
           'name': name,
           'database_dialect': ?databaseDialect,
           'version_retention_period': ?versionRetentionPeriod,
           'ddl': ?ddl,
           'deletion_protection': ?deletionProtection,
           'default_time_zone': ?defaultTimeZone,
           'enable_drop_protection': ?enableDropProtection,
           'project': ?project,
           if (encryptionConfig != null)
             'encryption_config': TfArg.literal(encryptionConfig.encode()),
         },
       );

  @override
  Set<String> get sensitiveFields => _googleSpannerDatabaseSensitive;

  @override
  bool get supportsDeletionProtection => true;

  /// A reference to this resource, for arguments typed
  /// `RefTo<GoogleSpannerDatabase>`.
  RefTo<GoogleSpannerDatabase> get ref => RefTo.of(this);

  /// Reference to `name` attribute.
  TfRef<String> get nameRef => TfRef.attribute<String>(this, 'name');

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `state` attribute.
  TfRef<String> get state => TfRef.attribute<String>(this, 'state');

  /// Reference to `database_dialect` attribute.
  TfRef<String> get databaseDialectRef =>
      TfRef.attribute<String>(this, 'database_dialect');

  /// Reference to `ddl` attribute.
  TfRef<List<String>> get ddlRef => TfRef.attribute<List<String>>(this, 'ddl');

  /// Reference to `default_time_zone` attribute.
  TfRef<String> get defaultTimeZoneRef =>
      TfRef.attribute<String>(this, 'default_time_zone');

  /// Reference to `deletion_policy` attribute.
  TfRef<String> get deletionPolicyRef =>
      TfRef.attribute<String>(this, 'deletion_policy');

  /// Reference to `deletion_protection` attribute.
  TfRef<bool> get deletionProtectionRef =>
      TfRef.attribute<bool>(this, 'deletion_protection');

  /// Reference to `enable_drop_protection` attribute.
  TfRef<bool> get enableDropProtectionRef =>
      TfRef.attribute<bool>(this, 'enable_drop_protection');

  /// Reference to `instance` attribute.
  TfRef<String> get instanceRef => TfRef.attribute<String>(this, 'instance');

  /// Reference to `project` attribute.
  TfRef<String> get projectRef => TfRef.attribute<String>(this, 'project');

  /// Reference to `version_retention_period` attribute.
  TfRef<String> get versionRetentionPeriodRef =>
      TfRef.attribute<String>(this, 'version_retention_period');
}
