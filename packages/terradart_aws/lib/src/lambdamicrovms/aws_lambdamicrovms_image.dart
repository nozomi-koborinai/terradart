// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:meta/meta.dart';
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `aws_lambdamicrovms_image`.
const Set<String> _awsLambdamicrovmsImageSensitive = <String>{};

/// Typed helper for the `code_artifact` block of
/// `aws_lambdamicrovms_image` (derived from provider schema).
@immutable
final class LambdamicrovmsImageCodeArtifact {
  const LambdamicrovmsImageCodeArtifact({required this.uri});

  final TfArg<String> uri;

  Map<String, Object?> encode() => {'uri': uri.toTfJson()};
}

/// Typed helper for the `cpu_configuration` block of
/// `aws_lambdamicrovms_image` (derived from provider schema).
@immutable
final class LambdamicrovmsImageCpuConfiguration {
  const LambdamicrovmsImageCpuConfiguration({required this.architecture});

  final TfArg<String> architecture;

  Map<String, Object?> encode() => {'architecture': architecture.toTfJson()};
}

/// Factory wrapper for `aws_lambdamicrovms_image`.
final class AwsLambdamicrovmsImage extends Resource {
  static const String tfType = 'aws_lambdamicrovms_image';

  AwsLambdamicrovmsImage({
    required super.localName,
    TfArg<List<String>>? additionalOsCapabilities,
    required TfArg<String> baseImageArn,
    TfArg<String>? baseImageVersion,
    required TfArg<String> buildRoleArn,
    TfArg<String>? description,
    TfArg<List<String>>? egressNetworkConnectors,
    TfArg<Map<String, String>>? environmentVariables,
    required TfArg<String> name,
    TfArg<String>? region,
    TfArg<Map<String, String>>? tags,
    List<LambdamicrovmsImageCodeArtifact>? codeArtifact,
    List<LambdamicrovmsImageCpuConfiguration>? cpuConfiguration,
    super.lifecycle,
    super.dependsOn,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           if (additionalOsCapabilities != null)
             'additional_os_capabilities': additionalOsCapabilities,
           'base_image_arn': baseImageArn,
           if (baseImageVersion != null) 'base_image_version': baseImageVersion,
           'build_role_arn': buildRoleArn,
           if (description != null) 'description': description,
           if (egressNetworkConnectors != null)
             'egress_network_connectors': egressNetworkConnectors,
           if (environmentVariables != null)
             'environment_variables': environmentVariables,
           'name': name,
           if (region != null) 'region': region,
           if (tags != null) 'tags': tags,
           if (codeArtifact != null)
             'code_artifact': TfArg.literal([
               for (final e in codeArtifact) e.encode(),
             ]),
           if (cpuConfiguration != null)
             'cpu_configuration': TfArg.literal([
               for (final e in cpuConfiguration) e.encode(),
             ]),
         },
       );

  @override
  Set<String> get sensitiveFields => _awsLambdamicrovmsImageSensitive;

  /// Reference to `name` attribute.
  TfRef<String> get nameRef => TfRef.attribute<String>(this, 'name');

  /// Reference to `arn` attribute.
  TfRef<String> get arn => TfRef.attribute<String>(this, 'arn');

  /// Reference to `created_at` attribute.
  TfRef<String> get createdAt => TfRef.attribute<String>(this, 'created_at');

  /// Reference to `image_version` attribute.
  TfRef<String> get imageVersion =>
      TfRef.attribute<String>(this, 'image_version');

  /// Reference to `latest_active_image_version` attribute.
  TfRef<String> get latestActiveImageVersion =>
      TfRef.attribute<String>(this, 'latest_active_image_version');

  /// Reference to `latest_failed_image_version` attribute.
  TfRef<String> get latestFailedImageVersion =>
      TfRef.attribute<String>(this, 'latest_failed_image_version');

  /// Reference to `state` attribute.
  TfRef<String> get state => TfRef.attribute<String>(this, 'state');

  /// Reference to `tags_all` attribute.
  TfRef<Map<String, String>> get tagsAll =>
      TfRef.attribute<Map<String, String>>(this, 'tags_all');

  /// Reference to `updated_at` attribute.
  TfRef<String> get updatedAt => TfRef.attribute<String>(this, 'updated_at');
}
