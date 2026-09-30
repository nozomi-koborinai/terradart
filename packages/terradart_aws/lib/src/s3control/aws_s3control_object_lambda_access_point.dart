// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:meta/meta.dart';
import 'package:terradart_core/terradart_core.dart';

import '../lambda/aws_lambda_function.dart' show AwsLambdaFunction;

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

  final List<
    TfArg<S3controlObjectLambdaAccessPointConfigurationAllowedFeatures>
  >?
  allowedFeatures;

  final TfArg<bool>? cloudWatchMetricsEnabled;

  final TfArg<String> supportingAccessPoint;

  final List<
    S3controlObjectLambdaAccessPointConfigurationTransformationConfiguration
  >
  transformationConfiguration;

  Map<String, Object?> encode() => {
    if (allowedFeatures != null)
      'allowed_features': [for (final e in allowedFeatures!) e.toTfJson()],
    'cloud_watch_metrics_enabled': ?cloudWatchMetricsEnabled?.toTfJson(),
    'supporting_access_point': supportingAccessPoint.toTfJson(),
    'transformation_configuration': [
      for (final e in transformationConfiguration) e.encode(),
    ],
  };
}

/// `allowed_features` — derived from the provider schema description.
enum S3controlObjectLambdaAccessPointConfigurationAllowedFeatures
    implements TerraformEnum {
  getobjectRange('GetObject-Range'),
  getobjectPartnumber('GetObject-PartNumber'),
  headobjectRange('HeadObject-Range'),
  headobjectPartnumber('HeadObject-PartNumber');

  const S3controlObjectLambdaAccessPointConfigurationAllowedFeatures(
    this.terraformValue,
  );
  @override
  final String terraformValue;
}

/// Typed helper for the `configuration.transformation_configuration` block of
/// `aws_s3control_object_lambda_access_point` (derived from provider schema).
@immutable
final class S3controlObjectLambdaAccessPointConfigurationTransformationConfiguration {
  const S3controlObjectLambdaAccessPointConfigurationTransformationConfiguration({
    required this.actions,
    required this.contentTransformation,
  });

  final List<
    TfArg<
      S3controlObjectLambdaAccessPointConfigurationTransformationConfigurationActions
    >
  >
  actions;

  final S3controlObjectLambdaAccessPointConfigurationTransformationConfigurationContentTransformation
  contentTransformation;

  Map<String, Object?> encode() => {
    'actions': [for (final e in actions) e.toTfJson()],
    'content_transformation': contentTransformation.encode(),
  };
}

/// `actions` — derived from the provider schema description.
enum S3controlObjectLambdaAccessPointConfigurationTransformationConfigurationActions
    implements TerraformEnum {
  getobject('GetObject'),
  headobject('HeadObject'),
  listobjects('ListObjects'),
  listobjectsv2('ListObjectsV2');

  const S3controlObjectLambdaAccessPointConfigurationTransformationConfigurationActions(
    this.terraformValue,
  );
  @override
  final String terraformValue;
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

  final RefTo<AwsLambdaFunction> functionArn;

  final TfArg<String>? functionPayload;

  Map<String, Object?> encode() => {
    'function_arn': functionArn.encodeAs('arn').toTfJson(),
    'function_payload': ?functionPayload?.toTfJson(),
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
           'account_id': ?accountId,
           'name': name,
           'region': ?region,
           'configuration': TfArg.literal(configuration.encode()),
         },
       );

  @override
  Set<String> get sensitiveFields =>
      _awsS3controlObjectLambdaAccessPointSensitive;

  /// A reference to this resource, for arguments typed
  /// `RefTo<AwsS3controlObjectLambdaAccessPoint>`.
  RefTo<AwsS3controlObjectLambdaAccessPoint> get ref => RefTo.of(this);

  /// Reference to `name` attribute.
  TfRef<String> get nameRef => TfRef.attribute<String>(this, 'name');

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `alias` attribute.
  TfRef<String> get alias => TfRef.attribute<String>(this, 'alias');

  /// Reference to `arn` attribute.
  TfRef<String> get arn => TfRef.attribute<String>(this, 'arn');

  /// Reference to `account_id` attribute.
  TfRef<String> get accountIdRef => TfRef.attribute<String>(this, 'account_id');

  /// Reference to `region` attribute.
  TfRef<String> get regionRef => TfRef.attribute<String>(this, 'region');
}
