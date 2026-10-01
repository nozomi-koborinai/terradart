// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';

import '../cloudwatch/aws_cloudwatch_log_group.dart' show AwsCloudwatchLogGroup;

/// Sensitive field paths for `aws_directory_service_log_subscription`.
const Set<String> _awsDirectoryServiceLogSubscriptionSensitive = <String>{};

/// Factory wrapper for `aws_directory_service_log_subscription`.
final class AwsDirectoryServiceLogSubscription extends Resource {
  static const String tfType = 'aws_directory_service_log_subscription';

  AwsDirectoryServiceLogSubscription({
    required super.localName,
    required TfArg<String> directoryId,
    required RefTo<AwsCloudwatchLogGroup> logGroupName,
    TfArg<String>? region,
    super.lifecycle,
    super.dependsOn,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           'directory_id': directoryId,
           'log_group_name': logGroupName.encodeAs('name'),
           'region': ?region,
         },
       );

  @override
  Set<String> get sensitiveFields =>
      _awsDirectoryServiceLogSubscriptionSensitive;

  /// A reference to this resource, for arguments typed
  /// `RefTo<AwsDirectoryServiceLogSubscription>`.
  RefTo<AwsDirectoryServiceLogSubscription> get ref => RefTo.of(this);

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `directory_id` attribute.
  TfRef<String> get directoryId =>
      TfRef.attribute<String>(this, 'directory_id');

  /// Reference to `log_group_name` attribute.
  TfRef<String> get logGroupName =>
      TfRef.attribute<String>(this, 'log_group_name');

  /// Reference to `region` attribute.
  TfRef<String> get region => TfRef.attribute<String>(this, 'region');
}
