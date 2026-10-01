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
           'provisioned_cluster_identifier': ?provisionedClusterIdentifier,
           'region': ?region,
           'serverless_namespace_identifier': ?serverlessNamespaceIdentifier,
           'serverless_workgroup_identifier': ?serverlessWorkgroupIdentifier,
         },
       );

  @override
  Set<String> get sensitiveFields => _awsRedshiftNamespaceRegistrationSensitive;

  /// A reference to this resource, for arguments typed
  /// `RefTo<AwsRedshiftNamespaceRegistration>`.
  RefTo<AwsRedshiftNamespaceRegistration> get ref => RefTo.of(this);

  /// Reference to `consumer_identifier` attribute.
  TfRef<String> get consumerIdentifier =>
      TfRef.attribute<String>(this, 'consumer_identifier');

  /// Reference to `namespace_type` attribute.
  TfRef<String> get namespaceType =>
      TfRef.attribute<String>(this, 'namespace_type');

  /// Reference to `provisioned_cluster_identifier` attribute.
  TfRef<String> get provisionedClusterIdentifier =>
      TfRef.attribute<String>(this, 'provisioned_cluster_identifier');

  /// Reference to `region` attribute.
  TfRef<String> get region => TfRef.attribute<String>(this, 'region');

  /// Reference to `serverless_namespace_identifier` attribute.
  TfRef<String> get serverlessNamespaceIdentifier =>
      TfRef.attribute<String>(this, 'serverless_namespace_identifier');

  /// Reference to `serverless_workgroup_identifier` attribute.
  TfRef<String> get serverlessWorkgroupIdentifier =>
      TfRef.attribute<String>(this, 'serverless_workgroup_identifier');
}
