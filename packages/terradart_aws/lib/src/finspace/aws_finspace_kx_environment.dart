// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:meta/meta.dart';
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `aws_finspace_kx_environment`.
const Set<String> _awsFinspaceKxEnvironmentSensitive = <String>{};

/// Typed helper for the `custom_dns_configuration` block of
/// `aws_finspace_kx_environment` (derived from provider schema).
@immutable
final class FinspaceKxEnvironmentCustomDnsConfiguration {
  const FinspaceKxEnvironmentCustomDnsConfiguration({
    required this.customDnsServerIp,
    required this.customDnsServerName,
  });

  final TfArg<String> customDnsServerIp;

  final TfArg<String> customDnsServerName;

  Map<String, Object?> encode() => {
    'custom_dns_server_ip': customDnsServerIp.toTfJson(),
    'custom_dns_server_name': customDnsServerName.toTfJson(),
  };
}

/// Typed helper for the `transit_gateway_configuration` block of
/// `aws_finspace_kx_environment` (derived from provider schema).
@immutable
final class FinspaceKxEnvironmentTransitGatewayConfiguration {
  const FinspaceKxEnvironmentTransitGatewayConfiguration({
    required this.routableCidrSpace,
    required this.transitGatewayId,
    this.attachmentNetworkAclConfiguration,
  });

  final TfArg<String> routableCidrSpace;

  final TfArg<String> transitGatewayId;

  final List<
    FinspaceKxEnvironmentTransitGatewayConfigurationAttachmentNetworkAclConfiguration
  >?
  attachmentNetworkAclConfiguration;

  Map<String, Object?> encode() => {
    'routable_cidr_space': routableCidrSpace.toTfJson(),
    'transit_gateway_id': transitGatewayId.toTfJson(),
    if (attachmentNetworkAclConfiguration != null)
      'attachment_network_acl_configuration': [
        for (final e in attachmentNetworkAclConfiguration!) e.encode(),
      ],
  };
}

/// Typed helper for the `transit_gateway_configuration.attachment_network_acl_configuration` block of
/// `aws_finspace_kx_environment` (derived from provider schema).
@immutable
final class FinspaceKxEnvironmentTransitGatewayConfigurationAttachmentNetworkAclConfiguration {
  const FinspaceKxEnvironmentTransitGatewayConfigurationAttachmentNetworkAclConfiguration({
    required this.cidrBlock,
    required this.protocol,
    required this.ruleAction,
    required this.ruleNumber,
    this.icmpTypeCode,
    this.portRange,
  });

  final TfArg<String> cidrBlock;

  final TfArg<String> protocol;

  final TfArg<String> ruleAction;

  final TfArg<num> ruleNumber;

  final FinspaceKxEnvironmentTransitGatewayConfigurationAttachmentNetworkAclConfigurationIcmpTypeCode?
  icmpTypeCode;

  final FinspaceKxEnvironmentTransitGatewayConfigurationAttachmentNetworkAclConfigurationPortRange?
  portRange;

  Map<String, Object?> encode() => {
    'cidr_block': cidrBlock.toTfJson(),
    'protocol': protocol.toTfJson(),
    'rule_action': ruleAction.toTfJson(),
    'rule_number': ruleNumber.toTfJson(),
    if (icmpTypeCode != null) 'icmp_type_code': icmpTypeCode!.encode(),
    if (portRange != null) 'port_range': portRange!.encode(),
  };
}

/// Typed helper for the `transit_gateway_configuration.attachment_network_acl_configuration.icmp_type_code` block of
/// `aws_finspace_kx_environment` (derived from provider schema).
@immutable
final class FinspaceKxEnvironmentTransitGatewayConfigurationAttachmentNetworkAclConfigurationIcmpTypeCode {
  const FinspaceKxEnvironmentTransitGatewayConfigurationAttachmentNetworkAclConfigurationIcmpTypeCode({
    required this.code,
    required this.type,
  });

  final TfArg<num> code;

  final TfArg<num> type;

  Map<String, Object?> encode() => {
    'code': code.toTfJson(),
    'type': type.toTfJson(),
  };
}

/// Typed helper for the `transit_gateway_configuration.attachment_network_acl_configuration.port_range` block of
/// `aws_finspace_kx_environment` (derived from provider schema).
@immutable
final class FinspaceKxEnvironmentTransitGatewayConfigurationAttachmentNetworkAclConfigurationPortRange {
  const FinspaceKxEnvironmentTransitGatewayConfigurationAttachmentNetworkAclConfigurationPortRange({
    required this.from,
    required this.to,
  });

  final TfArg<num> from;

  final TfArg<num> to;

  Map<String, Object?> encode() => {
    'from': from.toTfJson(),
    'to': to.toTfJson(),
  };
}

/// Factory wrapper for `aws_finspace_kx_environment`.
final class AwsFinspaceKxEnvironment extends Resource {
  static const String tfType = 'aws_finspace_kx_environment';

  AwsFinspaceKxEnvironment({
    required super.localName,
    TfArg<String>? description,
    required TfArg<String> kmsKeyId,
    required TfArg<String> name,
    TfArg<String>? region,
    TfArg<Map<String, String>>? tags,
    List<FinspaceKxEnvironmentCustomDnsConfiguration>? customDnsConfiguration,
    FinspaceKxEnvironmentTransitGatewayConfiguration?
    transitGatewayConfiguration,
    super.lifecycle,
    super.dependsOn,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           if (description != null) 'description': description,
           'kms_key_id': kmsKeyId,
           'name': name,
           if (region != null) 'region': region,
           if (tags != null) 'tags': tags,
           if (customDnsConfiguration != null)
             'custom_dns_configuration': TfArg.literal([
               for (final e in customDnsConfiguration) e.encode(),
             ]),
           if (transitGatewayConfiguration != null)
             'transit_gateway_configuration': TfArg.literal(
               transitGatewayConfiguration.encode(),
             ),
         },
       );

  @override
  Set<String> get sensitiveFields => _awsFinspaceKxEnvironmentSensitive;

  /// Reference to `name` attribute.
  TfRef<String> get nameRef => TfRef.attribute<String>(this, 'name');

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `arn` attribute.
  TfRef<String> get arn => TfRef.attribute<String>(this, 'arn');

  /// Reference to `availability_zones` attribute.
  TfRef<List<String>> get availabilityZones =>
      TfRef.attribute<List<String>>(this, 'availability_zones');

  /// Reference to `created_timestamp` attribute.
  TfRef<String> get createdTimestamp =>
      TfRef.attribute<String>(this, 'created_timestamp');

  /// Reference to `infrastructure_account_id` attribute.
  TfRef<String> get infrastructureAccountId =>
      TfRef.attribute<String>(this, 'infrastructure_account_id');

  /// Reference to `last_modified_timestamp` attribute.
  TfRef<String> get lastModifiedTimestamp =>
      TfRef.attribute<String>(this, 'last_modified_timestamp');

  /// Reference to `status` attribute.
  TfRef<String> get status => TfRef.attribute<String>(this, 'status');
}
