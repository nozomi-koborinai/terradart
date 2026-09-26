// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `aws_apprunner_vpc_connector`.
const Set<String> _awsApprunnerVpcConnectorSensitive = <String>{};

/// Factory wrapper for `aws_apprunner_vpc_connector`.
final class AwsApprunnerVpcConnector extends Resource {
  static const String tfType = 'aws_apprunner_vpc_connector';

  AwsApprunnerVpcConnector({
    required super.localName,
    TfArg<String>? region,
    required TfArg<List<String>> securityGroups,
    required TfArg<List<String>> subnets,
    TfArg<Map<String, String>>? tags,
    required TfArg<String> vpcConnectorName,
    super.lifecycle,
    super.dependsOn,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           if (region != null) 'region': region,
           'security_groups': securityGroups,
           'subnets': subnets,
           if (tags != null) 'tags': tags,
           'vpc_connector_name': vpcConnectorName,
         },
       );

  @override
  Set<String> get sensitiveFields => _awsApprunnerVpcConnectorSensitive;

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `arn` attribute.
  TfRef<String> get arn => TfRef.attribute<String>(this, 'arn');

  /// Reference to `status` attribute.
  TfRef<String> get status => TfRef.attribute<String>(this, 'status');

  /// Reference to `vpc_connector_revision` attribute.
  TfRef<num> get vpcConnectorRevision =>
      TfRef.attribute<num>(this, 'vpc_connector_revision');
}
