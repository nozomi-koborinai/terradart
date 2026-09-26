// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `aws_glue_dev_endpoint`.
const Set<String> _awsGlueDevEndpointSensitive = <String>{};

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
    TfArg<String>? publicKey,
    TfArg<List<String>>? publicKeys,
    TfArg<String>? region,
    required TfArg<String> roleArn,
    TfArg<String>? securityConfiguration,
    TfArg<List<String>>? securityGroupIds,
    TfArg<String>? subnetId,
    TfArg<Map<String, String>>? tags,
    TfArg<String>? workerType,
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
           if (publicKey != null) 'public_key': publicKey,
           if (publicKeys != null) 'public_keys': publicKeys,
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
