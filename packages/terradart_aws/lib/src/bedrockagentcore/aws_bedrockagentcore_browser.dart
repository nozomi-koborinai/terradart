// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:meta/meta.dart';
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `aws_bedrockagentcore_browser`.
const Set<String> _awsBedrockagentcoreBrowserSensitive = <String>{};

/// Typed helper for the `browser_signing` block of
/// `aws_bedrockagentcore_browser` (derived from provider schema).
@immutable
final class BedrockagentcoreBrowserBrowserSigning {
  const BedrockagentcoreBrowserBrowserSigning({required this.enabled});

  final TfArg<bool> enabled;

  Map<String, Object?> encode() => {'enabled': enabled.toTfJson()};
}

/// Typed helper for the `certificate` block of
/// `aws_bedrockagentcore_browser` (derived from provider schema).
@immutable
final class BedrockagentcoreBrowserCertificate {
  const BedrockagentcoreBrowserCertificate({this.location});

  final List<BedrockagentcoreBrowserCertificateLocation>? location;

  Map<String, Object?> encode() => {
    if (location != null) 'location': [for (final e in location!) e.encode()],
  };
}

/// Typed helper for the `certificate.location` block of
/// `aws_bedrockagentcore_browser` (derived from provider schema).
@immutable
final class BedrockagentcoreBrowserCertificateLocation {
  const BedrockagentcoreBrowserCertificateLocation({this.secretsManager});

  final List<BedrockagentcoreBrowserCertificateLocationSecretsManager>?
  secretsManager;

  Map<String, Object?> encode() => {
    if (secretsManager != null)
      'secrets_manager': [for (final e in secretsManager!) e.encode()],
  };
}

/// Typed helper for the `certificate.location.secrets_manager` block of
/// `aws_bedrockagentcore_browser` (derived from provider schema).
@immutable
final class BedrockagentcoreBrowserCertificateLocationSecretsManager {
  const BedrockagentcoreBrowserCertificateLocationSecretsManager({
    required this.secretArn,
  });

  final TfArg<String> secretArn;

  Map<String, Object?> encode() => {'secret_arn': secretArn.toTfJson()};
}

/// Typed helper for the `enterprise_policy` block of
/// `aws_bedrockagentcore_browser` (derived from provider schema).
@immutable
final class BedrockagentcoreBrowserEnterprisePolicy {
  const BedrockagentcoreBrowserEnterprisePolicy({this.type, this.location});

  final TfArg<String>? type;

  final List<BedrockagentcoreBrowserEnterprisePolicyLocation>? location;

  Map<String, Object?> encode() => {
    if (type != null) 'type': type!.toTfJson(),
    if (location != null) 'location': [for (final e in location!) e.encode()],
  };
}

/// Typed helper for the `enterprise_policy.location` block of
/// `aws_bedrockagentcore_browser` (derived from provider schema).
@immutable
final class BedrockagentcoreBrowserEnterprisePolicyLocation {
  const BedrockagentcoreBrowserEnterprisePolicyLocation({this.s3});

  final List<BedrockagentcoreBrowserEnterprisePolicyLocationS3>? s3;

  Map<String, Object?> encode() => {
    if (s3 != null) 's3': [for (final e in s3!) e.encode()],
  };
}

/// Typed helper for the `enterprise_policy.location.s3` block of
/// `aws_bedrockagentcore_browser` (derived from provider schema).
@immutable
final class BedrockagentcoreBrowserEnterprisePolicyLocationS3 {
  const BedrockagentcoreBrowserEnterprisePolicyLocationS3({
    required this.bucket,
    required this.prefix,
    this.versionId,
  });

  final TfArg<String> bucket;

  final TfArg<String> prefix;

  final TfArg<String>? versionId;

  Map<String, Object?> encode() => {
    'bucket': bucket.toTfJson(),
    'prefix': prefix.toTfJson(),
    if (versionId != null) 'version_id': versionId!.toTfJson(),
  };
}

/// Typed helper for the `network_configuration` block of
/// `aws_bedrockagentcore_browser` (derived from provider schema).
@immutable
final class BedrockagentcoreBrowserNetworkConfiguration {
  const BedrockagentcoreBrowserNetworkConfiguration({
    required this.networkMode,
    this.vpcConfig,
  });

  final TfArg<String> networkMode;

  final List<BedrockagentcoreBrowserNetworkConfigurationVpcConfig>? vpcConfig;

  Map<String, Object?> encode() => {
    'network_mode': networkMode.toTfJson(),
    if (vpcConfig != null)
      'vpc_config': [for (final e in vpcConfig!) e.encode()],
  };
}

/// Typed helper for the `network_configuration.vpc_config` block of
/// `aws_bedrockagentcore_browser` (derived from provider schema).
@immutable
final class BedrockagentcoreBrowserNetworkConfigurationVpcConfig {
  const BedrockagentcoreBrowserNetworkConfigurationVpcConfig({
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

/// Typed helper for the `recording` block of
/// `aws_bedrockagentcore_browser` (derived from provider schema).
@immutable
final class BedrockagentcoreBrowserRecording {
  const BedrockagentcoreBrowserRecording({this.enabled, this.s3Location});

  final TfArg<bool>? enabled;

  final List<BedrockagentcoreBrowserRecordingS3Location>? s3Location;

  Map<String, Object?> encode() => {
    if (enabled != null) 'enabled': enabled!.toTfJson(),
    if (s3Location != null)
      's3_location': [for (final e in s3Location!) e.encode()],
  };
}

/// Typed helper for the `recording.s3_location` block of
/// `aws_bedrockagentcore_browser` (derived from provider schema).
@immutable
final class BedrockagentcoreBrowserRecordingS3Location {
  const BedrockagentcoreBrowserRecordingS3Location({
    required this.bucket,
    required this.prefix,
  });

  final TfArg<String> bucket;

  final TfArg<String> prefix;

  Map<String, Object?> encode() => {
    'bucket': bucket.toTfJson(),
    'prefix': prefix.toTfJson(),
  };
}

/// Factory wrapper for `aws_bedrockagentcore_browser`.
final class AwsBedrockagentcoreBrowser extends Resource {
  static const String tfType = 'aws_bedrockagentcore_browser';

  AwsBedrockagentcoreBrowser({
    required super.localName,
    TfArg<String>? description,
    TfArg<String>? executionRoleArn,
    required TfArg<String> name,
    TfArg<String>? region,
    TfArg<Map<String, String>>? tags,
    List<BedrockagentcoreBrowserBrowserSigning>? browserSigning,
    List<BedrockagentcoreBrowserCertificate>? certificate,
    List<BedrockagentcoreBrowserEnterprisePolicy>? enterprisePolicy,
    List<BedrockagentcoreBrowserNetworkConfiguration>? networkConfiguration,
    List<BedrockagentcoreBrowserRecording>? recording,
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
           if (browserSigning != null)
             'browser_signing': TfArg.literal([
               for (final e in browserSigning) e.encode(),
             ]),
           if (certificate != null)
             'certificate': TfArg.literal([
               for (final e in certificate) e.encode(),
             ]),
           if (enterprisePolicy != null)
             'enterprise_policy': TfArg.literal([
               for (final e in enterprisePolicy) e.encode(),
             ]),
           if (networkConfiguration != null)
             'network_configuration': TfArg.literal([
               for (final e in networkConfiguration) e.encode(),
             ]),
           if (recording != null)
             'recording': TfArg.literal([
               for (final e in recording) e.encode(),
             ]),
         },
       );

  @override
  Set<String> get sensitiveFields => _awsBedrockagentcoreBrowserSensitive;

  /// Reference to `name` attribute.
  TfRef<String> get nameRef => TfRef.attribute<String>(this, 'name');

  /// Reference to `browser_arn` attribute.
  TfRef<String> get browserArn => TfRef.attribute<String>(this, 'browser_arn');

  /// Reference to `browser_id` attribute.
  TfRef<String> get browserId => TfRef.attribute<String>(this, 'browser_id');

  /// Reference to `tags_all` attribute.
  TfRef<Map<String, String>> get tagsAll =>
      TfRef.attribute<Map<String, String>>(this, 'tags_all');
}
