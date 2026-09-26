// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:meta/meta.dart';
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `aws_s3control_object_lambda_access_point`.
const Set<String> _awsS3controlObjectLambdaAccessPointSensitive = <String>{};

/// Typed helper for the `configuration` block of
/// `aws_s3control_object_lambda_access_point` (derived from provider schema).
@immutable
final class S3controlObjectLambdaAccessPointConfiguration {
  const S3controlObjectLambdaAccessPointConfiguration({
    this.allowedFeatures,
    this.cloudWatchMetricsEnabled,
    required this.supportingAccessPoint,
    required this.transformationConfiguration,
  });

  final TfArg<List<Object?>>? allowedFeatures;

  final TfArg<bool>? cloudWatchMetricsEnabled;

  final TfArg<String> supportingAccessPoint;

  final List<
    S3controlObjectLambdaAccessPointConfigurationTransformationConfiguration
  >
  transformationConfiguration;

  Map<String, Object?> encode() => {
    if (allowedFeatures != null)
      'allowed_features': allowedFeatures!.toTfJson(),
    if (cloudWatchMetricsEnabled != null)
      'cloud_watch_metrics_enabled': cloudWatchMetricsEnabled!.toTfJson(),
    'supporting_access_point': supportingAccessPoint.toTfJson(),
    'transformation_configuration': [
      for (final e in transformationConfiguration) e.encode(),
    ],
  };
}

/// Typed helper for the `configuration.transformation_configuration` block of
/// `aws_s3control_object_lambda_access_point` (derived from provider schema).
@immutable
final class S3controlObjectLambdaAccessPointConfigurationTransformationConfiguration {
  const S3controlObjectLambdaAccessPointConfigurationTransformationConfiguration({
    required this.actions,
    required this.contentTransformation,
  });

  final TfArg<List<Object?>> actions;

  final S3controlObjectLambdaAccessPointConfigurationTransformationConfigurationContentTransformation
  contentTransformation;

  Map<String, Object?> encode() => {
    'actions': actions.toTfJson(),
    'content_transformation': contentTransformation.encode(),
  };
}

/// Typed helper for the `configuration.transformation_configuration.content_transformation` block of
/// `aws_s3control_object_lambda_access_point` (derived from provider schema).
@immutable
final class S3controlObjectLambdaAccessPointConfigurationTransformationConfigurationContentTransformation {
  const S3controlObjectLambdaAccessPointConfigurationTransformationConfigurationContentTransformation({
    required this.awsLambda,
  });

  final S3controlObjectLambdaAccessPointConfigurationTransformationConfigurationContentTransformationAwsLambda
  awsLambda;

  Map<String, Object?> encode() => {'aws_lambda': awsLambda.encode()};
}

/// Typed helper for the `configuration.transformation_configuration.content_transformation.aws_lambda` block of
/// `aws_s3control_object_lambda_access_point` (derived from provider schema).
@immutable
final class S3controlObjectLambdaAccessPointConfigurationTransformationConfigurationContentTransformationAwsLambda {
  const S3controlObjectLambdaAccessPointConfigurationTransformationConfigurationContentTransformationAwsLambda({
    required this.functionArn,
    this.functionPayload,
  });

  final TfArg<String> functionArn;

  final TfArg<String>? functionPayload;

  Map<String, Object?> encode() => {
    'function_arn': functionArn.toTfJson(),
    if (functionPayload != null)
      'function_payload': functionPayload!.toTfJson(),
  };
}

/// Factory wrapper for `aws_s3control_object_lambda_access_point`.
final class AwsS3controlObjectLambdaAccessPoint extends Resource {
  static const String tfType = 'aws_s3control_object_lambda_access_point';

  AwsS3controlObjectLambdaAccessPoint({
    required super.localName,
    TfArg<String>? accountId,
    required TfArg<String> name,
    TfArg<String>? region,
    required S3controlObjectLambdaAccessPointConfiguration configuration,
    super.lifecycle,
    super.dependsOn,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           if (accountId != null) 'account_id': accountId,
           'name': name,
           if (region != null) 'region': region,
           'configuration': TfArg.literal(configuration.encode()),
         },
       );

  @override
  Set<String> get sensitiveFields =>
      _awsS3controlObjectLambdaAccessPointSensitive;

  /// Reference to `name` attribute.
  TfRef<String> get nameRef => TfRef.attribute<String>(this, 'name');

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `alias` attribute.
  TfRef<String> get alias => TfRef.attribute<String>(this, 'alias');

  /// Reference to `arn` attribute.
  TfRef<String> get arn => TfRef.attribute<String>(this, 'arn');
}
