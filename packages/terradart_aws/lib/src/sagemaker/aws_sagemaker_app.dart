// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:meta/meta.dart';
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `aws_sagemaker_app`.
const Set<String> _awsSagemakerAppSensitive = <String>{};

/// Typed helper for the `resource_spec` block of
/// `aws_sagemaker_app` (derived from provider schema).
@immutable
final class SagemakerAppResourceSpec {
  const SagemakerAppResourceSpec({
    this.instanceType,
    this.lifecycleConfigArn,
    this.sagemakerImageArn,
    this.sagemakerImageVersionAlias,
    this.sagemakerImageVersionArn,
  });

  final TfArg<String>? instanceType;

  final TfArg<String>? lifecycleConfigArn;

  final TfArg<String>? sagemakerImageArn;

  final TfArg<String>? sagemakerImageVersionAlias;

  final TfArg<String>? sagemakerImageVersionArn;

  Map<String, Object?> encode() => {
    if (instanceType != null) 'instance_type': instanceType!.toTfJson(),
    if (lifecycleConfigArn != null)
      'lifecycle_config_arn': lifecycleConfigArn!.toTfJson(),
    if (sagemakerImageArn != null)
      'sagemaker_image_arn': sagemakerImageArn!.toTfJson(),
    if (sagemakerImageVersionAlias != null)
      'sagemaker_image_version_alias': sagemakerImageVersionAlias!.toTfJson(),
    if (sagemakerImageVersionArn != null)
      'sagemaker_image_version_arn': sagemakerImageVersionArn!.toTfJson(),
  };
}

/// Factory wrapper for `aws_sagemaker_app`.
final class AwsSagemakerApp extends Resource {
  static const String tfType = 'aws_sagemaker_app';

  AwsSagemakerApp({
    required super.localName,
    required TfArg<String> appName,
    required TfArg<String> appType,
    required TfArg<String> domainId,
    TfArg<String>? region,
    TfArg<String>? spaceName,
    TfArg<Map<String, String>>? tags,
    TfArg<String>? userProfileName,
    SagemakerAppResourceSpec? resourceSpec,
    super.lifecycle,
    super.dependsOn,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           'app_name': appName,
           'app_type': appType,
           'domain_id': domainId,
           if (region != null) 'region': region,
           if (spaceName != null) 'space_name': spaceName,
           if (tags != null) 'tags': tags,
           if (userProfileName != null) 'user_profile_name': userProfileName,
           if (resourceSpec != null)
             'resource_spec': TfArg.literal(resourceSpec.encode()),
         },
       );

  @override
  Set<String> get sensitiveFields => _awsSagemakerAppSensitive;

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `arn` attribute.
  TfRef<String> get arn => TfRef.attribute<String>(this, 'arn');
}
