// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `aws_dms_instance_profile`.
const Set<String> _awsDmsInstanceProfileSensitive = <String>{};

/// Factory wrapper for `aws_dms_instance_profile`.
final class AwsDmsInstanceProfile extends Resource {
  static const String tfType = 'aws_dms_instance_profile';

  AwsDmsInstanceProfile({
    required super.localName,
    TfArg<String>? availabilityZone,
    TfArg<String>? description,
    TfArg<String>? kmsKeyArn,
    TfArg<String>? name,
    TfArg<String>? networkType,
    TfArg<bool>? publiclyAccessible,
    TfArg<String>? region,
    TfArg<String>? subnetGroupIdentifier,
    TfArg<Map<String, String>>? tags,
    TfArg<List<String>>? vpcSecurityGroupIds,
    super.lifecycle,
    super.dependsOn,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           if (availabilityZone != null) 'availability_zone': availabilityZone,
           if (description != null) 'description': description,
           if (kmsKeyArn != null) 'kms_key_arn': kmsKeyArn,
           if (name != null) 'name': name,
           if (networkType != null) 'network_type': networkType,
           if (publiclyAccessible != null)
             'publicly_accessible': publiclyAccessible,
           if (region != null) 'region': region,
           if (subnetGroupIdentifier != null)
             'subnet_group_identifier': subnetGroupIdentifier,
           if (tags != null) 'tags': tags,
           if (vpcSecurityGroupIds != null)
             'vpc_security_group_ids': vpcSecurityGroupIds,
         },
       );

  @override
  Set<String> get sensitiveFields => _awsDmsInstanceProfileSensitive;

  /// Reference to `name` attribute.
  TfRef<String> get nameRef => TfRef.attribute<String>(this, 'name');

  /// Reference to `arn` attribute.
  TfRef<String> get arn => TfRef.attribute<String>(this, 'arn');

  /// Reference to `tags_all` attribute.
  TfRef<Map<String, String>> get tagsAll =>
      TfRef.attribute<Map<String, String>>(this, 'tags_all');
}
