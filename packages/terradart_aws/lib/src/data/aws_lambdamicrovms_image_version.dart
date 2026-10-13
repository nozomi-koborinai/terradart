// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `aws_lambdamicrovms_image_version`.
const Set<String> _awsLambdamicrovmsImageVersionSensitive = <String>{};

/// Factory wrapper for `aws_lambdamicrovms_image_version`.
final class DataAwsLambdamicrovmsImageVersion extends Data {
  static const String tfType = 'aws_lambdamicrovms_image_version';

  DataAwsLambdamicrovmsImageVersion(
    super.localName, {
    required TfArg<String> imageIdentifier,
    required TfArg<String> imageVersion,
    TfArg<String>? region,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           'image_identifier': imageIdentifier,
           'image_version': imageVersion,
           'region': ?region,
         },
       );

  @override
  Set<String> get sensitiveFields => _awsLambdamicrovmsImageVersionSensitive;

  /// Reference to `additional_os_capabilities` attribute.
  TfRef<List<String>> get additionalOsCapabilities =>
      TfRef.attribute<List<String>>(this, 'additional_os_capabilities');

  /// Reference to `base_image_arn` attribute.
  TfRef<String> get baseImageArn =>
      TfRef.attribute<String>(this, 'base_image_arn');

  /// Reference to `base_image_version` attribute.
  TfRef<String> get baseImageVersion =>
      TfRef.attribute<String>(this, 'base_image_version');

  /// Reference to `build_role_arn` attribute.
  TfRef<String> get buildRoleArn =>
      TfRef.attribute<String>(this, 'build_role_arn');

  /// Reference to `code_artifact` attribute.
  TfRef<List<Map<String, Object?>>> get codeArtifact =>
      TfRef.attribute<List<Map<String, Object?>>>(this, 'code_artifact');

  /// Reference to `cpu_configuration` attribute.
  TfRef<List<Map<String, Object?>>> get cpuConfiguration =>
      TfRef.attribute<List<Map<String, Object?>>>(this, 'cpu_configuration');

  /// Reference to `created_at` attribute.
  TfRef<String> get createdAt => TfRef.attribute<String>(this, 'created_at');

  /// Reference to `description` attribute.
  TfRef<String> get description => TfRef.attribute<String>(this, 'description');

  /// Reference to `egress_network_connectors` attribute.
  TfRef<List<String>> get egressNetworkConnectors =>
      TfRef.attribute<List<String>>(this, 'egress_network_connectors');

  /// Reference to `environment_variables` attribute.
  TfRef<Map<String, String>> get environmentVariables =>
      TfRef.attribute<Map<String, String>>(this, 'environment_variables');

  /// Reference to `hooks` attribute.
  TfRef<List<Map<String, Object?>>> get hooks =>
      TfRef.attribute<List<Map<String, Object?>>>(this, 'hooks');

  /// Reference to `image_arn` attribute.
  TfRef<String> get imageArn => TfRef.attribute<String>(this, 'image_arn');

  /// Reference to `logging` attribute.
  TfRef<List<Map<String, Object?>>> get logging =>
      TfRef.attribute<List<Map<String, Object?>>>(this, 'logging');

  /// Reference to `resources` attribute.
  TfRef<List<Map<String, Object?>>> get resources =>
      TfRef.attribute<List<Map<String, Object?>>>(this, 'resources');

  /// Reference to `state` attribute.
  TfRef<String> get state => TfRef.attribute<String>(this, 'state');

  /// Reference to `state_reason` attribute.
  TfRef<String> get stateReason =>
      TfRef.attribute<String>(this, 'state_reason');

  /// Reference to `status` attribute.
  TfRef<String> get status => TfRef.attribute<String>(this, 'status');

  /// Reference to `tags` attribute.
  TfRef<Map<String, String>> get tags =>
      TfRef.attribute<Map<String, String>>(this, 'tags');

  /// Reference to `updated_at` attribute.
  TfRef<String> get updatedAt => TfRef.attribute<String>(this, 'updated_at');

  /// Reference to `image_identifier` attribute.
  TfRef<String> get imageIdentifier =>
      TfRef.attribute<String>(this, 'image_identifier');

  /// Reference to `image_version` attribute.
  TfRef<String> get imageVersion =>
      TfRef.attribute<String>(this, 'image_version');

  /// Reference to `region` attribute.
  TfRef<String> get region => TfRef.attribute<String>(this, 'region');
}
