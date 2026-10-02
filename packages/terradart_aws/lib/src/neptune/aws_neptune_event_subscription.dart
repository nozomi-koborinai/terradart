// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:meta/meta.dart';
import 'package:terradart_core/terradart_core.dart';

import '../sns/aws_sns_topic.dart' show AwsSnsTopic;

/// Sensitive field paths for `aws_neptune_event_subscription`.
const Set<String> _awsNeptuneEventSubscriptionSensitive = <String>{};

/// At most one of `name`, `name_prefix` on `aws_neptune_event_subscription`: the provider rejects
/// more than one, so each variant sets one of them and a
/// null choice sets none.
///
/// Pick one with a dot shorthand: `.name(...)`.
sealed class NeptuneEventSubscriptionName {
  const NeptuneEventSubscriptionName();

  /// Sets `name`.
  const factory NeptuneEventSubscriptionName.name(TfArg<String> name) =
      NeptuneEventSubscriptionNameChoice;

  /// Sets `name_prefix`.
  const factory NeptuneEventSubscriptionName.namePrefix(
    TfArg<String> namePrefix,
  ) = NeptuneEventSubscriptionNamePrefix;

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

/// The [NeptuneEventSubscriptionName.name] choice: sets `name`.
final class NeptuneEventSubscriptionNameChoice
    extends NeptuneEventSubscriptionName {
  const NeptuneEventSubscriptionNameChoice(this.name);

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

/// The [NeptuneEventSubscriptionName.namePrefix] choice: sets `name_prefix`.
final class NeptuneEventSubscriptionNamePrefix
    extends NeptuneEventSubscriptionName {
  const NeptuneEventSubscriptionNamePrefix(this.namePrefix);

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

/// Factory wrapper for `aws_neptune_event_subscription`.
final class AwsNeptuneEventSubscription extends Resource {
  static const String tfType = 'aws_neptune_event_subscription';

  AwsNeptuneEventSubscription(
    super.localName, {
    TfArg<bool>? enabled,
    TfArg<List<String>>? eventCategories,
    NeptuneEventSubscriptionName? name,
    TfArg<String>? region,
    required RefTo<AwsSnsTopic> snsTopicArn,
    TfArg<List<String>>? sourceIds,
    TfArg<String>? sourceType,
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
           'sns_topic_arn': snsTopicArn.encodeAs('arn'),
           'source_ids': ?sourceIds,
           'source_type': ?sourceType,
           'tags': ?tags,
         },
       );

  @override
  Set<String> get sensitiveFields => _awsNeptuneEventSubscriptionSensitive;

  /// A reference to this resource, for arguments typed
  /// `RefTo<AwsNeptuneEventSubscription>`.
  RefTo<AwsNeptuneEventSubscription> get ref => RefTo.of(this);

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
