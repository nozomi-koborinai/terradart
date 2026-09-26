// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:meta/meta.dart';
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `aws_networkmanager_vpc_attachment`.
const Set<String> _awsNetworkmanagerVpcAttachmentSensitive = <String>{};

/// Typed helper for the `options` block of
/// `aws_networkmanager_vpc_attachment` (derived from provider schema).
@immutable
final class NetworkmanagerVpcAttachmentOptions {
  const NetworkmanagerVpcAttachmentOptions({
    this.applianceModeSupport,
    this.dnsSupport,
    this.ipv6Support,
    this.securityGroupReferencingSupport,
  });

  final TfArg<bool>? applianceModeSupport;

  final TfArg<bool>? dnsSupport;

  final TfArg<bool>? ipv6Support;

  final TfArg<bool>? securityGroupReferencingSupport;

  Map<String, Object?> encode() => {
    if (applianceModeSupport != null)
      'appliance_mode_support': applianceModeSupport!.toTfJson(),
    if (dnsSupport != null) 'dns_support': dnsSupport!.toTfJson(),
    if (ipv6Support != null) 'ipv6_support': ipv6Support!.toTfJson(),
    if (securityGroupReferencingSupport != null)
      'security_group_referencing_support': securityGroupReferencingSupport!
          .toTfJson(),
  };
}

/// Factory wrapper for `aws_networkmanager_vpc_attachment`.
final class AwsNetworkmanagerVpcAttachment extends Resource {
  static const String tfType = 'aws_networkmanager_vpc_attachment';

  AwsNetworkmanagerVpcAttachment({
    required super.localName,
    required TfArg<String> coreNetworkId,
    TfArg<String>? routingPolicyLabel,
    required TfArg<List<String>> subnetArns,
    TfArg<Map<String, String>>? tags,
    required TfArg<String> vpcArn,
    NetworkmanagerVpcAttachmentOptions? options,
    super.lifecycle,
    super.dependsOn,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           'core_network_id': coreNetworkId,
           if (routingPolicyLabel != null)
             'routing_policy_label': routingPolicyLabel,
           'subnet_arns': subnetArns,
           if (tags != null) 'tags': tags,
           'vpc_arn': vpcArn,
           if (options != null) 'options': TfArg.literal(options.encode()),
         },
       );

  @override
  Set<String> get sensitiveFields => _awsNetworkmanagerVpcAttachmentSensitive;

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `arn` attribute.
  TfRef<String> get arn => TfRef.attribute<String>(this, 'arn');

  /// Reference to `attachment_policy_rule_number` attribute.
  TfRef<num> get attachmentPolicyRuleNumber =>
      TfRef.attribute<num>(this, 'attachment_policy_rule_number');

  /// Reference to `attachment_type` attribute.
  TfRef<String> get attachmentType =>
      TfRef.attribute<String>(this, 'attachment_type');

  /// Reference to `core_network_arn` attribute.
  TfRef<String> get coreNetworkArn =>
      TfRef.attribute<String>(this, 'core_network_arn');

  /// Reference to `edge_location` attribute.
  TfRef<String> get edgeLocation =>
      TfRef.attribute<String>(this, 'edge_location');

  /// Reference to `owner_account_id` attribute.
  TfRef<String> get ownerAccountId =>
      TfRef.attribute<String>(this, 'owner_account_id');

  /// Reference to `resource_arn` attribute.
  TfRef<String> get resourceArn =>
      TfRef.attribute<String>(this, 'resource_arn');

  /// Reference to `segment_name` attribute.
  TfRef<String> get segmentName =>
      TfRef.attribute<String>(this, 'segment_name');

  /// Reference to `state` attribute.
  TfRef<String> get state => TfRef.attribute<String>(this, 'state');
}
