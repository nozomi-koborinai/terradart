// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:meta/meta.dart';
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `aws_bedrockagentcore_code_interpreter`.
const Set<String> _awsBedrockagentcoreCodeInterpreterSensitive = <String>{};

/// Typed helper for the `certificate` block of
/// `aws_bedrockagentcore_code_interpreter` (derived from provider schema).
@immutable
final class BedrockagentcoreCodeInterpreterCertificate {
  const BedrockagentcoreCodeInterpreterCertificate({this.location});

  final List<BedrockagentcoreCodeInterpreterCertificateLocation>? location;

  Map<String, Object?> encode() => {
    if (location != null) 'location': [for (final e in location!) e.encode()],
  };
}

/// Typed helper for the `certificate.location` block of
/// `aws_bedrockagentcore_code_interpreter` (derived from provider schema).
@immutable
final class BedrockagentcoreCodeInterpreterCertificateLocation {
  const BedrockagentcoreCodeInterpreterCertificateLocation({
    this.secretsManager,
  });

  final List<BedrockagentcoreCodeInterpreterCertificateLocationSecretsManager>?
  secretsManager;

  Map<String, Object?> encode() => {
    if (secretsManager != null)
      'secrets_manager': [for (final e in secretsManager!) e.encode()],
  };
}

/// Typed helper for the `certificate.location.secrets_manager` block of
/// `aws_bedrockagentcore_code_interpreter` (derived from provider schema).
@immutable
final class BedrockagentcoreCodeInterpreterCertificateLocationSecretsManager {
  const BedrockagentcoreCodeInterpreterCertificateLocationSecretsManager({
    required this.secretArn,
  });

  final TfArg<String> secretArn;

  Map<String, Object?> encode() => {'secret_arn': secretArn.toTfJson()};
}

/// Typed helper for the `network_configuration` block of
/// `aws_bedrockagentcore_code_interpreter` (derived from provider schema).
@immutable
final class BedrockagentcoreCodeInterpreterNetworkConfiguration {
  const BedrockagentcoreCodeInterpreterNetworkConfiguration({
    required this.networkMode,
    this.vpcConfig,
  });

  final TfArg<String> networkMode;

  final List<BedrockagentcoreCodeInterpreterNetworkConfigurationVpcConfig>?
  vpcConfig;

  Map<String, Object?> encode() => {
    'network_mode': networkMode.toTfJson(),
    if (vpcConfig != null)
      'vpc_config': [for (final e in vpcConfig!) e.encode()],
  };
}

/// Typed helper for the `network_configuration.vpc_config` block of
/// `aws_bedrockagentcore_code_interpreter` (derived from provider schema).
@immutable
final class BedrockagentcoreCodeInterpreterNetworkConfigurationVpcConfig {
  const BedrockagentcoreCodeInterpreterNetworkConfigurationVpcConfig({
    required this.securityGroups,
    required this.subnets,
  });

  final TfArg<List<Object?>> securityGroups;

  final TfArg<List<Object?>> subnets;

  Map<String, Object?> encode() => {
    'security_groups': securityGroups.toTfJson(),
    'subnets': subnets.toTfJson(),
  };
}

/// Factory wrapper for `aws_bedrockagentcore_code_interpreter`.
final class AwsBedrockagentcoreCodeInterpreter extends Resource {
  static const String tfType = 'aws_bedrockagentcore_code_interpreter';

  AwsBedrockagentcoreCodeInterpreter({
    required super.localName,
    TfArg<String>? description,
    TfArg<String>? executionRoleArn,
    required TfArg<String> name,
    TfArg<String>? region,
    TfArg<Map<String, String>>? tags,
    List<BedrockagentcoreCodeInterpreterCertificate>? certificate,
    List<BedrockagentcoreCodeInterpreterNetworkConfiguration>?
    networkConfiguration,
    super.lifecycle,
    super.dependsOn,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           if (description != null) 'description': description,
           if (executionRoleArn != null) 'execution_role_arn': executionRoleArn,
           'name': name,
           if (region != null) 'region': region,
           if (tags != null) 'tags': tags,
           if (certificate != null)
             'certificate': TfArg.literal([
               for (final e in certificate) e.encode(),
             ]),
           if (networkConfiguration != null)
             'network_configuration': TfArg.literal([
               for (final e in networkConfiguration) e.encode(),
             ]),
         },
       );

  @override
  Set<String> get sensitiveFields =>
      _awsBedrockagentcoreCodeInterpreterSensitive;

  /// Reference to `name` attribute.
  TfRef<String> get nameRef => TfRef.attribute<String>(this, 'name');

  /// Reference to `code_interpreter_arn` attribute.
  TfRef<String> get codeInterpreterArn =>
      TfRef.attribute<String>(this, 'code_interpreter_arn');

  /// Reference to `code_interpreter_id` attribute.
  TfRef<String> get codeInterpreterId =>
      TfRef.attribute<String>(this, 'code_interpreter_id');

  /// Reference to `tags_all` attribute.
  TfRef<Map<String, String>> get tagsAll =>
      TfRef.attribute<Map<String, String>>(this, 'tags_all');
}
