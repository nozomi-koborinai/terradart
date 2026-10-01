// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:meta/meta.dart';
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `aws_config_conformance_pack`.
const Set<String> _awsConfigConformancePackSensitive = <String>{};

/// Typed helper for the `input_parameter` block of
/// `aws_config_conformance_pack` (derived from provider schema).
@immutable
final class ConfigConformancePackInputParameter {
  const ConfigConformancePackInputParameter({
    required this.parameterName,
    required this.parameterValue,
  });

  final TfArg<String> parameterName;

  final TfArg<String> parameterValue;

  Map<String, Object?> encode() => {
    'parameter_name': parameterName.toTfJson(),
    'parameter_value': parameterValue.toTfJson(),
  };
}

/// Factory wrapper for `aws_config_conformance_pack`.
final class AwsConfigConformancePack extends Resource {
  static const String tfType = 'aws_config_conformance_pack';

  AwsConfigConformancePack({
    required super.localName,
    TfArg<String>? deliveryS3Bucket,
    TfArg<String>? deliveryS3KeyPrefix,
    required TfArg<String> name,
    TfArg<String>? region,
    TfArg<String>? templateBody,
    TfArg<String>? templateS3Uri,
    List<ConfigConformancePackInputParameter>? inputParameter,
    super.lifecycle,
    super.dependsOn,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           'delivery_s3_bucket': ?deliveryS3Bucket,
           'delivery_s3_key_prefix': ?deliveryS3KeyPrefix,
           'name': name,
           'region': ?region,
           'template_body': ?templateBody,
           'template_s3_uri': ?templateS3Uri,
           if (inputParameter != null)
             'input_parameter': TfArg.literal([
               for (final e in inputParameter) e.encode(),
             ]),
         },
       );

  @override
  Set<String> get sensitiveFields => _awsConfigConformancePackSensitive;

  /// A reference to this resource, for arguments typed
  /// `RefTo<AwsConfigConformancePack>`.
  RefTo<AwsConfigConformancePack> get ref => RefTo.of(this);

  /// Reference to `name` attribute.
  TfRef<String> get name => TfRef.attribute<String>(this, 'name');

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `arn` attribute.
  TfRef<String> get arn => TfRef.attribute<String>(this, 'arn');

  /// Reference to `delivery_s3_bucket` attribute.
  TfRef<String> get deliveryS3Bucket =>
      TfRef.attribute<String>(this, 'delivery_s3_bucket');

  /// Reference to `delivery_s3_key_prefix` attribute.
  TfRef<String> get deliveryS3KeyPrefix =>
      TfRef.attribute<String>(this, 'delivery_s3_key_prefix');

  /// Reference to `region` attribute.
  TfRef<String> get region => TfRef.attribute<String>(this, 'region');

  /// Reference to `template_body` attribute.
  TfRef<String> get templateBody =>
      TfRef.attribute<String>(this, 'template_body');

  /// Reference to `template_s3_uri` attribute.
  TfRef<String> get templateS3Uri =>
      TfRef.attribute<String>(this, 'template_s3_uri');
}
