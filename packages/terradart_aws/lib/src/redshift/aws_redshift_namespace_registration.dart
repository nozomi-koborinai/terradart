// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `aws_redshift_namespace_registration`.
const Set<String> _awsRedshiftNamespaceRegistrationSensitive = <String>{};

/// Factory wrapper for `aws_redshift_namespace_registration`.
final class AwsRedshiftNamespaceRegistration extends Resource {
  static const String tfType = 'aws_redshift_namespace_registration';

  AwsRedshiftNamespaceRegistration({
    required super.localName,
    required TfArg<String> consumerIdentifier,
    required TfArg<String> namespaceType,
    TfArg<String>? provisionedClusterIdentifier,
    TfArg<String>? region,
    TfArg<String>? serverlessNamespaceIdentifier,
    TfArg<String>? serverlessWorkgroupIdentifier,
    super.lifecycle,
    super.dependsOn,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           'consumer_identifier': consumerIdentifier,
           'namespace_type': namespaceType,
           if (provisionedClusterIdentifier != null)
             'provisioned_cluster_identifier': provisionedClusterIdentifier,
           if (region != null) 'region': region,
           if (serverlessNamespaceIdentifier != null)
             'serverless_namespace_identifier': serverlessNamespaceIdentifier,
           if (serverlessWorkgroupIdentifier != null)
             'serverless_workgroup_identifier': serverlessWorkgroupIdentifier,
         },
       );

  @override
  Set<String> get sensitiveFields => _awsRedshiftNamespaceRegistrationSensitive;
}
