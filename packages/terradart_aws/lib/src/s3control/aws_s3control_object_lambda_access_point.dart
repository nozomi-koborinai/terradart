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

  final List<S3controlObjectLambdaAccessPointAllowedFeatures>? allowedFeatures;

  final TfArg<bool>? cloudWatchMetricsEnabled;

  final TfArg<String> supportingAccessPoint;

  final List<S3controlObjectLambdaAccessPointTransformationConfiguration>
  transformationConfiguration;

  @internal
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
extension type const S3controlObjectLambdaAccessPointAllowedFeatures._(
  TfArg<String> _
) implements TfArg<String> {
  S3controlObjectLambdaAccessPointAllowedFeatures.variable(String name)
    : this._(TfArg.variable(name));
  S3controlObjectLambdaAccessPointAllowedFeatures.expression(String template)
    : this._(TfArg.expression(template));
  const S3controlObjectLambdaAccessPointAllowedFeatures.arg(TfArg<String> arg)
    : this._(arg);

  static const getobjectRange =
      S3controlObjectLambdaAccessPointAllowedFeatures._(
        TfArgLiteral('GetObject-Range'),
      );
  static const getobjectPartnumber =
      S3controlObjectLambdaAccessPointAllowedFeatures._(
        TfArgLiteral('GetObject-PartNumber'),
      );
  static const headobjectRange =
      S3controlObjectLambdaAccessPointAllowedFeatures._(
        TfArgLiteral('HeadObject-Range'),
      );
  static const headobjectPartnumber =
      S3controlObjectLambdaAccessPointAllowedFeatures._(
        TfArgLiteral('HeadObject-PartNumber'),
      );

  static const List<S3controlObjectLambdaAccessPointAllowedFeatures> values = [
    getobjectRange,
    getobjectPartnumber,
    headobjectRange,
    headobjectPartnumber,
  ];
}

/// Typed helper for the `configuration.transformation_configuration` block of
/// `aws_s3control_object_lambda_access_point` (derived from provider schema).
@immutable
final class S3controlObjectLambdaAccessPointTransformationConfiguration {
  const S3controlObjectLambdaAccessPointTransformationConfiguration({
    required this.actions,
    required this.contentTransformation,
  });

  final List<S3controlObjectLambdaAccessPointActions> actions;

  final S3controlObjectLambdaAccessPointContentTransformation
  contentTransformation;

  @internal
  Map<String, Object?> encode() => {
    'actions': [for (final e in actions) e.toTfJson()],
    'content_transformation': contentTransformation.encode(),
  };
}

/// `actions` — derived from the provider schema description.
extension type const S3controlObjectLambdaAccessPointActions._(TfArg<String> _)
    implements TfArg<String> {
  S3controlObjectLambdaAccessPointActions.variable(String name)
    : this._(TfArg.variable(name));
  S3controlObjectLambdaAccessPointActions.expression(String template)
    : this._(TfArg.expression(template));
  const S3controlObjectLambdaAccessPointActions.arg(TfArg<String> arg)
    : this._(arg);

  static const getobject = S3controlObjectLambdaAccessPointActions._(
    TfArgLiteral('GetObject'),
  );
  static const headobject = S3controlObjectLambdaAccessPointActions._(
    TfArgLiteral('HeadObject'),
  );
  static const listobjects = S3controlObjectLambdaAccessPointActions._(
    TfArgLiteral('ListObjects'),
  );
  static const listobjectsv2 = S3controlObjectLambdaAccessPointActions._(
    TfArgLiteral('ListObjectsV2'),
  );

  static const List<S3controlObjectLambdaAccessPointActions> values = [
    getobject,
    headobject,
    listobjects,
    listobjectsv2,
  ];
}

/// Typed helper for the `configuration.transformation_configuration.content_transformation` block of
/// `aws_s3control_object_lambda_access_point` (derived from provider schema).
@immutable
final class S3controlObjectLambdaAccessPointContentTransformation {
  const S3controlObjectLambdaAccessPointContentTransformation({
    required this.awsLambda,
  });

  final S3controlObjectLambdaAccessPointAwsLambda awsLambda;

  @internal
  Map<String, Object?> encode() => {'aws_lambda': awsLambda.encode()};
}

/// Typed helper for the `configuration.transformation_configuration.content_transformation.aws_lambda` block of
/// `aws_s3control_object_lambda_access_point` (derived from provider schema).
@immutable
final class S3controlObjectLambdaAccessPointAwsLambda {
  const S3controlObjectLambdaAccessPointAwsLambda({
    required this.functionArn,
    this.functionPayload,
  });

  final RefTo<AwsLambdaFunction> functionArn;

  final TfArg<String>? functionPayload;

  @internal
  Map<String, Object?> encode() => {
    'function_arn': functionArn.encodeAs('arn').toTfJson(),
    'function_payload': ?functionPayload?.toTfJson(),
  };
}

/// Factory wrapper for `aws_s3control_object_lambda_access_point`.
final class AwsS3controlObjectLambdaAccessPoint extends Resource {
  static const String tfType = 'aws_s3control_object_lambda_access_point';

  AwsS3controlObjectLambdaAccessPoint(
    super.localName, {
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
  TfRef<String> get name => TfRef.attribute<String>(this, 'name');

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `alias` attribute.
  TfRef<String> get alias => TfRef.attribute<String>(this, 'alias');

  /// Reference to `arn` attribute.
  TfRef<String> get arn => TfRef.attribute<String>(this, 'arn');

  /// Reference to `account_id` attribute.
  TfRef<String> get accountId => TfRef.attribute<String>(this, 'account_id');

  /// Reference to `region` attribute.
  TfRef<String> get region => TfRef.attribute<String>(this, 'region');
}
