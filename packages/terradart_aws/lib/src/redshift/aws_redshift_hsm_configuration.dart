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
           'region': ?region,
           'tags': ?tags,
         },
       );

  @override
  Set<String> get sensitiveFields => _awsRedshiftHsmConfigurationSensitive;

  /// A reference to this resource, for arguments typed
  /// `RefTo<AwsRedshiftHsmConfiguration>`.
  RefTo<AwsRedshiftHsmConfiguration> get ref => RefTo.of(this);

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `arn` attribute.
  TfRef<String> get arn => TfRef.attribute<String>(this, 'arn');

  /// Reference to `description` attribute.
  TfRef<String> get descriptionRef =>
      TfRef.attribute<String>(this, 'description');

  /// Reference to `hsm_configuration_identifier` attribute.
  TfRef<String> get hsmConfigurationIdentifierRef =>
      TfRef.attribute<String>(this, 'hsm_configuration_identifier');

  /// Reference to `hsm_ip_address` attribute.
  TfRef<String> get hsmIpAddressRef =>
      TfRef.attribute<String>(this, 'hsm_ip_address');

  /// Reference to `hsm_partition_name` attribute.
  TfRef<String> get hsmPartitionNameRef =>
      TfRef.attribute<String>(this, 'hsm_partition_name');

  /// Reference to `hsm_partition_password` attribute.
  TfRef<String> get hsmPartitionPasswordRef =>
      TfRef.attribute<String>(this, 'hsm_partition_password');

  /// Reference to `hsm_server_public_certificate` attribute.
  TfRef<String> get hsmServerPublicCertificateRef =>
      TfRef.attribute<String>(this, 'hsm_server_public_certificate');

  /// Reference to `region` attribute.
  TfRef<String> get regionRef => TfRef.attribute<String>(this, 'region');

  /// Reference to `tags` attribute.
  TfRef<Map<String, String>> get tagsRef =>
      TfRef.attribute<Map<String, String>>(this, 'tags');
}
