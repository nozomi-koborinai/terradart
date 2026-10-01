// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';

import '../s3/aws_s3_bucket.dart' show AwsS3Bucket;

/// Sensitive field paths for `aws_lambda_layer_version`.
const Set<String> _awsLambdaLayerVersionSensitive = <String>{};

/// Lambda Layer Version Compatible enum for `compatible_architectures`.
enum LambdaLayerVersionCompatibleArchitectures implements TerraformEnum {
  x8664('x86_64'),
  arm64('arm64');

  const LambdaLayerVersionCompatibleArchitectures(this.terraformValue);
  @override
  final String terraformValue;
}

/// Lambda Layer Version Compatible enum for `compatible_runtimes`.
enum LambdaLayerVersionCompatibleRuntimes implements TerraformEnum {
  nodejs('nodejs'),
  nodejs4p3('nodejs4.3'),
  nodejs6p10('nodejs6.10'),
  nodejs8p10('nodejs8.10'),
  nodejs10X('nodejs10.x'),
  nodejs12X('nodejs12.x'),
  nodejs14X('nodejs14.x'),
  nodejs16X('nodejs16.x'),
  nodejs18X('nodejs18.x'),
  nodejs20X('nodejs20.x'),
  nodejs22X('nodejs22.x'),
  nodejs24X('nodejs24.x'),
  java8('java8'),
  java8Al2('java8.al2'),
  java11('java11'),
  java17('java17'),
  java21('java21'),
  java25('java25'),
  python2p7('python2.7'),
  python3p6('python3.6'),
  python3p7('python3.7'),
  python3p8('python3.8'),
  python3p9('python3.9'),
  python3p10('python3.10'),
  python3p11('python3.11'),
  python3p12('python3.12'),
  python3p13('python3.13'),
  python3p14('python3.14'),
  dotnetcore1p0('dotnetcore1.0'),
  dotnetcore2p0('dotnetcore2.0'),
  dotnetcore2p1('dotnetcore2.1'),
  dotnetcore3p1('dotnetcore3.1'),
  dotnet6('dotnet6'),
  dotnet8('dotnet8'),
  dotnet10('dotnet10'),
  nodejs4p3Edge('nodejs4.3-edge'),
  go1X('go1.x'),
  ruby2p5('ruby2.5'),
  ruby2p7('ruby2.7'),
  ruby3p2('ruby3.2'),
  ruby3p3('ruby3.3'),
  ruby3p4('ruby3.4'),
  ruby4p0('ruby4.0'),
  provided('provided'),
  providedAl2('provided.al2'),
  providedAl2023('provided.al2023'),
  nodejs26X('nodejs26.x'),
  python3p15('python3.15'),
  java8Al2023('java8.al2023'),
  java11Al2023('java11.al2023'),
  java17Al2023('java17.al2023');

  const LambdaLayerVersionCompatibleRuntimes(this.terraformValue);
  @override
  final String terraformValue;
}

/// Factory wrapper for `aws_lambda_layer_version`.
final class AwsLambdaLayerVersion extends Resource {
  static const String tfType = 'aws_lambda_layer_version';

  AwsLambdaLayerVersion({
    required super.localName,
    List<TfArg<LambdaLayerVersionCompatibleArchitectures>>?
    compatibleArchitectures,
    List<TfArg<LambdaLayerVersionCompatibleRuntimes>>? compatibleRuntimes,
    TfArg<String>? description,
    TfArg<String>? filename,
    required TfArg<String> layerName,
    TfArg<String>? licenseInfo,
    TfArg<String>? region,
    RefTo<AwsS3Bucket>? s3Bucket,
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
             'compatible_architectures': TfArg.literal([
               for (final e in compatibleArchitectures) e.toTfJson(),
             ]),
           if (compatibleRuntimes != null)
             'compatible_runtimes': TfArg.literal([
               for (final e in compatibleRuntimes) e.toTfJson(),
             ]),
           'description': ?description,
           'filename': ?filename,
           'layer_name': layerName,
           'license_info': ?licenseInfo,
           'region': ?region,
           's3_bucket': ?s3Bucket?.encodeAs('id'),
           's3_key': ?s3Key,
           's3_object_version': ?s3ObjectVersion,
           'skip_destroy': ?skipDestroy,
           'source_code_hash': ?sourceCodeHash,
         },
       );

  @override
  Set<String> get sensitiveFields => _awsLambdaLayerVersionSensitive;

  /// A reference to this resource, for arguments typed
  /// `RefTo<AwsLambdaLayerVersion>`.
  RefTo<AwsLambdaLayerVersion> get ref => RefTo.of(this);

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

  /// Reference to `compatible_architectures` attribute.
  TfRef<List<String>> get compatibleArchitectures =>
      TfRef.attribute<List<String>>(this, 'compatible_architectures');

  /// Reference to `compatible_runtimes` attribute.
  TfRef<List<String>> get compatibleRuntimes =>
      TfRef.attribute<List<String>>(this, 'compatible_runtimes');

  /// Reference to `description` attribute.
  TfRef<String> get description => TfRef.attribute<String>(this, 'description');

  /// Reference to `filename` attribute.
  TfRef<String> get filename => TfRef.attribute<String>(this, 'filename');

  /// Reference to `layer_name` attribute.
  TfRef<String> get layerName => TfRef.attribute<String>(this, 'layer_name');

  /// Reference to `license_info` attribute.
  TfRef<String> get licenseInfo =>
      TfRef.attribute<String>(this, 'license_info');

  /// Reference to `region` attribute.
  TfRef<String> get region => TfRef.attribute<String>(this, 'region');

  /// Reference to `s3_bucket` attribute.
  TfRef<String> get s3Bucket => TfRef.attribute<String>(this, 's3_bucket');

  /// Reference to `s3_key` attribute.
  TfRef<String> get s3Key => TfRef.attribute<String>(this, 's3_key');

  /// Reference to `s3_object_version` attribute.
  TfRef<String> get s3ObjectVersion =>
      TfRef.attribute<String>(this, 's3_object_version');

  /// Reference to `skip_destroy` attribute.
  TfRef<bool> get skipDestroy => TfRef.attribute<bool>(this, 'skip_destroy');

  /// Reference to `source_code_hash` attribute.
  TfRef<String> get sourceCodeHash =>
      TfRef.attribute<String>(this, 'source_code_hash');
}
