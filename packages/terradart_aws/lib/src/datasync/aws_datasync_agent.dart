// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `aws_datasync_agent`.
const Set<String> _awsDatasyncAgentSensitive = <String>{};

/// Factory wrapper for `aws_datasync_agent`.
final class AwsDatasyncAgent extends Resource {
  static const String tfType = 'aws_datasync_agent';

  AwsDatasyncAgent({
    required super.localName,
    TfArg<String>? activationKey,
    TfArg<String>? ipAddress,
    TfArg<String>? name,
    TfArg<String>? privateLinkEndpoint,
    TfArg<String>? region,
    TfArg<List<String>>? securityGroupArns,
    TfArg<List<String>>? subnetArns,
    TfArg<Map<String, String>>? tags,
    TfArg<String>? vpcEndpointId,
    super.lifecycle,
    super.dependsOn,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           if (activationKey != null) 'activation_key': activationKey,
           if (ipAddress != null) 'ip_address': ipAddress,
           if (name != null) 'name': name,
           if (privateLinkEndpoint != null)
             'private_link_endpoint': privateLinkEndpoint,
           if (region != null) 'region': region,
           if (securityGroupArns != null)
             'security_group_arns': securityGroupArns,
           if (subnetArns != null) 'subnet_arns': subnetArns,
           if (tags != null) 'tags': tags,
           if (vpcEndpointId != null) 'vpc_endpoint_id': vpcEndpointId,
         },
       );

  @override
  Set<String> get sensitiveFields => _awsDatasyncAgentSensitive;

  /// Reference to `name` attribute.
  TfRef<String> get nameRef => TfRef.attribute<String>(this, 'name');

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `arn` attribute.
  TfRef<String> get arn => TfRef.attribute<String>(this, 'arn');
}
