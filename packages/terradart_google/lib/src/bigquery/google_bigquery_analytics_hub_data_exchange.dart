// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:meta/meta.dart';
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `google_bigquery_analytics_hub_data_exchange`.
const Set<String> _googleBigqueryAnalyticsHubDataExchangeSensitive = <String>{};

enum BigqueryAnalyticsHubDataExchangeDiscoveryType implements TerraformEnum {
  privateDiscovery('DISCOVERY_TYPE_PRIVATE'),
  publicDiscovery('DISCOVERY_TYPE_PUBLIC');

  const BigqueryAnalyticsHubDataExchangeDiscoveryType(this.terraformValue);
  @override
  final String terraformValue;
}

/// Exactly one of `default_exchange_config`, `dcr_exchange_config` on the `sharing_environment_config` block of `google_bigquery_analytics_hub_data_exchange`: the provider rejects
/// none and more than one, so each variant sets one of them.
///
/// Pick one with a dot shorthand: `.defaultExchangeConfig(...)`.
sealed class BigqueryAnalyticsHubDataExchangeSharingEnvironmentConfig {
  const BigqueryAnalyticsHubDataExchangeSharingEnvironmentConfig();

  /// Sets `default_exchange_config`.
  const factory BigqueryAnalyticsHubDataExchangeSharingEnvironmentConfig.defaultExchangeConfig(
    BigqueryAnalyticsHubDataExchangeSharingEnvironmentConfigDefaultExchangeConfig
    defaultExchangeConfig,
  ) = BigqueryAnalyticsHubDataExchangeSharingEnvironmentConfigDefaultExchangeConfigChoice;

  /// Sets `dcr_exchange_config`.
  const factory BigqueryAnalyticsHubDataExchangeSharingEnvironmentConfig.dcrExchangeConfig(
    BigqueryAnalyticsHubDataExchangeSharingEnvironmentConfigDcrExchangeConfig
    dcrExchangeConfig,
  ) = BigqueryAnalyticsHubDataExchangeSharingEnvironmentConfigDcrExchangeConfigChoice;

  /// The Terraform argument this choice sets.
  String get blockKey;

  Map<String, Object?> encode();
}

/// The [BigqueryAnalyticsHubDataExchangeSharingEnvironmentConfig.defaultExchangeConfig] choice: sets `default_exchange_config`.
final class BigqueryAnalyticsHubDataExchangeSharingEnvironmentConfigDefaultExchangeConfigChoice
    extends BigqueryAnalyticsHubDataExchangeSharingEnvironmentConfig {
  const BigqueryAnalyticsHubDataExchangeSharingEnvironmentConfigDefaultExchangeConfigChoice(
    this.defaultExchangeConfig,
  );

  final BigqueryAnalyticsHubDataExchangeSharingEnvironmentConfigDefaultExchangeConfig
  defaultExchangeConfig;

  @override
  String get blockKey => 'default_exchange_config';

  @override
  Map<String, Object?> encode() => {
    'default_exchange_config': defaultExchangeConfig.encode(),
  };
}

/// The [BigqueryAnalyticsHubDataExchangeSharingEnvironmentConfig.dcrExchangeConfig] choice: sets `dcr_exchange_config`.
final class BigqueryAnalyticsHubDataExchangeSharingEnvironmentConfigDcrExchangeConfigChoice
    extends BigqueryAnalyticsHubDataExchangeSharingEnvironmentConfig {
  const BigqueryAnalyticsHubDataExchangeSharingEnvironmentConfigDcrExchangeConfigChoice(
    this.dcrExchangeConfig,
  );

  final BigqueryAnalyticsHubDataExchangeSharingEnvironmentConfigDcrExchangeConfig
  dcrExchangeConfig;

  @override
  String get blockKey => 'dcr_exchange_config';

  @override
  Map<String, Object?> encode() => {
    'dcr_exchange_config': dcrExchangeConfig.encode(),
  };
}

/// Typed helper for the `sharing_environment_config.dcr_exchange_config` block of
/// `google_bigquery_analytics_hub_data_exchange` (derived from provider schema).
@immutable
final class BigqueryAnalyticsHubDataExchangeSharingEnvironmentConfigDcrExchangeConfig {
  const BigqueryAnalyticsHubDataExchangeSharingEnvironmentConfigDcrExchangeConfig();

  Map<String, Object?> encode() => {};
}

/// Typed helper for the `sharing_environment_config.default_exchange_config` block of
/// `google_bigquery_analytics_hub_data_exchange` (derived from provider schema).
@immutable
final class BigqueryAnalyticsHubDataExchangeSharingEnvironmentConfigDefaultExchangeConfig {
  const BigqueryAnalyticsHubDataExchangeSharingEnvironmentConfigDefaultExchangeConfig();

  Map<String, Object?> encode() => {};
}

/// Factory wrapper for `google_bigquery_analytics_hub_data_exchange`.
///
/// A Bigquery Analytics Hub data exchange
final class GoogleBigqueryAnalyticsHubDataExchange extends Resource {
  static const String tfType = 'google_bigquery_analytics_hub_data_exchange';

  GoogleBigqueryAnalyticsHubDataExchange({
    required super.localName,
    required TfArg<String> dataExchangeId,
    TfArg<String>? description,
    TfArg<BigqueryAnalyticsHubDataExchangeDiscoveryType>? discoveryType,
    required TfArg<String> displayName,
    TfArg<String>? documentation,
    TfArg<String>? icon,
    required TfArg<String> location,
    TfArg<bool>? logLinkedDatasetQueryUserEmail,
    TfArg<String>? primaryContact,
    TfArg<String>? project,
    BigqueryAnalyticsHubDataExchangeSharingEnvironmentConfig?
    sharingEnvironmentConfig,
    super.lifecycle,
    super.dependsOn,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           'data_exchange_id': dataExchangeId,
           'description': ?description,
           'discovery_type': ?discoveryType,
           'display_name': displayName,
           'documentation': ?documentation,
           'icon': ?icon,
           'location': location,
           'log_linked_dataset_query_user_email':
               ?logLinkedDatasetQueryUserEmail,
           'primary_contact': ?primaryContact,
           'project': ?project,
           if (sharingEnvironmentConfig != null)
             'sharing_environment_config': TfArg.literal(
               sharingEnvironmentConfig.encode(),
             ),
         },
       );

  @override
  Set<String> get sensitiveFields =>
      _googleBigqueryAnalyticsHubDataExchangeSensitive;

  /// A reference to this resource, for arguments typed
  /// `RefTo<GoogleBigqueryAnalyticsHubDataExchange>`.
  RefTo<GoogleBigqueryAnalyticsHubDataExchange> get ref => RefTo.of(this);

  /// Reference to `name` attribute.
  TfRef<String> get nameRef => TfRef.attribute<String>(this, 'name');

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `listing_count` attribute.
  TfRef<num> get listingCount => TfRef.attribute<num>(this, 'listing_count');

  /// Reference to `data_exchange_id` attribute.
  TfRef<String> get dataExchangeIdRef =>
      TfRef.attribute<String>(this, 'data_exchange_id');

  /// Reference to `deletion_policy` attribute.
  TfRef<String> get deletionPolicyRef =>
      TfRef.attribute<String>(this, 'deletion_policy');

  /// Reference to `description` attribute.
  TfRef<String> get descriptionRef =>
      TfRef.attribute<String>(this, 'description');

  /// Reference to `discovery_type` attribute.
  TfRef<String> get discoveryTypeRef =>
      TfRef.attribute<String>(this, 'discovery_type');

  /// Reference to `display_name` attribute.
  TfRef<String> get displayNameRef =>
      TfRef.attribute<String>(this, 'display_name');

  /// Reference to `documentation` attribute.
  TfRef<String> get documentationRef =>
      TfRef.attribute<String>(this, 'documentation');

  /// Reference to `icon` attribute.
  TfRef<String> get iconRef => TfRef.attribute<String>(this, 'icon');

  /// Reference to `location` attribute.
  TfRef<String> get locationRef => TfRef.attribute<String>(this, 'location');

  /// Reference to `log_linked_dataset_query_user_email` attribute.
  TfRef<bool> get logLinkedDatasetQueryUserEmailRef =>
      TfRef.attribute<bool>(this, 'log_linked_dataset_query_user_email');

  /// Reference to `primary_contact` attribute.
  TfRef<String> get primaryContactRef =>
      TfRef.attribute<String>(this, 'primary_contact');

  /// Reference to `project` attribute.
  TfRef<String> get projectRef => TfRef.attribute<String>(this, 'project');
}
