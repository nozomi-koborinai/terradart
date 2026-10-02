// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:meta/meta.dart';
import 'package:terradart_core/terradart_core.dart';

import '../kms/aws_kms_key.dart' show AwsKmsKey;

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

  @internal
  Map<String, Object?> encode() => {
    'first_execution_from': firstExecutionFrom.toTfJson(),
    'object': object.toTfJson(),
    'schedule_expression': scheduleExpression.toTfJson(),
  };
}

/// Factory wrapper for `aws_appintegrations_data_integration`.
final class AwsAppintegrationsDataIntegration extends Resource {
  static const String tfType = 'aws_appintegrations_data_integration';

  AwsAppintegrationsDataIntegration(
    super.localName, {
    TfArg<String>? description,
    required RefTo<AwsKmsKey> kmsKey,
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
           'description': ?description,
           'kms_key': kmsKey.encodeAs('arn'),
           'name': name,
           'region': ?region,
           'source_uri': sourceUri,
           'tags': ?tags,
           'schedule_config': TfArg.literal(scheduleConfig.encode()),
         },
       );

  @override
  Set<String> get sensitiveFields =>
      _awsAppintegrationsDataIntegrationSensitive;

  /// A reference to this resource, for arguments typed
  /// `RefTo<AwsAppintegrationsDataIntegration>`.
  RefTo<AwsAppintegrationsDataIntegration> get ref => RefTo.of(this);

  /// Reference to `name` attribute.
  TfRef<String> get name => TfRef.attribute<String>(this, 'name');

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `arn` attribute.
  TfRef<String> get arn => TfRef.attribute<String>(this, 'arn');

  /// Reference to `description` attribute.
  TfRef<String> get description => TfRef.attribute<String>(this, 'description');

  /// Reference to `kms_key` attribute.
  TfRef<String> get kmsKey => TfRef.attribute<String>(this, 'kms_key');

  /// Reference to `region` attribute.
  TfRef<String> get region => TfRef.attribute<String>(this, 'region');

  /// Reference to `source_uri` attribute.
  TfRef<String> get sourceUri => TfRef.attribute<String>(this, 'source_uri');

  /// Reference to `tags` attribute.
  TfRef<Map<String, String>> get tags =>
      TfRef.attribute<Map<String, String>>(this, 'tags');
}
