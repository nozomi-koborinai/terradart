// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `aws_db_event_subscription`.
const Set<String> _awsDbEventSubscriptionSensitive = <String>{};

/// Db Event Subscription Source enum for `source_type`.
enum DbEventSubscriptionSourceType implements TerraformEnum {
  dbInstance('db-instance'),
  dbParameterGroup('db-parameter-group'),
  dbSecurityGroup('db-security-group'),
  dbSnapshot('db-snapshot'),
  dbCluster('db-cluster'),
  dbClusterSnapshot('db-cluster-snapshot'),
  customEngineVersion('custom-engine-version'),
  dbProxy('db-proxy'),
  blueGreenDeployment('blue-green-deployment'),
  dbShardGroup('db-shard-group'),
  zeroEtl('zero-etl');

  const DbEventSubscriptionSourceType(this.terraformValue);
  @override
  final String terraformValue;
}

/// At most one of `name`, `name_prefix` on `aws_db_event_subscription`: the provider rejects
/// more than one, so each variant sets one of them and a
/// null choice sets none.
sealed class DbEventSubscriptionNameOrNamePrefix {
  const DbEventSubscriptionNameOrNamePrefix();

  /// The Terraform argument this choice sets.
  String get blockKey;

  Map<String, Object?> encode();

  /// The resource arguments behind [encode], as the caller's
  /// [TfArg]s.
  Map<String, TfArg<Object?>> get argMap;
}

/// Sets `name` (one of the [DbEventSubscriptionNameOrNamePrefix] choices).
final class DbEventSubscriptionNameOption
    extends DbEventSubscriptionNameOrNamePrefix {
  const DbEventSubscriptionNameOption({required this.name});

  final TfArg<String> name;

  @override
  String get blockKey => 'name';

  @override
  Map<String, Object?> encode() => {'name': name.toTfJson()};

  @override
  Map<String, TfArg<Object?>> get argMap => {'name': name};
}

/// Sets `name_prefix` (one of the [DbEventSubscriptionNameOrNamePrefix] choices).
final class DbEventSubscriptionNamePrefixOption
    extends DbEventSubscriptionNameOrNamePrefix {
  const DbEventSubscriptionNamePrefixOption({required this.namePrefix});

  final TfArg<String> namePrefix;

  @override
  String get blockKey => 'name_prefix';

  @override
  Map<String, Object?> encode() => {'name_prefix': namePrefix.toTfJson()};

  @override
  Map<String, TfArg<Object?>> get argMap => {'name_prefix': namePrefix};
}

/// Factory wrapper for `aws_db_event_subscription`.
final class AwsDbEventSubscription extends Resource {
  static const String tfType = 'aws_db_event_subscription';

  AwsDbEventSubscription({
    required super.localName,
    TfArg<bool>? enabled,
    TfArg<List<String>>? eventCategories,
    DbEventSubscriptionNameOrNamePrefix? nameOrNamePrefix,
    TfArg<String>? region,
    required TfArg<String> snsTopic,
    TfArg<List<String>>? sourceIds,
    TfArg<DbEventSubscriptionSourceType>? sourceType,
    TfArg<Map<String, String>>? tags,
    super.lifecycle,
    super.dependsOn,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           if (enabled != null) 'enabled': enabled,
           if (eventCategories != null) 'event_categories': eventCategories,
           ...?nameOrNamePrefix?.argMap,
           if (region != null) 'region': region,
           'sns_topic': snsTopic,
           if (sourceIds != null) 'source_ids': sourceIds,
           if (sourceType != null) 'source_type': sourceType,
           if (tags != null) 'tags': tags,
         },
       );

  @override
  Set<String> get sensitiveFields => _awsDbEventSubscriptionSensitive;

  /// Reference to `name` attribute.
  TfRef<String> get nameRef => TfRef.attribute<String>(this, 'name');

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `arn` attribute.
  TfRef<String> get arn => TfRef.attribute<String>(this, 'arn');

  /// Reference to `customer_aws_id` attribute.
  TfRef<String> get customerAwsId =>
      TfRef.attribute<String>(this, 'customer_aws_id');
}
