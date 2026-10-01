// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';

import '../sns/aws_sns_topic.dart' show AwsSnsTopic;

/// Sensitive field paths for `aws_redshift_event_subscription`.
const Set<String> _awsRedshiftEventSubscriptionSensitive = <String>{};

/// Redshift Event Subscription Event enum for `event_categories`.
extension type const RedshiftEventSubscriptionEventCategories._(TfArg<String> _)
    implements TfArg<String> {
  RedshiftEventSubscriptionEventCategories.variable(String name)
    : this._(TfArg.variable(name));
  RedshiftEventSubscriptionEventCategories.expression(String template)
    : this._(TfArg.expression(template));
  const RedshiftEventSubscriptionEventCategories.arg(TfArg<String> arg)
    : this._(arg);

  static const configuration = RedshiftEventSubscriptionEventCategories._(
    TfArgLiteral('configuration'),
  );
  static const management = RedshiftEventSubscriptionEventCategories._(
    TfArgLiteral('management'),
  );
  static const monitoring = RedshiftEventSubscriptionEventCategories._(
    TfArgLiteral('monitoring'),
  );
  static const security = RedshiftEventSubscriptionEventCategories._(
    TfArgLiteral('security'),
  );
  static const pending = RedshiftEventSubscriptionEventCategories._(
    TfArgLiteral('pending'),
  );

  static const List<RedshiftEventSubscriptionEventCategories> values = [
    configuration,
    management,
    monitoring,
    security,
    pending,
  ];
}

/// Redshift Event Subscription enum for `severity`.
extension type const RedshiftEventSubscriptionSeverity._(TfArg<String> _)
    implements TfArg<String> {
  RedshiftEventSubscriptionSeverity.variable(String name)
    : this._(TfArg.variable(name));
  RedshiftEventSubscriptionSeverity.expression(String template)
    : this._(TfArg.expression(template));
  const RedshiftEventSubscriptionSeverity.arg(TfArg<String> arg) : this._(arg);

  static const error = RedshiftEventSubscriptionSeverity._(
    TfArgLiteral('ERROR'),
  );
  static const info = RedshiftEventSubscriptionSeverity._(TfArgLiteral('INFO'));

  static const List<RedshiftEventSubscriptionSeverity> values = [error, info];
}

/// Redshift Event Subscription Source enum for `source_type`.
extension type const RedshiftEventSubscriptionSourceType._(TfArg<String> _)
    implements TfArg<String> {
  RedshiftEventSubscriptionSourceType.variable(String name)
    : this._(TfArg.variable(name));
  RedshiftEventSubscriptionSourceType.expression(String template)
    : this._(TfArg.expression(template));
  const RedshiftEventSubscriptionSourceType.arg(TfArg<String> arg)
    : this._(arg);

  static const cluster = RedshiftEventSubscriptionSourceType._(
    TfArgLiteral('cluster'),
  );
  static const clusterParameterGroup = RedshiftEventSubscriptionSourceType._(
    TfArgLiteral('cluster-parameter-group'),
  );
  static const clusterSecurityGroup = RedshiftEventSubscriptionSourceType._(
    TfArgLiteral('cluster-security-group'),
  );
  static const clusterSnapshot = RedshiftEventSubscriptionSourceType._(
    TfArgLiteral('cluster-snapshot'),
  );
  static const scheduledAction = RedshiftEventSubscriptionSourceType._(
    TfArgLiteral('scheduled-action'),
  );

  static const List<RedshiftEventSubscriptionSourceType> values = [
    cluster,
    clusterParameterGroup,
    clusterSecurityGroup,
    clusterSnapshot,
    scheduledAction,
  ];
}

/// Factory wrapper for `aws_redshift_event_subscription`.
final class AwsRedshiftEventSubscription extends Resource {
  static const String tfType = 'aws_redshift_event_subscription';

  AwsRedshiftEventSubscription(
    super.localName, {
    TfArg<bool>? enabled,
    List<RedshiftEventSubscriptionEventCategories>? eventCategories,
    required TfArg<String> name,
    TfArg<String>? region,
    RedshiftEventSubscriptionSeverity? severity,
    required RefTo<AwsSnsTopic> snsTopicArn,
    TfArg<List<String>>? sourceIds,
    RedshiftEventSubscriptionSourceType? sourceType,
    TfArg<Map<String, String>>? tags,
    super.lifecycle,
    super.dependsOn,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           'enabled': ?enabled,
           if (eventCategories != null)
             'event_categories': TfArg.literal([
               for (final e in eventCategories) e.toTfJson(),
             ]),
           'name': name,
           'region': ?region,
           'severity': ?severity,
           'sns_topic_arn': snsTopicArn.encodeAs('arn'),
           'source_ids': ?sourceIds,
           'source_type': ?sourceType,
           'tags': ?tags,
         },
       );

  @override
  Set<String> get sensitiveFields => _awsRedshiftEventSubscriptionSensitive;

  /// A reference to this resource, for arguments typed
  /// `RefTo<AwsRedshiftEventSubscription>`.
  RefTo<AwsRedshiftEventSubscription> get ref => RefTo.of(this);

  /// Reference to `name` attribute.
  TfRef<String> get name => TfRef.attribute<String>(this, 'name');

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `arn` attribute.
  TfRef<String> get arn => TfRef.attribute<String>(this, 'arn');

  /// Reference to `customer_aws_id` attribute.
  TfRef<String> get customerAwsId =>
      TfRef.attribute<String>(this, 'customer_aws_id');

  /// Reference to `status` attribute.
  TfRef<String> get status => TfRef.attribute<String>(this, 'status');

  /// Reference to `enabled` attribute.
  TfRef<bool> get enabled => TfRef.attribute<bool>(this, 'enabled');

  /// Reference to `event_categories` attribute.
  TfRef<List<String>> get eventCategories =>
      TfRef.attribute<List<String>>(this, 'event_categories');

  /// Reference to `region` attribute.
  TfRef<String> get region => TfRef.attribute<String>(this, 'region');

  /// Reference to `severity` attribute.
  TfRef<String> get severity => TfRef.attribute<String>(this, 'severity');

  /// Reference to `sns_topic_arn` attribute.
  TfRef<String> get snsTopicArn =>
      TfRef.attribute<String>(this, 'sns_topic_arn');

  /// Reference to `source_ids` attribute.
  TfRef<List<String>> get sourceIds =>
      TfRef.attribute<List<String>>(this, 'source_ids');

  /// Reference to `source_type` attribute.
  TfRef<String> get sourceType => TfRef.attribute<String>(this, 'source_type');

  /// Reference to `tags` attribute.
  TfRef<Map<String, String>> get tags =>
      TfRef.attribute<Map<String, String>>(this, 'tags');
}
