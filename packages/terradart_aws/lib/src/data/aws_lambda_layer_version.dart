// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';
import '../lambda/aws_lambda_layer_version.dart';

/// Sensitive field paths for `aws_lambda_layer_version`.
const Set<String> _awsLambdaLayerVersionSensitive = <String>{};

/// Factory wrapper for `aws_lambda_layer_version`.
final class DataAwsLambdaLayerVersion extends Data {
  static const String tfType = 'aws_lambda_layer_version';

  DataAwsLambdaLayerVersion({
    required super.localName,
    TfArg<String>? compatibleArchitecture,
    TfArg<String>? compatibleRuntime,
    TfArg<String>? layerName,
    TfArg<String>? layerVersionArn,
    TfArg<String>? region,
    TfArg<num>? version,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           'compatible_architecture': ?compatibleArchitecture,
           'compatible_runtime': ?compatibleRuntime,
           'layer_name': ?layerName,
           'layer_version_arn': ?layerVersionArn,
           'region': ?region,
           'version': ?version,
         },
       );

  @override
  Set<String> get sensitiveFields => _awsLambdaLayerVersionSensitive;

  /// A reference to the `aws_lambda_layer_version` this data source reads, for
  /// arguments typed `RefTo<AwsLambdaLayerVersion>`.
  RefTo<AwsLambdaLayerVersion> get ref =>
      RefTo.read(this); // ignore: invalid_use_of_internal_member

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `arn` attribute.
  TfRef<String> get arn => TfRef.attribute<String>(this, 'arn');

  /// Reference to `code_sha256` attribute.
  TfRef<String> get codeSha256 => TfRef.attribute<String>(this, 'code_sha256');

  /// Reference to `compatible_architectures` attribute.
  TfRef<List<String>> get compatibleArchitectures =>
      TfRef.attribute<List<String>>(this, 'compatible_architectures');

  /// Reference to `compatible_runtimes` attribute.
  TfRef<List<String>> get compatibleRuntimes =>
      TfRef.attribute<List<String>>(this, 'compatible_runtimes');

  /// Reference to `created_date` attribute.
  TfRef<String> get createdDate =>
      TfRef.attribute<String>(this, 'created_date');

  /// Reference to `description` attribute.
  TfRef<String> get description => TfRef.attribute<String>(this, 'description');

  /// Reference to `layer_arn` attribute.
  TfRef<String> get layerArn => TfRef.attribute<String>(this, 'layer_arn');

  /// Reference to `license_info` attribute.
  TfRef<String> get licenseInfo =>
      TfRef.attribute<String>(this, 'license_info');

  /// Reference to `signing_job_arn` attribute.
  TfRef<String> get signingJobArn =>
      TfRef.attribute<String>(this, 'signing_job_arn');

  /// Reference to `signing_profile_version_arn` attribute.
  TfRef<String> get signingProfileVersionArn =>
      TfRef.attribute<String>(this, 'signing_profile_version_arn');

  /// Reference to `source_code_hash` attribute.
  TfRef<String> get sourceCodeHash =>
      TfRef.attribute<String>(this, 'source_code_hash');

  /// Reference to `source_code_size` attribute.
  TfRef<num> get sourceCodeSize =>
      TfRef.attribute<num>(this, 'source_code_size');
}
