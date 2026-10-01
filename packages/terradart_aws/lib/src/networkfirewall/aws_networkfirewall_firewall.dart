// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:meta/meta.dart';
import 'package:terradart_core/terradart_core.dart';

import '../ec2/aws_subnet.dart' show AwsSubnet;
import '../ec2/aws_vpc.dart' show AwsVpc;
import '../kms/aws_kms_key.dart' show AwsKmsKey;

/// Sensitive field paths for `aws_networkfirewall_firewall`.
const Set<String> _awsNetworkfirewallFirewallSensitive = <String>{};

/// Networkfirewall Firewall Enabled Analysis enum for `enabled_analysis_types`.
extension type const NetworkfirewallFirewallEnabledAnalysisTypes._(
  TfArg<String> _
) implements TfArg<String> {
  NetworkfirewallFirewallEnabledAnalysisTypes.variable(String name)
    : this._(TfArg.variable(name));
  NetworkfirewallFirewallEnabledAnalysisTypes.expression(String template)
    : this._(TfArg.expression(template));
  const NetworkfirewallFirewallEnabledAnalysisTypes.arg(TfArg<String> arg)
    : this._(arg);

  static const tlsSni = NetworkfirewallFirewallEnabledAnalysisTypes._(
    TfArgLiteral('TLS_SNI'),
  );
  static const httpHost = NetworkfirewallFirewallEnabledAnalysisTypes._(
    TfArgLiteral('HTTP_HOST'),
  );

  static const List<NetworkfirewallFirewallEnabledAnalysisTypes> values = [
    tlsSni,
    httpHost,
  ];
}

/// Exactly one of `transit_gateway_id`, `vpc_id` on `aws_networkfirewall_firewall`: the provider rejects
/// none and more than one, so each variant sets one of them.
///
/// Pick one with a dot shorthand: `.transitGatewayId(...)`.
sealed class NetworkfirewallFirewallAttachment {
  const NetworkfirewallFirewallAttachment();

  /// Sets `transit_gateway_id`.
  const factory NetworkfirewallFirewallAttachment.transitGatewayId(
    TfArg<String> transitGatewayId,
  ) = NetworkfirewallFirewallAttachmentTransitGatewayId;

  /// Sets `vpc_id`.
  const factory NetworkfirewallFirewallAttachment.vpcId(RefTo<AwsVpc> vpcId) =
      NetworkfirewallFirewallAttachmentVpcId;

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

/// The [NetworkfirewallFirewallAttachment.transitGatewayId] choice: sets `transit_gateway_id`.
final class NetworkfirewallFirewallAttachmentTransitGatewayId
    extends NetworkfirewallFirewallAttachment {
  const NetworkfirewallFirewallAttachmentTransitGatewayId(
    this.transitGatewayId,
  );

  final TfArg<String> transitGatewayId;

  @internal
  @override
  String get blockKey => 'transit_gateway_id';

  @internal
  @override
  Map<String, Object?> encode() => {
    'transit_gateway_id': transitGatewayId.toTfJson(),
  };

  @internal
  @override
  Map<String, TfArg<Object?>> get argMap => {
    'transit_gateway_id': transitGatewayId,
  };
}

/// The [NetworkfirewallFirewallAttachment.vpcId] choice: sets `vpc_id`.
final class NetworkfirewallFirewallAttachmentVpcId
    extends NetworkfirewallFirewallAttachment {
  const NetworkfirewallFirewallAttachmentVpcId(this.vpcId);

  final RefTo<AwsVpc> vpcId;

  @internal
  @override
  String get blockKey => 'vpc_id';

  @internal
  @override
  Map<String, Object?> encode() => {'vpc_id': vpcId.encodeAs('id').toTfJson()};

  @internal
  @override
  Map<String, TfArg<Object?>> get argMap => {'vpc_id': vpcId.encodeAs('id')};
}

/// Typed helper for the `availability_zone_mapping` block of
/// `aws_networkfirewall_firewall` (derived from provider schema).
@immutable
final class NetworkfirewallFirewallAvailabilityZoneMapping {
  const NetworkfirewallFirewallAvailabilityZoneMapping({
    required this.availabilityZoneId,
  });

  final TfArg<String> availabilityZoneId;

  @internal
  Map<String, Object?> encode() => {
    'availability_zone_id': availabilityZoneId.toTfJson(),
  };
}

/// Typed helper for the `encryption_configuration` block of
/// `aws_networkfirewall_firewall` (derived from provider schema).
@immutable
final class NetworkfirewallFirewallEncryptionConfiguration {
  const NetworkfirewallFirewallEncryptionConfiguration({
    this.keyId,
    required this.type,
  });

  final RefTo<AwsKmsKey>? keyId;

  final NetworkfirewallFirewallType type;

  @internal
  Map<String, Object?> encode() => {
    'key_id': ?keyId?.encodeAs('arn').toTfJson(),
    'type': type.toTfJson(),
  };
}

/// `type` — derived from the provider schema description.
extension type const NetworkfirewallFirewallType._(TfArg<String> _)
    implements TfArg<String> {
  NetworkfirewallFirewallType.variable(String name)
    : this._(TfArg.variable(name));
  NetworkfirewallFirewallType.expression(String template)
    : this._(TfArg.expression(template));
  const NetworkfirewallFirewallType.arg(TfArg<String> arg) : this._(arg);

  static const customerKms = NetworkfirewallFirewallType._(
    TfArgLiteral('CUSTOMER_KMS'),
  );
  static const awsOwnedKmsKey = NetworkfirewallFirewallType._(
    TfArgLiteral('AWS_OWNED_KMS_KEY'),
  );

  static const List<NetworkfirewallFirewallType> values = [
    customerKms,
    awsOwnedKmsKey,
  ];
}

/// Typed helper for the `subnet_mapping` block of
/// `aws_networkfirewall_firewall` (derived from provider schema).
@immutable
final class NetworkfirewallFirewallSubnetMapping {
  const NetworkfirewallFirewallSubnetMapping({
    this.ipAddressType,
    required this.subnetId,
  });

  final NetworkfirewallFirewallIpAddressType? ipAddressType;

  final RefTo<AwsSubnet> subnetId;

  @internal
  Map<String, Object?> encode() => {
    'ip_address_type': ?ipAddressType?.toTfJson(),
    'subnet_id': subnetId.encodeAs('id').toTfJson(),
  };
}

/// `ip_address_type` — derived from the provider schema description.
extension type const NetworkfirewallFirewallIpAddressType._(TfArg<String> _)
    implements TfArg<String> {
  NetworkfirewallFirewallIpAddressType.variable(String name)
    : this._(TfArg.variable(name));
  NetworkfirewallFirewallIpAddressType.expression(String template)
    : this._(TfArg.expression(template));
  const NetworkfirewallFirewallIpAddressType.arg(TfArg<String> arg)
    : this._(arg);

  static const dualstack = NetworkfirewallFirewallIpAddressType._(
    TfArgLiteral('DUALSTACK'),
  );
  static const ipv4 = NetworkfirewallFirewallIpAddressType._(
    TfArgLiteral('IPV4'),
  );
  static const ipv6 = NetworkfirewallFirewallIpAddressType._(
    TfArgLiteral('IPV6'),
  );

  static const List<NetworkfirewallFirewallIpAddressType> values = [
    dualstack,
    ipv4,
    ipv6,
  ];
}

/// Factory wrapper for `aws_networkfirewall_firewall`.
final class AwsNetworkfirewallFirewall extends Resource {
  static const String tfType = 'aws_networkfirewall_firewall';

  AwsNetworkfirewallFirewall(
    super.localName, {
    TfArg<bool>? availabilityZoneChangeProtection,
    TfArg<bool>? deleteProtection,
    TfArg<String>? description,
    List<NetworkfirewallFirewallEnabledAnalysisTypes>? enabledAnalysisTypes,
    required TfArg<String> firewallPolicyArn,
    TfArg<bool>? firewallPolicyChangeProtection,
    required TfArg<String> name,
    TfArg<String>? region,
    TfArg<bool>? subnetChangeProtection,
    TfArg<Map<String, String>>? tags,
    required NetworkfirewallFirewallAttachment attachment,
    List<NetworkfirewallFirewallAvailabilityZoneMapping>?
    availabilityZoneMapping,
    NetworkfirewallFirewallEncryptionConfiguration? encryptionConfiguration,
    List<NetworkfirewallFirewallSubnetMapping>? subnetMapping,
    super.lifecycle,
    super.dependsOn,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           'availability_zone_change_protection':
               ?availabilityZoneChangeProtection,
           'delete_protection': ?deleteProtection,
           'description': ?description,
           if (enabledAnalysisTypes != null)
             'enabled_analysis_types': TfArg.literal([
               for (final e in enabledAnalysisTypes) e.toTfJson(),
             ]),
           'firewall_policy_arn': firewallPolicyArn,
           'firewall_policy_change_protection': ?firewallPolicyChangeProtection,
           'name': name,
           'region': ?region,
           'subnet_change_protection': ?subnetChangeProtection,
           'tags': ?tags,
           ...attachment.argMap,
           if (availabilityZoneMapping != null)
             'availability_zone_mapping': TfArg.literal([
               for (final e in availabilityZoneMapping) e.encode(),
             ]),
           if (encryptionConfiguration != null)
             'encryption_configuration': TfArg.literal(
               encryptionConfiguration.encode(),
             ),
           if (subnetMapping != null)
             'subnet_mapping': TfArg.literal([
               for (final e in subnetMapping) e.encode(),
             ]),
         },
       );

  @override
  Set<String> get sensitiveFields => _awsNetworkfirewallFirewallSensitive;

  /// A reference to this resource, for arguments typed
  /// `RefTo<AwsNetworkfirewallFirewall>`.
  RefTo<AwsNetworkfirewallFirewall> get ref => RefTo.of(this);

  /// Reference to `name` attribute.
  TfRef<String> get name => TfRef.attribute<String>(this, 'name');

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `arn` attribute.
  TfRef<String> get arn => TfRef.attribute<String>(this, 'arn');

  /// Reference to `firewall_status` attribute.
  TfRef<List<Map<String, Object?>>> get firewallStatus =>
      TfRef.attribute<List<Map<String, Object?>>>(this, 'firewall_status');

  /// Reference to `transit_gateway_owner_account_id` attribute.
  TfRef<String> get transitGatewayOwnerAccountId =>
      TfRef.attribute<String>(this, 'transit_gateway_owner_account_id');

  /// Reference to `update_token` attribute.
  TfRef<String> get updateToken =>
      TfRef.attribute<String>(this, 'update_token');

  /// Reference to `availability_zone_change_protection` attribute.
  TfRef<bool> get availabilityZoneChangeProtection =>
      TfRef.attribute<bool>(this, 'availability_zone_change_protection');

  /// Reference to `delete_protection` attribute.
  TfRef<bool> get deleteProtection =>
      TfRef.attribute<bool>(this, 'delete_protection');

  /// Reference to `description` attribute.
  TfRef<String> get description => TfRef.attribute<String>(this, 'description');

  /// Reference to `enabled_analysis_types` attribute.
  TfRef<List<String>> get enabledAnalysisTypes =>
      TfRef.attribute<List<String>>(this, 'enabled_analysis_types');

  /// Reference to `firewall_policy_arn` attribute.
  TfRef<String> get firewallPolicyArn =>
      TfRef.attribute<String>(this, 'firewall_policy_arn');

  /// Reference to `firewall_policy_change_protection` attribute.
  TfRef<bool> get firewallPolicyChangeProtection =>
      TfRef.attribute<bool>(this, 'firewall_policy_change_protection');

  /// Reference to `region` attribute.
  TfRef<String> get region => TfRef.attribute<String>(this, 'region');

  /// Reference to `subnet_change_protection` attribute.
  TfRef<bool> get subnetChangeProtection =>
      TfRef.attribute<bool>(this, 'subnet_change_protection');

  /// Reference to `tags` attribute.
  TfRef<Map<String, String>> get tags =>
      TfRef.attribute<Map<String, String>>(this, 'tags');

  /// Reference to `transit_gateway_id` attribute.
  TfRef<String> get transitGatewayId =>
      TfRef.attribute<String>(this, 'transit_gateway_id');

  /// Reference to `vpc_id` attribute.
  TfRef<String> get vpcId => TfRef.attribute<String>(this, 'vpc_id');
}
