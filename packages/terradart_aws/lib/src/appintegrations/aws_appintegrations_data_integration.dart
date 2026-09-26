// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:meta/meta.dart';
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `aws_appintegrations_data_integration`.
const Set<String> _awsAppintegrationsDataIntegrationSensitive = <String>{};

/// Typed helper for the `schedule_config` block of
/// `aws_appintegrations_data_integration` (derived from provider schema).
@immutable
final class AppintegrationsDataIntegrationScheduleConfig {
  const AppintegrationsDataIntegrationScheduleConfig({
    required this.firstExecutionFrom,
    required this.object,
    required this.scheduleExpression,
  });

  final TfArg<String> firstExecutionFrom;

  final TfArg<String> object;

  final TfArg<String> scheduleExpression;

  Map<String, Object?> encode() => {
    'first_execution_from': firstExecutionFrom.toTfJson(),
    'object': object.toTfJson(),
    'schedule_expression': scheduleExpression.toTfJson(),
  };
}

/// Factory wrapper for `aws_appintegrations_data_integration`.
final class AwsAppintegrationsDataIntegration extends Resource {
  static const String tfType = 'aws_appintegrations_data_integration';

  AwsAppintegrationsDataIntegration({
    required super.localName,
    TfArg<String>? description,
    required TfArg<String> kmsKey,
    required TfArg<String> name,
    TfArg<String>? region,
    required TfArg<String> sourceUri,
    TfArg<Map<String, String>>? tags,
    required AppintegrationsDataIntegrationScheduleConfig scheduleConfig,
    super.lifecycle,
    super.dependsOn,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           if (description != null) 'description': description,
           'kms_key': kmsKey,
           'name': name,
           if (region != null) 'region': region,
           'source_uri': sourceUri,
           if (tags != null) 'tags': tags,
           'schedule_config': TfArg.literal(scheduleConfig.encode()),
         },
       );

  @override
  Set<String> get sensitiveFields =>
      _awsAppintegrationsDataIntegrationSensitive;

  /// Reference to `name` attribute.
  TfRef<String> get nameRef => TfRef.attribute<String>(this, 'name');

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `arn` attribute.
  TfRef<String> get arn => TfRef.attribute<String>(this, 'arn');
}
