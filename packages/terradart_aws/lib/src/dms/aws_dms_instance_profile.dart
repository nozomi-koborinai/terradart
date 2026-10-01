// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';

import '../ec2/aws_security_group.dart' show AwsSecurityGroup;
import '../kms/aws_kms_key.dart' show AwsKmsKey;

/// Sensitive field paths for `aws_dms_instance_profile`.
const Set<String> _awsDmsInstanceProfileSensitive = <String>{};

/// Dms Instance Profile Network enum for `network_type`.
enum DmsInstanceProfileNetworkType implements TerraformEnum {
  ipv4('IPV4'),
  ipv6('IPV6'),
  dual('DUAL');

  const DmsInstanceProfileNetworkType(this.terraformValue);
  @override
  final String terraformValue;
}

/// Factory wrapper for `aws_dms_instance_profile`.
final class AwsDmsInstanceProfile extends Resource {
  static const String tfType = 'aws_dms_instance_profile';

  AwsDmsInstanceProfile(
    super.localName, {
    TfArg<String>? availabilityZone,
    TfArg<String>? description,
    RefTo<AwsKmsKey>? kmsKeyArn,
    TfArg<String>? name,
    TfArg<DmsInstanceProfileNetworkType>? networkType,
    TfArg<bool>? publiclyAccessible,
    TfArg<String>? region,
    TfArg<String>? subnetGroupIdentifier,
    TfArg<Map<String, String>>? tags,
    TfArg<List<RefTo<AwsSecurityGroup>>>? vpcSecurityGroupIds,
    super.lifecycle,
    super.dependsOn,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           'availability_zone': ?availabilityZone,
           'description': ?description,
           'kms_key_arn': ?kmsKeyArn?.encodeAs('arn'),
           'name': ?name,
           'network_type': ?networkType,
           'publicly_accessible': ?publiclyAccessible,
           'region': ?region,
           'subnet_group_identifier': ?subnetGroupIdentifier,
           'tags': ?tags,
           'vpc_security_group_ids': ?vpcSecurityGroupIds?.encodeAs('id'),
         },
       );

  @override
  Set<String> get sensitiveFields => _awsDmsInstanceProfileSensitive;

  /// A reference to this resource, for arguments typed
  /// `RefTo<AwsDmsInstanceProfile>`.
  RefTo<AwsDmsInstanceProfile> get ref => RefTo.of(this);

  /// Reference to `name` attribute.
  TfRef<String> get name => TfRef.attribute<String>(this, 'name');

  /// Reference to `arn` attribute.
  TfRef<String> get arn => TfRef.attribute<String>(this, 'arn');

  /// Reference to `tags_all` attribute.
  TfRef<Map<String, String>> get tagsAll =>
      TfRef.attribute<Map<String, String>>(this, 'tags_all');

  /// Reference to `availability_zone` attribute.
  TfRef<String> get availabilityZone =>
      TfRef.attribute<String>(this, 'availability_zone');

  /// Reference to `description` attribute.
  TfRef<String> get description => TfRef.attribute<String>(this, 'description');

  /// Reference to `kms_key_arn` attribute.
  TfRef<String> get kmsKeyArn => TfRef.attribute<String>(this, 'kms_key_arn');

  /// Reference to `network_type` attribute.
  TfRef<String> get networkType =>
      TfRef.attribute<String>(this, 'network_type');

  /// Reference to `publicly_accessible` attribute.
  TfRef<bool> get publiclyAccessible =>
      TfRef.attribute<bool>(this, 'publicly_accessible');

  /// Reference to `region` attribute.
  TfRef<String> get region => TfRef.attribute<String>(this, 'region');

  /// Reference to `subnet_group_identifier` attribute.
  TfRef<String> get subnetGroupIdentifier =>
      TfRef.attribute<String>(this, 'subnet_group_identifier');

  /// Reference to `tags` attribute.
  TfRef<Map<String, String>> get tags =>
      TfRef.attribute<Map<String, String>>(this, 'tags');

  /// Reference to `vpc_security_group_ids` attribute.
  TfRef<List<String>> get vpcSecurityGroupIds =>
      TfRef.attribute<List<String>>(this, 'vpc_security_group_ids');
}
