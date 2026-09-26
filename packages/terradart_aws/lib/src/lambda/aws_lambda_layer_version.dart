// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `aws_lambda_layer_version`.
const Set<String> _awsLambdaLayerVersionSensitive = <String>{};

/// Factory wrapper for `aws_lambda_layer_version`.
final class AwsLambdaLayerVersion extends Resource {
  static const String tfType = 'aws_lambda_layer_version';

  AwsLambdaLayerVersion({
    required super.localName,
    TfArg<List<String>>? compatibleArchitectures,
    TfArg<List<String>>? compatibleRuntimes,
    TfArg<String>? description,
    TfArg<String>? filename,
    required TfArg<String> layerName,
    TfArg<String>? licenseInfo,
    TfArg<String>? region,
    TfArg<String>? s3Bucket,
    TfArg<String>? s3Key,
    TfArg<String>? s3ObjectVersion,
    TfArg<bool>? skipDestroy,
    TfArg<String>? sourceCodeHash,
    super.lifecycle,
    super.dependsOn,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           if (compatibleArchitectures != null)
             'compatible_architectures': compatibleArchitectures,
           if (compatibleRuntimes != null)
             'compatible_runtimes': compatibleRuntimes,
           if (description != null) 'description': description,
           if (filename != null) 'filename': filename,
           'layer_name': layerName,
           if (licenseInfo != null) 'license_info': licenseInfo,
           if (region != null) 'region': region,
           if (s3Bucket != null) 's3_bucket': s3Bucket,
           if (s3Key != null) 's3_key': s3Key,
           if (s3ObjectVersion != null) 's3_object_version': s3ObjectVersion,
           if (skipDestroy != null) 'skip_destroy': skipDestroy,
           if (sourceCodeHash != null) 'source_code_hash': sourceCodeHash,
         },
       );

  @override
  Set<String> get sensitiveFields => _awsLambdaLayerVersionSensitive;

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `arn` attribute.
  TfRef<String> get arn => TfRef.attribute<String>(this, 'arn');

  /// Reference to `code_sha256` attribute.
  TfRef<String> get codeSha256 => TfRef.attribute<String>(this, 'code_sha256');

  /// Reference to `created_date` attribute.
  TfRef<String> get createdDate =>
      TfRef.attribute<String>(this, 'created_date');

  /// Reference to `layer_arn` attribute.
  TfRef<String> get layerArn => TfRef.attribute<String>(this, 'layer_arn');

  /// Reference to `signing_job_arn` attribute.
  TfRef<String> get signingJobArn =>
      TfRef.attribute<String>(this, 'signing_job_arn');

  /// Reference to `signing_profile_version_arn` attribute.
  TfRef<String> get signingProfileVersionArn =>
      TfRef.attribute<String>(this, 'signing_profile_version_arn');

  /// Reference to `source_code_size` attribute.
  TfRef<num> get sourceCodeSize =>
      TfRef.attribute<num>(this, 'source_code_size');

  /// Reference to `version` attribute.
  TfRef<String> get version => TfRef.attribute<String>(this, 'version');
}
