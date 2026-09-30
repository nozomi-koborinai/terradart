// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';

import '../ec2/aws_security_group.dart' show AwsSecurityGroup;
import '../ec2/aws_subnet.dart' show AwsSubnet;
import '../iam/aws_iam_role.dart' show AwsIamRole;

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
sealed class GlueDevEndpointPublicKey {
  const GlueDevEndpointPublicKey();

  /// Sets `public_key`.
  const factory GlueDevEndpointPublicKey.publicKey(TfArg<String> publicKey) =
      GlueDevEndpointPublicKeyChoice;

  /// Sets `public_keys`.
  const factory GlueDevEndpointPublicKey.publicKeys(
    TfArg<List<String>> publicKeys,
  ) = GlueDevEndpointPublicKeyPublicKeys;

  /// The Terraform argument this choice sets.
  String get blockKey;

  Map<String, Object?> encode();

  /// The resource arguments behind [encode], as the caller's
  /// [TfArg]s.
  Map<String, TfArg<Object?>> get argMap;
}

/// The [GlueDevEndpointPublicKey.publicKey] choice: sets `public_key`.
final class GlueDevEndpointPublicKeyChoice extends GlueDevEndpointPublicKey {
  const GlueDevEndpointPublicKeyChoice(this.publicKey);

  final TfArg<String> publicKey;

  @override
  String get blockKey => 'public_key';

  @override
  Map<String, Object?> encode() => {'public_key': publicKey.toTfJson()};

  @override
  Map<String, TfArg<Object?>> get argMap => {'public_key': publicKey};
}

/// The [GlueDevEndpointPublicKey.publicKeys] choice: sets `public_keys`.
final class GlueDevEndpointPublicKeyPublicKeys
    extends GlueDevEndpointPublicKey {
  const GlueDevEndpointPublicKeyPublicKeys(this.publicKeys);

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
    GlueDevEndpointPublicKey? publicKey,
    TfArg<String>? region,
    required RefTo<AwsIamRole> roleArn,
    TfArg<String>? securityConfiguration,
    TfArg<List<RefTo<AwsSecurityGroup>>>? securityGroupIds,
    RefTo<AwsSubnet>? subnetId,
    TfArg<Map<String, String>>? tags,
    TfArg<GlueDevEndpointWorkerType>? workerType,
    super.lifecycle,
    super.dependsOn,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           'arguments': ?arguments,
           'extra_jars_s3_path': ?extraJarsS3Path,
           'extra_python_libs_s3_path': ?extraPythonLibsS3Path,
           'glue_version': ?glueVersion,
           'name': name,
           'number_of_nodes': ?numberOfNodes,
           'number_of_workers': ?numberOfWorkers,
           ...?publicKey?.argMap,
           'region': ?region,
           'role_arn': roleArn.encodeAs('arn'),
           'security_configuration': ?securityConfiguration,
           'security_group_ids': ?securityGroupIds?.encodeAs('id'),
           'subnet_id': ?subnetId?.encodeAs('id'),
           'tags': ?tags,
           'worker_type': ?workerType,
         },
       );

  @override
  Set<String> get sensitiveFields => _awsGlueDevEndpointSensitive;

  /// A reference to this resource, for arguments typed
  /// `RefTo<AwsGlueDevEndpoint>`.
  RefTo<AwsGlueDevEndpoint> get ref => RefTo.of(this);

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

  /// Reference to `arguments` attribute.
  TfRef<Map<String, String>> get argumentsRef =>
      TfRef.attribute<Map<String, String>>(this, 'arguments');

  /// Reference to `extra_jars_s3_path` attribute.
  TfRef<String> get extraJarsS3PathRef =>
      TfRef.attribute<String>(this, 'extra_jars_s3_path');

  /// Reference to `extra_python_libs_s3_path` attribute.
  TfRef<String> get extraPythonLibsS3PathRef =>
      TfRef.attribute<String>(this, 'extra_python_libs_s3_path');

  /// Reference to `glue_version` attribute.
  TfRef<String> get glueVersionRef =>
      TfRef.attribute<String>(this, 'glue_version');

  /// Reference to `number_of_nodes` attribute.
  TfRef<num> get numberOfNodesRef =>
      TfRef.attribute<num>(this, 'number_of_nodes');

  /// Reference to `number_of_workers` attribute.
  TfRef<num> get numberOfWorkersRef =>
      TfRef.attribute<num>(this, 'number_of_workers');

  /// Reference to `public_key` attribute.
  TfRef<String> get publicKeyRef => TfRef.attribute<String>(this, 'public_key');

  /// Reference to `public_keys` attribute.
  TfRef<List<String>> get publicKeysRef =>
      TfRef.attribute<List<String>>(this, 'public_keys');

  /// Reference to `region` attribute.
  TfRef<String> get regionRef => TfRef.attribute<String>(this, 'region');

  /// Reference to `role_arn` attribute.
  TfRef<String> get roleArnRef => TfRef.attribute<String>(this, 'role_arn');

  /// Reference to `security_configuration` attribute.
  TfRef<String> get securityConfigurationRef =>
      TfRef.attribute<String>(this, 'security_configuration');

  /// Reference to `security_group_ids` attribute.
  TfRef<List<String>> get securityGroupIdsRef =>
      TfRef.attribute<List<String>>(this, 'security_group_ids');

  /// Reference to `subnet_id` attribute.
  TfRef<String> get subnetIdRef => TfRef.attribute<String>(this, 'subnet_id');

  /// Reference to `tags` attribute.
  TfRef<Map<String, String>> get tagsRef =>
      TfRef.attribute<Map<String, String>>(this, 'tags');

  /// Reference to `worker_type` attribute.
  TfRef<String> get workerTypeRef =>
      TfRef.attribute<String>(this, 'worker_type');
}
