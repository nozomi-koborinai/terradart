// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';

import '../s3/aws_s3_bucket.dart' show AwsS3Bucket;

/// Sensitive field paths for `aws_lambda_layer_version`.
const Set<String> _awsLambdaLayerVersionSensitive = <String>{};

/// Lambda Layer Version Compatible enum for `compatible_architectures`.
extension type const LambdaLayerVersionCompatibleArchitectures._(
  TfArg<String> _
) implements TfArg<String> {
  LambdaLayerVersionCompatibleArchitectures.variable(String name)
    : this._(TfArg.variable(name));
  LambdaLayerVersionCompatibleArchitectures.expression(String template)
    : this._(TfArg.expression(template));
  const LambdaLayerVersionCompatibleArchitectures.arg(TfArg<String> arg)
    : this._(arg);

  static const x8664 = LambdaLayerVersionCompatibleArchitectures._(
    TfArgLiteral('x86_64'),
  );
  static const arm64 = LambdaLayerVersionCompatibleArchitectures._(
    TfArgLiteral('arm64'),
  );

  static const List<LambdaLayerVersionCompatibleArchitectures> values = [
    x8664,
    arm64,
  ];
}

/// Lambda Layer Version Compatible enum for `compatible_runtimes`.
extension type const LambdaLayerVersionCompatibleRuntimes._(TfArg<String> _)
    implements TfArg<String> {
  LambdaLayerVersionCompatibleRuntimes.variable(String name)
    : this._(TfArg.variable(name));
  LambdaLayerVersionCompatibleRuntimes.expression(String template)
    : this._(TfArg.expression(template));
  const LambdaLayerVersionCompatibleRuntimes.arg(TfArg<String> arg)
    : this._(arg);

  static const nodejs = LambdaLayerVersionCompatibleRuntimes._(
    TfArgLiteral('nodejs'),
  );
  static const nodejs4p3 = LambdaLayerVersionCompatibleRuntimes._(
    TfArgLiteral('nodejs4.3'),
  );
  static const nodejs6p10 = LambdaLayerVersionCompatibleRuntimes._(
    TfArgLiteral('nodejs6.10'),
  );
  static const nodejs8p10 = LambdaLayerVersionCompatibleRuntimes._(
    TfArgLiteral('nodejs8.10'),
  );
  static const nodejs10X = LambdaLayerVersionCompatibleRuntimes._(
    TfArgLiteral('nodejs10.x'),
  );
  static const nodejs12X = LambdaLayerVersionCompatibleRuntimes._(
    TfArgLiteral('nodejs12.x'),
  );
  static const nodejs14X = LambdaLayerVersionCompatibleRuntimes._(
    TfArgLiteral('nodejs14.x'),
  );
  static const nodejs16X = LambdaLayerVersionCompatibleRuntimes._(
    TfArgLiteral('nodejs16.x'),
  );
  static const nodejs18X = LambdaLayerVersionCompatibleRuntimes._(
    TfArgLiteral('nodejs18.x'),
  );
  static const nodejs20X = LambdaLayerVersionCompatibleRuntimes._(
    TfArgLiteral('nodejs20.x'),
  );
  static const nodejs22X = LambdaLayerVersionCompatibleRuntimes._(
    TfArgLiteral('nodejs22.x'),
  );
  static const nodejs24X = LambdaLayerVersionCompatibleRuntimes._(
    TfArgLiteral('nodejs24.x'),
  );
  static const java8 = LambdaLayerVersionCompatibleRuntimes._(
    TfArgLiteral('java8'),
  );
  static const java8Al2 = LambdaLayerVersionCompatibleRuntimes._(
    TfArgLiteral('java8.al2'),
  );
  static const java11 = LambdaLayerVersionCompatibleRuntimes._(
    TfArgLiteral('java11'),
  );
  static const java17 = LambdaLayerVersionCompatibleRuntimes._(
    TfArgLiteral('java17'),
  );
  static const java21 = LambdaLayerVersionCompatibleRuntimes._(
    TfArgLiteral('java21'),
  );
  static const java25 = LambdaLayerVersionCompatibleRuntimes._(
    TfArgLiteral('java25'),
  );
  static const python2p7 = LambdaLayerVersionCompatibleRuntimes._(
    TfArgLiteral('python2.7'),
  );
  static const python3p6 = LambdaLayerVersionCompatibleRuntimes._(
    TfArgLiteral('python3.6'),
  );
  static const python3p7 = LambdaLayerVersionCompatibleRuntimes._(
    TfArgLiteral('python3.7'),
  );
  static const python3p8 = LambdaLayerVersionCompatibleRuntimes._(
    TfArgLiteral('python3.8'),
  );
  static const python3p9 = LambdaLayerVersionCompatibleRuntimes._(
    TfArgLiteral('python3.9'),
  );
  static const python3p10 = LambdaLayerVersionCompatibleRuntimes._(
    TfArgLiteral('python3.10'),
  );
  static const python3p11 = LambdaLayerVersionCompatibleRuntimes._(
    TfArgLiteral('python3.11'),
  );
  static const python3p12 = LambdaLayerVersionCompatibleRuntimes._(
    TfArgLiteral('python3.12'),
  );
  static const python3p13 = LambdaLayerVersionCompatibleRuntimes._(
    TfArgLiteral('python3.13'),
  );
  static const python3p14 = LambdaLayerVersionCompatibleRuntimes._(
    TfArgLiteral('python3.14'),
  );
  static const dotnetcore1p0 = LambdaLayerVersionCompatibleRuntimes._(
    TfArgLiteral('dotnetcore1.0'),
  );
  static const dotnetcore2p0 = LambdaLayerVersionCompatibleRuntimes._(
    TfArgLiteral('dotnetcore2.0'),
  );
  static const dotnetcore2p1 = LambdaLayerVersionCompatibleRuntimes._(
    TfArgLiteral('dotnetcore2.1'),
  );
  static const dotnetcore3p1 = LambdaLayerVersionCompatibleRuntimes._(
    TfArgLiteral('dotnetcore3.1'),
  );
  static const dotnet6 = LambdaLayerVersionCompatibleRuntimes._(
    TfArgLiteral('dotnet6'),
  );
  static const dotnet8 = LambdaLayerVersionCompatibleRuntimes._(
    TfArgLiteral('dotnet8'),
  );
  static const dotnet10 = LambdaLayerVersionCompatibleRuntimes._(
    TfArgLiteral('dotnet10'),
  );
  static const nodejs4p3Edge = LambdaLayerVersionCompatibleRuntimes._(
    TfArgLiteral('nodejs4.3-edge'),
  );
  static const go1X = LambdaLayerVersionCompatibleRuntimes._(
    TfArgLiteral('go1.x'),
  );
  static const ruby2p5 = LambdaLayerVersionCompatibleRuntimes._(
    TfArgLiteral('ruby2.5'),
  );
  static const ruby2p7 = LambdaLayerVersionCompatibleRuntimes._(
    TfArgLiteral('ruby2.7'),
  );
  static const ruby3p2 = LambdaLayerVersionCompatibleRuntimes._(
    TfArgLiteral('ruby3.2'),
  );
  static const ruby3p3 = LambdaLayerVersionCompatibleRuntimes._(
    TfArgLiteral('ruby3.3'),
  );
  static const ruby3p4 = LambdaLayerVersionCompatibleRuntimes._(
    TfArgLiteral('ruby3.4'),
  );
  static const ruby4p0 = LambdaLayerVersionCompatibleRuntimes._(
    TfArgLiteral('ruby4.0'),
  );
  static const provided = LambdaLayerVersionCompatibleRuntimes._(
    TfArgLiteral('provided'),
  );
  static const providedAl2 = LambdaLayerVersionCompatibleRuntimes._(
    TfArgLiteral('provided.al2'),
  );
  static const providedAl2023 = LambdaLayerVersionCompatibleRuntimes._(
    TfArgLiteral('provided.al2023'),
  );
  static const nodejs26X = LambdaLayerVersionCompatibleRuntimes._(
    TfArgLiteral('nodejs26.x'),
  );
  static const python3p15 = LambdaLayerVersionCompatibleRuntimes._(
    TfArgLiteral('python3.15'),
  );
  static const java8Al2023 = LambdaLayerVersionCompatibleRuntimes._(
    TfArgLiteral('java8.al2023'),
  );
  static const java11Al2023 = LambdaLayerVersionCompatibleRuntimes._(
    TfArgLiteral('java11.al2023'),
  );
  static const java17Al2023 = LambdaLayerVersionCompatibleRuntimes._(
    TfArgLiteral('java17.al2023'),
  );

  static const List<LambdaLayerVersionCompatibleRuntimes> values = [
    nodejs,
    nodejs4p3,
    nodejs6p10,
    nodejs8p10,
    nodejs10X,
    nodejs12X,
    nodejs14X,
    nodejs16X,
    nodejs18X,
    nodejs20X,
    nodejs22X,
    nodejs24X,
    java8,
    java8Al2,
    java11,
    java17,
    java21,
    java25,
    python2p7,
    python3p6,
    python3p7,
    python3p8,
    python3p9,
    python3p10,
    python3p11,
    python3p12,
    python3p13,
    python3p14,
    dotnetcore1p0,
    dotnetcore2p0,
    dotnetcore2p1,
    dotnetcore3p1,
    dotnet6,
    dotnet8,
    dotnet10,
    nodejs4p3Edge,
    go1X,
    ruby2p5,
    ruby2p7,
    ruby3p2,
    ruby3p3,
    ruby3p4,
    ruby4p0,
    provided,
    providedAl2,
    providedAl2023,
    nodejs26X,
    python3p15,
    java8Al2023,
    java11Al2023,
    java17Al2023,
  ];
}

/// Factory wrapper for `aws_lambda_layer_version`.
final class AwsLambdaLayerVersion extends Resource {
  static const String tfType = 'aws_lambda_layer_version';

  AwsLambdaLayerVersion(
    super.localName, {
    List<LambdaLayerVersionCompatibleArchitectures>? compatibleArchitectures,
    List<LambdaLayerVersionCompatibleRuntimes>? compatibleRuntimes,
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
