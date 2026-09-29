// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `aws_glue_dev_endpoint`.
const Set<String> _awsGlueDevEndpointSensitive = <String>{};

/// Glue Dev Endpoint Worker enum for `worker_type`.
enum GlueDevEndpointWorkerType implements TerraformEnum {
  standard('Standard'),
  g1x('G.1X'),
  g2x('G.2X'),
  g025x('G.025X'),
  g4x('G.4X'),
  g8x('G.8X'),
  z2x('Z.2X');

  const GlueDevEndpointWorkerType(this.terraformValue);
  @override
  final String terraformValue;
}

/// At most one of `public_key`, `public_keys` on `aws_glue_dev_endpoint`: the provider rejects
/// more than one, so each variant sets one of them and a
/// null choice sets none.
///
/// Pick one with a dot shorthand: `.publicKey(...)`.
sealed class GlueDevEndpointPublicKeyOrPublicKeys {
  const GlueDevEndpointPublicKeyOrPublicKeys();

  /// Sets `public_key`.
  const factory GlueDevEndpointPublicKeyOrPublicKeys.publicKey(
    TfArg<String> publicKey,
  ) = GlueDevEndpointPublicKeyOrPublicKeysPublicKey;

  /// Sets `public_keys`.
  const factory GlueDevEndpointPublicKeyOrPublicKeys.publicKeys(
    TfArg<List<String>> publicKeys,
  ) = GlueDevEndpointPublicKeyOrPublicKeysPublicKeys;

  /// The Terraform argument this choice sets.
  String get blockKey;

  Map<String, Object?> encode();

  /// The resource arguments behind [encode], as the caller's
  /// [TfArg]s.
  Map<String, TfArg<Object?>> get argMap;
}

/// The [GlueDevEndpointPublicKeyOrPublicKeys.publicKey] choice: sets `public_key`.
final class GlueDevEndpointPublicKeyOrPublicKeysPublicKey
    extends GlueDevEndpointPublicKeyOrPublicKeys {
  const GlueDevEndpointPublicKeyOrPublicKeysPublicKey(this.publicKey);

  final TfArg<String> publicKey;

  @override
  String get blockKey => 'public_key';

  @override
  Map<String, Object?> encode() => {'public_key': publicKey.toTfJson()};

  @override
  Map<String, TfArg<Object?>> get argMap => {'public_key': publicKey};
}

/// The [GlueDevEndpointPublicKeyOrPublicKeys.publicKeys] choice: sets `public_keys`.
final class GlueDevEndpointPublicKeyOrPublicKeysPublicKeys
    extends GlueDevEndpointPublicKeyOrPublicKeys {
  const GlueDevEndpointPublicKeyOrPublicKeysPublicKeys(this.publicKeys);

  final TfArg<List<String>> publicKeys;

  @override
  String get blockKey => 'public_keys';

  @override
  Map<String, Object?> encode() => {'public_keys': publicKeys.toTfJson()};

  @override
  Map<String, TfArg<Object?>> get argMap => {'public_keys': publicKeys};
}

/// Factory wrapper for `aws_glue_dev_endpoint`.
final class AwsGlueDevEndpoint extends Resource {
  static const String tfType = 'aws_glue_dev_endpoint';

  AwsGlueDevEndpoint({
    required super.localName,
    TfArg<Map<String, String>>? arguments,
    TfArg<String>? extraJarsS3Path,
    TfArg<String>? extraPythonLibsS3Path,
    TfArg<String>? glueVersion,
    required TfArg<String> name,
    TfArg<num>? numberOfNodes,
    TfArg<num>? numberOfWorkers,
    GlueDevEndpointPublicKeyOrPublicKeys? publicKeyOrPublicKeys,
    TfArg<String>? region,
    required TfArg<String> roleArn,
    TfArg<String>? securityConfiguration,
    TfArg<List<String>>? securityGroupIds,
    TfArg<String>? subnetId,
    TfArg<Map<String, String>>? tags,
    TfArg<GlueDevEndpointWorkerType>? workerType,
    super.lifecycle,
    super.dependsOn,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           if (arguments != null) 'arguments': arguments,
           if (extraJarsS3Path != null) 'extra_jars_s3_path': extraJarsS3Path,
           if (extraPythonLibsS3Path != null)
             'extra_python_libs_s3_path': extraPythonLibsS3Path,
           if (glueVersion != null) 'glue_version': glueVersion,
           'name': name,
           if (numberOfNodes != null) 'number_of_nodes': numberOfNodes,
           if (numberOfWorkers != null) 'number_of_workers': numberOfWorkers,
           ...?publicKeyOrPublicKeys?.argMap,
           if (region != null) 'region': region,
           'role_arn': roleArn,
           if (securityConfiguration != null)
             'security_configuration': securityConfiguration,
           if (securityGroupIds != null) 'security_group_ids': securityGroupIds,
           if (subnetId != null) 'subnet_id': subnetId,
           if (tags != null) 'tags': tags,
           if (workerType != null) 'worker_type': workerType,
         },
       );

  @override
  Set<String> get sensitiveFields => _awsGlueDevEndpointSensitive;

  /// Reference to `name` attribute.
  TfRef<String> get nameRef => TfRef.attribute<String>(this, 'name');

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `arn` attribute.
  TfRef<String> get arn => TfRef.attribute<String>(this, 'arn');

  /// Reference to `availability_zone` attribute.
  TfRef<String> get availabilityZone =>
      TfRef.attribute<String>(this, 'availability_zone');

  /// Reference to `failure_reason` attribute.
  TfRef<String> get failureReason =>
      TfRef.attribute<String>(this, 'failure_reason');

  /// Reference to `private_address` attribute.
  TfRef<String> get privateAddress =>
      TfRef.attribute<String>(this, 'private_address');

  /// Reference to `public_address` attribute.
  TfRef<String> get publicAddress =>
      TfRef.attribute<String>(this, 'public_address');

  /// Reference to `status` attribute.
  TfRef<String> get status => TfRef.attribute<String>(this, 'status');

  /// Reference to `vpc_id` attribute.
  TfRef<String> get vpcId => TfRef.attribute<String>(this, 'vpc_id');

  /// Reference to `yarn_endpoint_address` attribute.
  TfRef<String> get yarnEndpointAddress =>
      TfRef.attribute<String>(this, 'yarn_endpoint_address');

  /// Reference to `zeppelin_remote_spark_interpreter_port` attribute.
  TfRef<num> get zeppelinRemoteSparkInterpreterPort =>
      TfRef.attribute<num>(this, 'zeppelin_remote_spark_interpreter_port');
}
