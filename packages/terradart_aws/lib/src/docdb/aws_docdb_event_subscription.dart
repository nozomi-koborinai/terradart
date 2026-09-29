// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';

import '../sns/aws_sns_topic.dart' show AwsSnsTopic;

/// Sensitive field paths for `aws_docdb_event_subscription`.
const Set<String> _awsDocdbEventSubscriptionSensitive = <String>{};

/// At most one of `name`, `name_prefix` on `aws_docdb_event_subscription`: the provider rejects
/// more than one, so each variant sets one of them and a
/// null choice sets none.
///
/// Pick one with a dot shorthand: `.name(...)`.
sealed class DocdbEventSubscriptionName {
  const DocdbEventSubscriptionName();

  /// Sets `name`.
  const factory DocdbEventSubscriptionName.name(TfArg<String> name) =
      DocdbEventSubscriptionNameName;

  /// Sets `name_prefix`.
  const factory DocdbEventSubscriptionName.namePrefix(
    TfArg<String> namePrefix,
  ) = DocdbEventSubscriptionNameNamePrefix;

  /// The Terraform argument this choice sets.
  String get blockKey;

  Map<String, Object?> encode();

  /// The resource arguments behind [encode], as the caller's
  /// [TfArg]s.
  Map<String, TfArg<Object?>> get argMap;
}

/// The [DocdbEventSubscriptionName.name] choice: sets `name`.
final class DocdbEventSubscriptionNameName extends DocdbEventSubscriptionName {
  const DocdbEventSubscriptionNameName(this.name);

  final TfArg<String> name;

  @override
  String get blockKey => 'name';

  @override
  Map<String, Object?> encode() => {'name': name.toTfJson()};

  @override
  Map<String, TfArg<Object?>> get argMap => {'name': name};
}

/// The [DocdbEventSubscriptionName.namePrefix] choice: sets `name_prefix`.
final class DocdbEventSubscriptionNameNamePrefix
    extends DocdbEventSubscriptionName {
  const DocdbEventSubscriptionNameNamePrefix(this.namePrefix);

  final TfArg<String> namePrefix;

  @override
  String get blockKey => 'name_prefix';

  @override
  Map<String, Object?> encode() => {'name_prefix': namePrefix.toTfJson()};

  @override
  Map<String, TfArg<Object?>> get argMap => {'name_prefix': namePrefix};
}

/// Factory wrapper for `aws_docdb_event_subscription`.
final class AwsDocdbEventSubscription extends Resource {
  static const String tfType = 'aws_docdb_event_subscription';

  AwsDocdbEventSubscription({
    required super.localName,
    TfArg<bool>? enabled,
    TfArg<List<String>>? eventCategories,
    DocdbEventSubscriptionName? name,
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
           if (enabled != null) 'enabled': enabled,
           if (eventCategories != null) 'event_categories': eventCategories,
           ...?name?.argMap,
           if (region != null) 'region': region,
           'sns_topic_arn': snsTopicArn.encodeAs('arn'),
           if (sourceIds != null) 'source_ids': sourceIds,
           if (sourceType != null) 'source_type': sourceType,
           if (tags != null) 'tags': tags,
         },
       );

  @override
  Set<String> get sensitiveFields => _awsDocdbEventSubscriptionSensitive;

  /// A reference to this resource, for arguments typed
  /// `RefTo<AwsDocdbEventSubscription>`.
  RefTo<AwsDocdbEventSubscription> get ref => RefTo.of(this);

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
