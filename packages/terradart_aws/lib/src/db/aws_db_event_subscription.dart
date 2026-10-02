// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:meta/meta.dart';
import 'package:terradart_core/terradart_core.dart';

import '../sns/aws_sns_topic.dart' show AwsSnsTopic;

/// Sensitive field paths for `aws_db_event_subscription`.
const Set<String> _awsDbEventSubscriptionSensitive = <String>{};

/// Db Event Subscription Source enum for `source_type`.
extension type const DbEventSubscriptionSourceType._(TfArg<String> _)
    implements TfArg<String> {
  DbEventSubscriptionSourceType.variable(String name)
    : this._(TfArg.variable(name));
  DbEventSubscriptionSourceType.expression(String template)
    : this._(TfArg.expression(template));
  const DbEventSubscriptionSourceType.arg(TfArg<String> arg) : this._(arg);

  static const dbInstance = DbEventSubscriptionSourceType._(
    TfArgLiteral('db-instance'),
  );
  static const dbParameterGroup = DbEventSubscriptionSourceType._(
    TfArgLiteral('db-parameter-group'),
  );
  static const dbSecurityGroup = DbEventSubscriptionSourceType._(
    TfArgLiteral('db-security-group'),
  );
  static const dbSnapshot = DbEventSubscriptionSourceType._(
    TfArgLiteral('db-snapshot'),
  );
  static const dbCluster = DbEventSubscriptionSourceType._(
    TfArgLiteral('db-cluster'),
  );
  static const dbClusterSnapshot = DbEventSubscriptionSourceType._(
    TfArgLiteral('db-cluster-snapshot'),
  );
  static const customEngineVersion = DbEventSubscriptionSourceType._(
    TfArgLiteral('custom-engine-version'),
  );
  static const dbProxy = DbEventSubscriptionSourceType._(
    TfArgLiteral('db-proxy'),
  );
  static const blueGreenDeployment = DbEventSubscriptionSourceType._(
    TfArgLiteral('blue-green-deployment'),
  );
  static const dbShardGroup = DbEventSubscriptionSourceType._(
    TfArgLiteral('db-shard-group'),
  );
  static const zeroEtl = DbEventSubscriptionSourceType._(
    TfArgLiteral('zero-etl'),
  );

  static const List<DbEventSubscriptionSourceType> values = [
    dbInstance,
    dbParameterGroup,
    dbSecurityGroup,
    dbSnapshot,
    dbCluster,
    dbClusterSnapshot,
    customEngineVersion,
    dbProxy,
    blueGreenDeployment,
    dbShardGroup,
    zeroEtl,
  ];
}

/// At most one of `name`, `name_prefix` on `aws_db_event_subscription`: the provider rejects
/// more than one, so each variant sets one of them and a
/// null choice sets none.
///
/// Pick one with a dot shorthand: `.name(...)`.
sealed class DbEventSubscriptionName {
  const DbEventSubscriptionName();

  /// Sets `name`.
  const factory DbEventSubscriptionName.name(TfArg<String> name) =
      DbEventSubscriptionNameChoice;

  /// Sets `name_prefix`.
  const factory DbEventSubscriptionName.namePrefix(TfArg<String> namePrefix) =
      DbEventSubscriptionNamePrefix;

  /// The Terraform argument this choice sets.
  @internal
  String get blockKey;

  @internal
  Map<String, Object?> encode();

  /// The resource arguments behind [encode], as the caller's
  /// [TfArg]s.
  @internal
  Map<String, TfArg<Object?>> get argMap;
}

/// The [DbEventSubscriptionName.name] choice: sets `name`.
final class DbEventSubscriptionNameChoice extends DbEventSubscriptionName {
  const DbEventSubscriptionNameChoice(this.name);

  final TfArg<String> name;

  @internal
  @override
  String get blockKey => 'name';

  @internal
  @override
  Map<String, Object?> encode() => {'name': name.toTfJson()};

  @internal
  @override
  Map<String, TfArg<Object?>> get argMap => {'name': name};
}

/// The [DbEventSubscriptionName.namePrefix] choice: sets `name_prefix`.
final class DbEventSubscriptionNamePrefix extends DbEventSubscriptionName {
  const DbEventSubscriptionNamePrefix(this.namePrefix);

  final TfArg<String> namePrefix;

  @internal
  @override
  String get blockKey => 'name_prefix';

  @internal
  @override
  Map<String, Object?> encode() => {'name_prefix': namePrefix.toTfJson()};

  @internal
  @override
  Map<String, TfArg<Object?>> get argMap => {'name_prefix': namePrefix};
}

/// Factory wrapper for `aws_db_event_subscription`.
final class AwsDbEventSubscription extends Resource {
  static const String tfType = 'aws_db_event_subscription';

  AwsDbEventSubscription(
    super.localName, {
    TfArg<bool>? enabled,
    TfArg<List<String>>? eventCategories,
    DbEventSubscriptionName? name,
    TfArg<String>? region,
    required RefTo<AwsSnsTopic> snsTopic,
    TfArg<List<String>>? sourceIds,
    DbEventSubscriptionSourceType? sourceType,
    TfArg<Map<String, String>>? tags,
    super.lifecycle,
    super.dependsOn,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           'enabled': ?enabled,
           'event_categories': ?eventCategories,
           ...?name?.argMap,
           'region': ?region,
           'sns_topic': snsTopic.encodeAs('arn'),
           'source_ids': ?sourceIds,
           'source_type': ?sourceType,
           'tags': ?tags,
         },
       );

  @override
  Set<String> get sensitiveFields => _awsDbEventSubscriptionSensitive;

  /// A reference to this resource, for arguments typed
  /// `RefTo<AwsDbEventSubscription>`.
  RefTo<AwsDbEventSubscription> get ref => RefTo.of(this);

  /// Reference to `name` attribute.
  TfRef<String> get name => TfRef.attribute<String>(this, 'name');

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `arn` attribute.
  TfRef<String> get arn => TfRef.attribute<String>(this, 'arn');

  /// Reference to `customer_aws_id` attribute.
  TfRef<String> get customerAwsId =>
      TfRef.attribute<String>(this, 'customer_aws_id');

  /// Reference to `enabled` attribute.
  TfRef<bool> get enabled => TfRef.attribute<bool>(this, 'enabled');

  /// Reference to `event_categories` attribute.
  TfRef<List<String>> get eventCategories =>
      TfRef.attribute<List<String>>(this, 'event_categories');

  /// Reference to `name_prefix` attribute.
  TfRef<String> get namePrefix => TfRef.attribute<String>(this, 'name_prefix');

  /// Reference to `region` attribute.
  TfRef<String> get region => TfRef.attribute<String>(this, 'region');

  /// Reference to `sns_topic` attribute.
  TfRef<String> get snsTopic => TfRef.attribute<String>(this, 'sns_topic');

  /// Reference to `source_ids` attribute.
  TfRef<List<String>> get sourceIds =>
      TfRef.attribute<List<String>>(this, 'source_ids');

  /// Reference to `source_type` attribute.
  TfRef<String> get sourceType => TfRef.attribute<String>(this, 'source_type');

  /// Reference to `tags` attribute.
  TfRef<Map<String, String>> get tags =>
      TfRef.attribute<Map<String, String>>(this, 'tags');
}
