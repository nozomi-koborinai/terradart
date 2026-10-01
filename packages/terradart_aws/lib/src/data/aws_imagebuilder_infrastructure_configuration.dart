// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';
import '../imagebuilder/aws_imagebuilder_infrastructure_configuration.dart';

/// Sensitive field paths for `aws_imagebuilder_infrastructure_configuration`.
const Set<String> _awsImagebuilderInfrastructureConfigurationSensitive =
    <String>{};

/// Factory wrapper for `aws_imagebuilder_infrastructure_configuration`.
final class DataAwsImagebuilderInfrastructureConfiguration extends Data {
  static const String tfType = 'aws_imagebuilder_infrastructure_configuration';

  DataAwsImagebuilderInfrastructureConfiguration(
    super.localName, {
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
           'region': ?region,
           'resource_tags': ?resourceTags,
           'tags': ?tags,
         },
       );

  @override
  Set<String> get sensitiveFields =>
      _awsImagebuilderInfrastructureConfigurationSensitive;

  /// A reference to the `aws_imagebuilder_infrastructure_configuration` this data source reads, for
  /// arguments typed `RefTo<AwsImagebuilderInfrastructureConfiguration>`.
  RefTo<AwsImagebuilderInfrastructureConfiguration> get ref =>
      RefTo.read(this); // ignore: invalid_use_of_internal_member

  /// Reference to `name` attribute.
  TfRef<String> get name => TfRef.attribute<String>(this, 'name');

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

  /// Reference to `arn` attribute.
  TfRef<String> get arn => TfRef.attribute<String>(this, 'arn');

  /// Reference to `region` attribute.
  TfRef<String> get region => TfRef.attribute<String>(this, 'region');

  /// Reference to `resource_tags` attribute.
  TfRef<Map<String, String>> get resourceTags =>
      TfRef.attribute<Map<String, String>>(this, 'resource_tags');

  /// Reference to `tags` attribute.
  TfRef<Map<String, String>> get tags =>
      TfRef.attribute<Map<String, String>>(this, 'tags');
}
