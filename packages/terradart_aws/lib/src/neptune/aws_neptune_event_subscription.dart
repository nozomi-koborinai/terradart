// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
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
      NeptuneEventSubscriptionNameName;

  /// Sets `name_prefix`.
  const factory NeptuneEventSubscriptionName.namePrefix(
    TfArg<String> namePrefix,
  ) = NeptuneEventSubscriptionNameNamePrefix;

  /// The Terraform argument this choice sets.
  String get blockKey;

  Map<String, Object?> encode();

  /// The resource arguments behind [encode], as the caller's
  /// [TfArg]s.
  Map<String, TfArg<Object?>> get argMap;
}

/// The [NeptuneEventSubscriptionName.name] choice: sets `name`.
final class NeptuneEventSubscriptionNameName
    extends NeptuneEventSubscriptionName {
  const NeptuneEventSubscriptionNameName(this.name);

  final TfArg<String> name;

  @override
  String get blockKey => 'name';

  @override
  Map<String, Object?> encode() => {'name': name.toTfJson()};

  @override
  Map<String, TfArg<Object?>> get argMap => {'name': name};
}

/// The [NeptuneEventSubscriptionName.namePrefix] choice: sets `name_prefix`.
final class NeptuneEventSubscriptionNameNamePrefix
    extends NeptuneEventSubscriptionName {
  const NeptuneEventSubscriptionNameNamePrefix(this.namePrefix);

  final TfArg<String> namePrefix;

  @override
  String get blockKey => 'name_prefix';

  @override
  Map<String, Object?> encode() => {'name_prefix': namePrefix.toTfJson()};

  @override
  Map<String, TfArg<Object?>> get argMap => {'name_prefix': namePrefix};
}

/// Factory wrapper for `aws_neptune_event_subscription`.
final class AwsNeptuneEventSubscription extends Resource {
  static const String tfType = 'aws_neptune_event_subscription';

  AwsNeptuneEventSubscription({
    required super.localName,
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
  TfRef<String> get nameRef => TfRef.attribute<String>(this, 'name');

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `arn` attribute.
  TfRef<String> get arn => TfRef.attribute<String>(this, 'arn');

  /// Reference to `customer_aws_id` attribute.
  TfRef<String> get customerAwsId =>
      TfRef.attribute<String>(this, 'customer_aws_id');
}
