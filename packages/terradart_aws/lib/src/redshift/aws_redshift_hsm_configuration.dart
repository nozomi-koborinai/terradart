// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `aws_redshift_hsm_configuration`.
const Set<String> _awsRedshiftHsmConfigurationSensitive = <String>{
  'hsm_partition_password',
};

/// Factory wrapper for `aws_redshift_hsm_configuration`.
final class AwsRedshiftHsmConfiguration extends Resource {
  static const String tfType = 'aws_redshift_hsm_configuration';

  AwsRedshiftHsmConfiguration({
    required super.localName,
    required TfArg<String> description,
    required TfArg<String> hsmConfigurationIdentifier,
    required TfArg<String> hsmIpAddress,
    required TfArg<String> hsmPartitionName,
    required TfArg<String> hsmPartitionPassword,
    required TfArg<String> hsmServerPublicCertificate,
    TfArg<String>? region,
    TfArg<Map<String, String>>? tags,
    super.lifecycle,
    super.dependsOn,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           'description': description,
           'hsm_configuration_identifier': hsmConfigurationIdentifier,
           'hsm_ip_address': hsmIpAddress,
           'hsm_partition_name': hsmPartitionName,
           'hsm_partition_password': hsmPartitionPassword,
           'hsm_server_public_certificate': hsmServerPublicCertificate,
           if (region != null) 'region': region,
           if (tags != null) 'tags': tags,
         },
       );

  @override
  Set<String> get sensitiveFields => _awsRedshiftHsmConfigurationSensitive;

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `arn` attribute.
  TfRef<String> get arn => TfRef.attribute<String>(this, 'arn');
}
