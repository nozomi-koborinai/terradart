// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:meta/meta.dart';
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `aws_ec2_client_vpn_authorization_rule`.
const Set<String> _awsEc2ClientVpnAuthorizationRuleSensitive = <String>{};

/// Exactly one of `access_group_id`, `authorize_all_groups` on `aws_ec2_client_vpn_authorization_rule`: the provider rejects
/// none and more than one, so each variant sets one of them.
///
/// Pick one with a dot shorthand: `.accessGroupId(...)`.
sealed class Ec2ClientVpnAuthorizationRuleAudience {
  const Ec2ClientVpnAuthorizationRuleAudience();

  /// Sets `access_group_id`.
  const factory Ec2ClientVpnAuthorizationRuleAudience.accessGroupId(
    TfArg<String> accessGroupId,
  ) = Ec2ClientVpnAuthorizationRuleAudienceAccessGroupId;

  /// Sets `authorize_all_groups`.
  const factory Ec2ClientVpnAuthorizationRuleAudience.authorizeAllGroups(
    TfArg<bool> authorizeAllGroups,
  ) = Ec2ClientVpnAuthorizationRuleAudienceAuthorizeAllGroups;

  /// The Terraform argument this choice sets.
  @internal
  String get blockKey;

  @internal
  Map<String, Object?> encode();

  /// The resource arguments behind [encode], as the caller's
  /// [TfArg]s.
  @internal
  Map<String, TfArg<Object?>> get argMap;
}

/// The [Ec2ClientVpnAuthorizationRuleAudience.accessGroupId] choice: sets `access_group_id`.
final class Ec2ClientVpnAuthorizationRuleAudienceAccessGroupId
    extends Ec2ClientVpnAuthorizationRuleAudience {
  const Ec2ClientVpnAuthorizationRuleAudienceAccessGroupId(this.accessGroupId);

  final TfArg<String> accessGroupId;

  @internal
  @override
  String get blockKey => 'access_group_id';

  @internal
  @override
  Map<String, Object?> encode() => {
    'access_group_id': accessGroupId.toTfJson(),
  };

  @internal
  @override
  Map<String, TfArg<Object?>> get argMap => {'access_group_id': accessGroupId};
}

/// The [Ec2ClientVpnAuthorizationRuleAudience.authorizeAllGroups] choice: sets `authorize_all_groups`.
final class Ec2ClientVpnAuthorizationRuleAudienceAuthorizeAllGroups
    extends Ec2ClientVpnAuthorizationRuleAudience {
  const Ec2ClientVpnAuthorizationRuleAudienceAuthorizeAllGroups(
    this.authorizeAllGroups,
  );

  final TfArg<bool> authorizeAllGroups;

  @internal
  @override
  String get blockKey => 'authorize_all_groups';

  @internal
  @override
  Map<String, Object?> encode() => {
    'authorize_all_groups': authorizeAllGroups.toTfJson(),
  };

  @internal
  @override
  Map<String, TfArg<Object?>> get argMap => {
    'authorize_all_groups': authorizeAllGroups,
  };
}

/// Factory wrapper for `aws_ec2_client_vpn_authorization_rule`.
final class AwsEc2ClientVpnAuthorizationRule extends Resource {
  static const String tfType = 'aws_ec2_client_vpn_authorization_rule';

  AwsEc2ClientVpnAuthorizationRule(
    super.localName, {
    required Ec2ClientVpnAuthorizationRuleAudience audience,
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
           ...audience.argMap,
           'client_vpn_endpoint_id': clientVpnEndpointId,
           'description': ?description,
           'region': ?region,
           'target_network_cidr': targetNetworkCidr,
         },
       );

  @override
  Set<String> get sensitiveFields => _awsEc2ClientVpnAuthorizationRuleSensitive;

  /// A reference to this resource, for arguments typed
  /// `RefTo<AwsEc2ClientVpnAuthorizationRule>`.
  RefTo<AwsEc2ClientVpnAuthorizationRule> get ref => RefTo.of(this);

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `access_group_id` attribute.
  TfRef<String> get accessGroupId =>
      TfRef.attribute<String>(this, 'access_group_id');

  /// Reference to `authorize_all_groups` attribute.
  TfRef<bool> get authorizeAllGroups =>
      TfRef.attribute<bool>(this, 'authorize_all_groups');

  /// Reference to `client_vpn_endpoint_id` attribute.
  TfRef<String> get clientVpnEndpointId =>
      TfRef.attribute<String>(this, 'client_vpn_endpoint_id');

  /// Reference to `description` attribute.
  TfRef<String> get description => TfRef.attribute<String>(this, 'description');

  /// Reference to `region` attribute.
  TfRef<String> get region => TfRef.attribute<String>(this, 'region');

  /// Reference to `target_network_cidr` attribute.
  TfRef<String> get targetNetworkCidr =>
      TfRef.attribute<String>(this, 'target_network_cidr');
}
