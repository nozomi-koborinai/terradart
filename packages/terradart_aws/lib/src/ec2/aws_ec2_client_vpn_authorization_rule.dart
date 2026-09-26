// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `aws_ec2_client_vpn_authorization_rule`.
const Set<String> _awsEc2ClientVpnAuthorizationRuleSensitive = <String>{};

/// Factory wrapper for `aws_ec2_client_vpn_authorization_rule`.
final class AwsEc2ClientVpnAuthorizationRule extends Resource {
  static const String tfType = 'aws_ec2_client_vpn_authorization_rule';

  AwsEc2ClientVpnAuthorizationRule({
    required super.localName,
    TfArg<String>? accessGroupId,
    TfArg<bool>? authorizeAllGroups,
    required TfArg<String> clientVpnEndpointId,
    TfArg<String>? description,
    TfArg<String>? region,
    required TfArg<String> targetNetworkCidr,
    super.lifecycle,
    super.dependsOn,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           if (accessGroupId != null) 'access_group_id': accessGroupId,
           if (authorizeAllGroups != null)
             'authorize_all_groups': authorizeAllGroups,
           'client_vpn_endpoint_id': clientVpnEndpointId,
           if (description != null) 'description': description,
           if (region != null) 'region': region,
           'target_network_cidr': targetNetworkCidr,
         },
       );

  @override
  Set<String> get sensitiveFields => _awsEc2ClientVpnAuthorizationRuleSensitive;

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');
}
