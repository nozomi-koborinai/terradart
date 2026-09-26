// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:meta/meta.dart';
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `aws_sagemaker_notebook_instance`.
const Set<String> _awsSagemakerNotebookInstanceSensitive = <String>{};

/// Typed helper for the `instance_metadata_service_configuration` block of
/// `aws_sagemaker_notebook_instance` (derived from provider schema).
@immutable
final class SagemakerNotebookInstanceInstanceMetadataServiceConfiguration {
  const SagemakerNotebookInstanceInstanceMetadataServiceConfiguration({
    this.minimumInstanceMetadataServiceVersion,
  });

  final TfArg<String>? minimumInstanceMetadataServiceVersion;

  Map<String, Object?> encode() => {
    if (minimumInstanceMetadataServiceVersion != null)
      'minimum_instance_metadata_service_version':
          minimumInstanceMetadataServiceVersion!.toTfJson(),
  };
}

/// Factory wrapper for `aws_sagemaker_notebook_instance`.
final class AwsSagemakerNotebookInstance extends Resource {
  static const String tfType = 'aws_sagemaker_notebook_instance';

  AwsSagemakerNotebookInstance({
    required super.localName,
    TfArg<List<String>>? additionalCodeRepositories,
    TfArg<String>? defaultCodeRepository,
    TfArg<String>? directInternetAccess,
    required TfArg<String> instanceType,
    TfArg<String>? kmsKeyId,
    TfArg<String>? lifecycleConfigName,
    required TfArg<String> name,
    TfArg<String>? platformIdentifier,
    TfArg<String>? region,
    required TfArg<String> roleArn,
    TfArg<String>? rootAccess,
    TfArg<List<String>>? securityGroups,
    TfArg<String>? subnetId,
    TfArg<Map<String, String>>? tags,
    TfArg<num>? volumeSize,
    SagemakerNotebookInstanceInstanceMetadataServiceConfiguration?
    instanceMetadataServiceConfiguration,
    super.lifecycle,
    super.dependsOn,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           if (additionalCodeRepositories != null)
             'additional_code_repositories': additionalCodeRepositories,
           if (defaultCodeRepository != null)
             'default_code_repository': defaultCodeRepository,
           if (directInternetAccess != null)
             'direct_internet_access': directInternetAccess,
           'instance_type': instanceType,
           if (kmsKeyId != null) 'kms_key_id': kmsKeyId,
           if (lifecycleConfigName != null)
             'lifecycle_config_name': lifecycleConfigName,
           'name': name,
           if (platformIdentifier != null)
             'platform_identifier': platformIdentifier,
           if (region != null) 'region': region,
           'role_arn': roleArn,
           if (rootAccess != null) 'root_access': rootAccess,
           if (securityGroups != null) 'security_groups': securityGroups,
           if (subnetId != null) 'subnet_id': subnetId,
           if (tags != null) 'tags': tags,
           if (volumeSize != null) 'volume_size': volumeSize,
           if (instanceMetadataServiceConfiguration != null)
             'instance_metadata_service_configuration': TfArg.literal(
               instanceMetadataServiceConfiguration.encode(),
             ),
         },
       );

  @override
  Set<String> get sensitiveFields => _awsSagemakerNotebookInstanceSensitive;

  /// Reference to `name` attribute.
  TfRef<String> get nameRef => TfRef.attribute<String>(this, 'name');

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `arn` attribute.
  TfRef<String> get arn => TfRef.attribute<String>(this, 'arn');

  /// Reference to `network_interface_id` attribute.
  TfRef<String> get networkInterfaceId =>
      TfRef.attribute<String>(this, 'network_interface_id');

  /// Reference to `url` attribute.
  TfRef<String> get url => TfRef.attribute<String>(this, 'url');
}
