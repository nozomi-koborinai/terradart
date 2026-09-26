// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `aws_imagebuilder_infrastructure_configuration`.
const Set<String> _awsImagebuilderInfrastructureConfigurationSensitive =
    <String>{};

/// Factory wrapper for `aws_imagebuilder_infrastructure_configuration`.
final class DataAwsImagebuilderInfrastructureConfiguration extends Data {
  static const String tfType = 'aws_imagebuilder_infrastructure_configuration';

  DataAwsImagebuilderInfrastructureConfiguration({
    required super.localName,
    required TfArg<String> arn,
    TfArg<String>? region,
    TfArg<Map<String, String>>? resourceTags,
    TfArg<Map<String, String>>? tags,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           'arn': arn,
           if (region != null) 'region': region,
           if (resourceTags != null) 'resource_tags': resourceTags,
           if (tags != null) 'tags': tags,
         },
       );

  @override
  Set<String> get sensitiveFields =>
      _awsImagebuilderInfrastructureConfigurationSensitive;

  /// Reference to `name` attribute.
  TfRef<String> get nameRef => TfRef.attribute<String>(this, 'name');

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `date_created` attribute.
  TfRef<String> get dateCreated =>
      TfRef.attribute<String>(this, 'date_created');

  /// Reference to `date_updated` attribute.
  TfRef<String> get dateUpdated =>
      TfRef.attribute<String>(this, 'date_updated');

  /// Reference to `description` attribute.
  TfRef<String> get description => TfRef.attribute<String>(this, 'description');

  /// Reference to `instance_metadata_options` attribute.
  TfRef<List<Map<String, Object?>>> get instanceMetadataOptions =>
      TfRef.attribute<List<Map<String, Object?>>>(
        this,
        'instance_metadata_options',
      );

  /// Reference to `instance_profile_name` attribute.
  TfRef<String> get instanceProfileName =>
      TfRef.attribute<String>(this, 'instance_profile_name');

  /// Reference to `instance_types` attribute.
  TfRef<List<String>> get instanceTypes =>
      TfRef.attribute<List<String>>(this, 'instance_types');

  /// Reference to `key_pair` attribute.
  TfRef<String> get keyPair => TfRef.attribute<String>(this, 'key_pair');

  /// Reference to `logging` attribute.
  TfRef<List<Map<String, Object?>>> get logging =>
      TfRef.attribute<List<Map<String, Object?>>>(this, 'logging');

  /// Reference to `placement` attribute.
  TfRef<List<Map<String, Object?>>> get placement =>
      TfRef.attribute<List<Map<String, Object?>>>(this, 'placement');

  /// Reference to `security_group_ids` attribute.
  TfRef<List<String>> get securityGroupIds =>
      TfRef.attribute<List<String>>(this, 'security_group_ids');

  /// Reference to `sns_topic_arn` attribute.
  TfRef<String> get snsTopicArn =>
      TfRef.attribute<String>(this, 'sns_topic_arn');

  /// Reference to `subnet_id` attribute.
  TfRef<String> get subnetId => TfRef.attribute<String>(this, 'subnet_id');

  /// Reference to `terminate_instance_on_failure` attribute.
  TfRef<bool> get terminateInstanceOnFailure =>
      TfRef.attribute<bool>(this, 'terminate_instance_on_failure');
}
