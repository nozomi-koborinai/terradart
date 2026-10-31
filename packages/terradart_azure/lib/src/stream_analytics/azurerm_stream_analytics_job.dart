// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:meta/meta.dart';
import 'package:terradart_core/terradart_core.dart';

import '../resource/azurerm_resource_group.dart' show AzurermResourceGroup;

/// Sensitive field paths for `azurerm_stream_analytics_job`.
const Set<String> _azurermStreamAnalyticsJobSensitive = <String>{
  'job_storage_account.account_key',
};

/// Stream Analytics Job Compatibility enum for `compatibility_level`.
extension type const StreamAnalyticsJobCompatibilityLevel._(TfArg<String> _)
    implements TfArg<String> {
  StreamAnalyticsJobCompatibilityLevel.variable(String name)
    : this._(TfArg.variable(name));
  StreamAnalyticsJobCompatibilityLevel.expression(String template)
    : this._(TfArg.expression(template));
  const StreamAnalyticsJobCompatibilityLevel.arg(TfArg<String> arg)
    : this._(arg);

  static const v1p0 = StreamAnalyticsJobCompatibilityLevel._(
    TfArgLiteral('1.0'),
  );
  static const v1p1 = StreamAnalyticsJobCompatibilityLevel._(
    TfArgLiteral('1.1'),
  );
  static const v1p2 = StreamAnalyticsJobCompatibilityLevel._(
    TfArgLiteral('1.2'),
  );

  static const List<StreamAnalyticsJobCompatibilityLevel> values = [
    v1p0,
    v1p1,
    v1p2,
  ];
}

/// Stream Analytics Job Content Storage enum for `content_storage_policy`.
extension type const StreamAnalyticsJobContentStoragePolicy._(TfArg<String> _)
    implements TfArg<String> {
  StreamAnalyticsJobContentStoragePolicy.variable(String name)
    : this._(TfArg.variable(name));
  StreamAnalyticsJobContentStoragePolicy.expression(String template)
    : this._(TfArg.expression(template));
  const StreamAnalyticsJobContentStoragePolicy.arg(TfArg<String> arg)
    : this._(arg);

  static const jobstorageaccount = StreamAnalyticsJobContentStoragePolicy._(
    TfArgLiteral('JobStorageAccount'),
  );
  static const systemaccount = StreamAnalyticsJobContentStoragePolicy._(
    TfArgLiteral('SystemAccount'),
  );

  static const List<StreamAnalyticsJobContentStoragePolicy> values = [
    jobstorageaccount,
    systemaccount,
  ];
}

/// Stream Analytics Job Events Out Of Order enum for `events_out_of_order_policy`.
extension type const StreamAnalyticsJobEventsOutOfOrderPolicy._(TfArg<String> _)
    implements TfArg<String> {
  StreamAnalyticsJobEventsOutOfOrderPolicy.variable(String name)
    : this._(TfArg.variable(name));
  StreamAnalyticsJobEventsOutOfOrderPolicy.expression(String template)
    : this._(TfArg.expression(template));
  const StreamAnalyticsJobEventsOutOfOrderPolicy.arg(TfArg<String> arg)
    : this._(arg);

  static const adjust = StreamAnalyticsJobEventsOutOfOrderPolicy._(
    TfArgLiteral('Adjust'),
  );
  static const drop = StreamAnalyticsJobEventsOutOfOrderPolicy._(
    TfArgLiteral('Drop'),
  );

  static const List<StreamAnalyticsJobEventsOutOfOrderPolicy> values = [
    adjust,
    drop,
  ];
}

/// Stream Analytics Job Output Error enum for `output_error_policy`.
extension type const StreamAnalyticsJobOutputErrorPolicy._(TfArg<String> _)
    implements TfArg<String> {
  StreamAnalyticsJobOutputErrorPolicy.variable(String name)
    : this._(TfArg.variable(name));
  StreamAnalyticsJobOutputErrorPolicy.expression(String template)
    : this._(TfArg.expression(template));
  const StreamAnalyticsJobOutputErrorPolicy.arg(TfArg<String> arg)
    : this._(arg);

  static const drop = StreamAnalyticsJobOutputErrorPolicy._(
    TfArgLiteral('Drop'),
  );
  static const stop = StreamAnalyticsJobOutputErrorPolicy._(
    TfArgLiteral('Stop'),
  );

  static const List<StreamAnalyticsJobOutputErrorPolicy> values = [drop, stop];
}

/// Stream Analytics Job Sku enum for `sku_name`.
extension type const StreamAnalyticsJobSkuName._(TfArg<String> _)
    implements TfArg<String> {
  StreamAnalyticsJobSkuName.variable(String name)
    : this._(TfArg.variable(name));
  StreamAnalyticsJobSkuName.expression(String template)
    : this._(TfArg.expression(template));
  const StreamAnalyticsJobSkuName.arg(TfArg<String> arg) : this._(arg);

  static const standard = StreamAnalyticsJobSkuName._(TfArgLiteral('Standard'));
  static const standardv2 = StreamAnalyticsJobSkuName._(
    TfArgLiteral('StandardV2'),
  );

  static const List<StreamAnalyticsJobSkuName> values = [standard, standardv2];
}

/// Stream Analytics Job enum for `type`.
extension type const StreamAnalyticsJobType._(TfArg<String> _)
    implements TfArg<String> {
  StreamAnalyticsJobType.variable(String name) : this._(TfArg.variable(name));
  StreamAnalyticsJobType.expression(String template)
    : this._(TfArg.expression(template));
  const StreamAnalyticsJobType.arg(TfArg<String> arg) : this._(arg);

  static const cloud = StreamAnalyticsJobType._(TfArgLiteral('Cloud'));
  static const edge = StreamAnalyticsJobType._(TfArgLiteral('Edge'));

  static const List<StreamAnalyticsJobType> values = [cloud, edge];
}

/// Typed helper for the `identity` block of
/// `azurerm_stream_analytics_job` (derived from provider schema).
@immutable
final class StreamAnalyticsJobIdentity {
  const StreamAnalyticsJobIdentity({this.identityIds, required this.type});

  final TfArg<List<String>>? identityIds;

  final TfArg<String> type;

  @internal
  Map<String, Object?> encode() => {
    'identity_ids': ?identityIds?.toTfJson(),
    'type': type.toTfJson(),
  };
}

/// Typed helper for the `job_storage_account` block of
/// `azurerm_stream_analytics_job` (derived from provider schema).
@immutable
final class StreamAnalyticsJobStorageAccount {
  const StreamAnalyticsJobStorageAccount({
    this.accountKey,
    required this.accountName,
    this.authenticationMode,
  });

  final Sensitive<String>? accountKey;

  final TfArg<String> accountName;

  final StreamAnalyticsJobAuthenticationMode? authenticationMode;

  @internal
  Map<String, Object?> encode() => {
    'account_key': ?accountKey?.toTfJson(),
    'account_name': accountName.toTfJson(),
    'authentication_mode': ?authenticationMode?.toTfJson(),
  };
}

/// `authentication_mode` — derived from the provider schema description.
extension type const StreamAnalyticsJobAuthenticationMode._(TfArg<String> _)
    implements TfArg<String> {
  StreamAnalyticsJobAuthenticationMode.variable(String name)
    : this._(TfArg.variable(name));
  StreamAnalyticsJobAuthenticationMode.expression(String template)
    : this._(TfArg.expression(template));
  const StreamAnalyticsJobAuthenticationMode.arg(TfArg<String> arg)
    : this._(arg);

  static const connectionstring = StreamAnalyticsJobAuthenticationMode._(
    TfArgLiteral('ConnectionString'),
  );
  static const msi = StreamAnalyticsJobAuthenticationMode._(
    TfArgLiteral('Msi'),
  );

  static const List<StreamAnalyticsJobAuthenticationMode> values = [
    connectionstring,
    msi,
  ];
}

/// Factory wrapper for `azurerm_stream_analytics_job`.
final class AzurermStreamAnalyticsJob extends Resource {
  static const String tfType = 'azurerm_stream_analytics_job';

  AzurermStreamAnalyticsJob(
    super.localName, {
    StreamAnalyticsJobCompatibilityLevel? compatibilityLevel,
    StreamAnalyticsJobContentStoragePolicy? contentStoragePolicy,
    TfArg<String>? dataLocale,
    TfArg<num>? eventsLateArrivalMaxDelayInSeconds,
    TfArg<num>? eventsOutOfOrderMaxDelayInSeconds,
    StreamAnalyticsJobEventsOutOfOrderPolicy? eventsOutOfOrderPolicy,
    required TfArg<String> location,
    required TfArg<String> name,
    StreamAnalyticsJobOutputErrorPolicy? outputErrorPolicy,
    required RefTo<AzurermResourceGroup> resourceGroupName,
    StreamAnalyticsJobSkuName? skuName,
    TfArg<String>? streamAnalyticsClusterId,
    TfArg<num>? streamingUnits,
    TfArg<Map<String, String>>? tags,
    required TfArg<String> transformationQuery,
    StreamAnalyticsJobType? type,
    StreamAnalyticsJobIdentity? identity,
    StreamAnalyticsJobStorageAccount? jobStorageAccount,
    super.lifecycle,
    super.dependsOn,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           'compatibility_level': ?compatibilityLevel,
           'content_storage_policy': ?contentStoragePolicy,
           'data_locale': ?dataLocale,
           'events_late_arrival_max_delay_in_seconds':
               ?eventsLateArrivalMaxDelayInSeconds,
           'events_out_of_order_max_delay_in_seconds':
               ?eventsOutOfOrderMaxDelayInSeconds,
           'events_out_of_order_policy': ?eventsOutOfOrderPolicy,
           'location': location,
           'name': name,
           'output_error_policy': ?outputErrorPolicy,
           'resource_group_name': resourceGroupName.encodeAs('name'),
           'sku_name': ?skuName,
           'stream_analytics_cluster_id': ?streamAnalyticsClusterId,
           'streaming_units': ?streamingUnits,
           'tags': ?tags,
           'transformation_query': transformationQuery,
           'type': ?type,
           if (identity != null) 'identity': TfArg.literal(identity.encode()),
           if (jobStorageAccount != null)
             'job_storage_account': TfArg.literal(jobStorageAccount.encode()),
         },
       );

  @override
  Set<String> get sensitiveFields => _azurermStreamAnalyticsJobSensitive;

  /// A reference to this resource, for arguments typed
  /// `RefTo<AzurermStreamAnalyticsJob>`.
  RefTo<AzurermStreamAnalyticsJob> get ref => RefTo.of(this);

  /// Reference to `name` attribute.
  TfRef<String> get name => TfRef.attribute<String>(this, 'name');

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `job_id` attribute.
  TfRef<String> get jobId => TfRef.attribute<String>(this, 'job_id');

  /// Reference to `compatibility_level` attribute.
  TfRef<String> get compatibilityLevel =>
      TfRef.attribute<String>(this, 'compatibility_level');

  /// Reference to `content_storage_policy` attribute.
  TfRef<String> get contentStoragePolicy =>
      TfRef.attribute<String>(this, 'content_storage_policy');

  /// Reference to `data_locale` attribute.
  TfRef<String> get dataLocale => TfRef.attribute<String>(this, 'data_locale');

  /// Reference to `events_late_arrival_max_delay_in_seconds` attribute.
  TfRef<num> get eventsLateArrivalMaxDelayInSeconds =>
      TfRef.attribute<num>(this, 'events_late_arrival_max_delay_in_seconds');

  /// Reference to `events_out_of_order_max_delay_in_seconds` attribute.
  TfRef<num> get eventsOutOfOrderMaxDelayInSeconds =>
      TfRef.attribute<num>(this, 'events_out_of_order_max_delay_in_seconds');

  /// Reference to `events_out_of_order_policy` attribute.
  TfRef<String> get eventsOutOfOrderPolicy =>
      TfRef.attribute<String>(this, 'events_out_of_order_policy');

  /// Reference to `location` attribute.
  TfRef<String> get location => TfRef.attribute<String>(this, 'location');

  /// Reference to `output_error_policy` attribute.
  TfRef<String> get outputErrorPolicy =>
      TfRef.attribute<String>(this, 'output_error_policy');

  /// Reference to `resource_group_name` attribute.
  TfRef<String> get resourceGroupName =>
      TfRef.attribute<String>(this, 'resource_group_name');

  /// Reference to `sku_name` attribute.
  TfRef<String> get skuName => TfRef.attribute<String>(this, 'sku_name');

  /// Reference to `stream_analytics_cluster_id` attribute.
  TfRef<String> get streamAnalyticsClusterId =>
      TfRef.attribute<String>(this, 'stream_analytics_cluster_id');

  /// Reference to `streaming_units` attribute.
  TfRef<num> get streamingUnits =>
      TfRef.attribute<num>(this, 'streaming_units');

  /// Reference to `tags` attribute.
  TfRef<Map<String, String>> get tags =>
      TfRef.attribute<Map<String, String>>(this, 'tags');

  /// Reference to `transformation_query` attribute.
  TfRef<String> get transformationQuery =>
      TfRef.attribute<String>(this, 'transformation_query');

  /// Reference to `type` attribute.
  TfRef<String> get type => TfRef.attribute<String>(this, 'type');
}
