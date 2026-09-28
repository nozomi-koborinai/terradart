// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `aws_ec2_client_vpn_authorization_rule`.
const Set<String> _awsEc2ClientVpnAuthorizationRuleSensitive = <String>{};

/// Exactly one of `access_group_id`, `authorize_all_groups` on `aws_ec2_client_vpn_authorization_rule`: the provider rejects
/// none and more than one, so each variant sets one of them.
sealed class Ec2ClientVpnAuthorizationRuleAccessGroupIdOrAuthorizeAllGroups {
  const Ec2ClientVpnAuthorizationRuleAccessGroupIdOrAuthorizeAllGroups();

  /// The Terraform argument this choice sets.
  String get blockKey;

  Map<String, Object?> encode();

  /// The resource arguments behind [encode], as the caller's
  /// [TfArg]s.
  Map<String, TfArg<Object?>> get argMap;
}

/// Sets `access_group_id` (one of the [Ec2ClientVpnAuthorizationRuleAccessGroupIdOrAuthorizeAllGroups] choices).
final class Ec2ClientVpnAuthorizationRuleAccessGroupIdOption
    extends Ec2ClientVpnAuthorizationRuleAccessGroupIdOrAuthorizeAllGroups {
  const Ec2ClientVpnAuthorizationRuleAccessGroupIdOption({
    required this.accessGroupId,
  });

  final TfArg<String> accessGroupId;

  @override
  String get blockKey => 'access_group_id';

  @override
  Map<String, Object?> encode() => {
    'access_group_id': accessGroupId.toTfJson(),
  };

  @override
  Map<String, TfArg<Object?>> get argMap => {'access_group_id': accessGroupId};
}

/// Sets `authorize_all_groups` (one of the [Ec2ClientVpnAuthorizationRuleAccessGroupIdOrAuthorizeAllGroups] choices).
final class Ec2ClientVpnAuthorizationRuleAuthorizeAllGroupsOption
    extends Ec2ClientVpnAuthorizationRuleAccessGroupIdOrAuthorizeAllGroups {
  const Ec2ClientVpnAuthorizationRuleAuthorizeAllGroupsOption({
    required this.authorizeAllGroups,
  });

  final TfArg<bool> authorizeAllGroups;

  @override
  String get blockKey => 'authorize_all_groups';

  @override
  Map<String, Object?> encode() => {
    'authorize_all_groups': authorizeAllGroups.toTfJson(),
  };

  @override
  Map<String, TfArg<Object?>> get argMap => {
    'authorize_all_groups': authorizeAllGroups,
  };
}

/// Factory wrapper for `aws_ec2_client_vpn_authorization_rule`.
final class AwsEc2ClientVpnAuthorizationRule extends Resource {
  static const String tfType = 'aws_ec2_client_vpn_authorization_rule';

  AwsEc2ClientVpnAuthorizationRule({
    required super.localName,
    required Ec2ClientVpnAuthorizationRuleAccessGroupIdOrAuthorizeAllGroups
    accessGroupIdOrAuthorizeAllGroups,
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
           ...accessGroupIdOrAuthorizeAllGroups.argMap,
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
