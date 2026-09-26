// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:meta/meta.dart';
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `aws_xray_group`.
const Set<String> _awsXrayGroupSensitive = <String>{};

/// Typed helper for the `insights_configuration` block of
/// `aws_xray_group` (derived from provider schema).
@immutable
final class XrayGroupInsightsConfiguration {
  const XrayGroupInsightsConfiguration({
    required this.insightsEnabled,
    this.notificationsEnabled,
  });

  final TfArg<bool> insightsEnabled;

  final TfArg<bool>? notificationsEnabled;

  Map<String, Object?> encode() => {
    'insights_enabled': insightsEnabled.toTfJson(),
    if (notificationsEnabled != null)
      'notifications_enabled': notificationsEnabled!.toTfJson(),
  };
}

/// Factory wrapper for `aws_xray_group`.
final class AwsXrayGroup extends Resource {
  static const String tfType = 'aws_xray_group';

  AwsXrayGroup({
    required super.localName,
    required TfArg<String> filterExpression,
    required TfArg<String> groupName,
    TfArg<String>? region,
    TfArg<Map<String, String>>? tags,
    XrayGroupInsightsConfiguration? insightsConfiguration,
    super.lifecycle,
    super.dependsOn,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           'filter_expression': filterExpression,
           'group_name': groupName,
           if (region != null) 'region': region,
           if (tags != null) 'tags': tags,
           if (insightsConfiguration != null)
             'insights_configuration': TfArg.literal(
               insightsConfiguration.encode(),
             ),
         },
       );

  @override
  Set<String> get sensitiveFields => _awsXrayGroupSensitive;

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `arn` attribute.
  TfRef<String> get arn => TfRef.attribute<String>(this, 'arn');
}
