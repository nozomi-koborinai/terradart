// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `aws_directory_service_log_subscription`.
const Set<String> _awsDirectoryServiceLogSubscriptionSensitive = <String>{};

/// Factory wrapper for `aws_directory_service_log_subscription`.
final class AwsDirectoryServiceLogSubscription extends Resource {
  static const String tfType = 'aws_directory_service_log_subscription';

  AwsDirectoryServiceLogSubscription({
    required super.localName,
    required TfArg<String> directoryId,
    required TfArg<String> logGroupName,
    TfArg<String>? region,
    super.lifecycle,
    super.dependsOn,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           'directory_id': directoryId,
           'log_group_name': logGroupName,
           if (region != null) 'region': region,
         },
       );

  @override
  Set<String> get sensitiveFields =>
      _awsDirectoryServiceLogSubscriptionSensitive;

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');
}
