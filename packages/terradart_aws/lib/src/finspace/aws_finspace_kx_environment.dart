// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:meta/meta.dart';
import 'package:terradart_core/terradart_core.dart';

import '../kms/aws_kms_key.dart' show AwsKmsKey;

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

  @internal
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

  final List<FinspaceKxEnvironmentAttachmentNetworkAclConfiguration>?
  attachmentNetworkAclConfiguration;

  @internal
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
final class FinspaceKxEnvironmentAttachmentNetworkAclConfiguration {
  const FinspaceKxEnvironmentAttachmentNetworkAclConfiguration({
    required this.cidrBlock,
    required this.protocol,
    required this.ruleAction,
    required this.ruleNumber,
    this.icmpTypeCode,
    this.portRange,
  });

  final TfArg<String> cidrBlock;

  final TfArg<String> protocol;

  final FinspaceKxEnvironmentRuleAction ruleAction;

  final TfArg<num> ruleNumber;

  final FinspaceKxEnvironmentIcmpTypeCode? icmpTypeCode;

  final FinspaceKxEnvironmentPortRange? portRange;

  @internal
  Map<String, Object?> encode() => {
    'cidr_block': cidrBlock.toTfJson(),
    'protocol': protocol.toTfJson(),
    'rule_action': ruleAction.toTfJson(),
    'rule_number': ruleNumber.toTfJson(),
    'icmp_type_code': ?icmpTypeCode?.encode(),
    'port_range': ?portRange?.encode(),
  };
}

/// `rule_action` — derived from the provider schema description.
extension type const FinspaceKxEnvironmentRuleAction._(TfArg<String> _)
    implements TfArg<String> {
  FinspaceKxEnvironmentRuleAction.variable(String name)
    : this._(TfArg.variable(name));
  FinspaceKxEnvironmentRuleAction.expression(String template)
    : this._(TfArg.expression(template));
  const FinspaceKxEnvironmentRuleAction.arg(TfArg<String> arg) : this._(arg);

  static const allow = FinspaceKxEnvironmentRuleAction._(TfArgLiteral('allow'));
  static const deny = FinspaceKxEnvironmentRuleAction._(TfArgLiteral('deny'));

  static const List<FinspaceKxEnvironmentRuleAction> values = [allow, deny];
}

/// Typed helper for the `transit_gateway_configuration.attachment_network_acl_configuration.icmp_type_code` block of
/// `aws_finspace_kx_environment` (derived from provider schema).
@immutable
final class FinspaceKxEnvironmentIcmpTypeCode {
  const FinspaceKxEnvironmentIcmpTypeCode({
    required this.code,
    required this.type,
  });

  final TfArg<num> code;

  final TfArg<num> type;

  @internal
  Map<String, Object?> encode() => {
    'code': code.toTfJson(),
    'type': type.toTfJson(),
  };
}

/// Typed helper for the `transit_gateway_configuration.attachment_network_acl_configuration.port_range` block of
/// `aws_finspace_kx_environment` (derived from provider schema).
@immutable
final class FinspaceKxEnvironmentPortRange {
  const FinspaceKxEnvironmentPortRange({required this.from, required this.to});

  final TfArg<num> from;

  final TfArg<num> to;

  @internal
  Map<String, Object?> encode() => {
    'from': from.toTfJson(),
    'to': to.toTfJson(),
  };
}

/// Factory wrapper for `aws_finspace_kx_environment`.
final class AwsFinspaceKxEnvironment extends Resource {
  static const String tfType = 'aws_finspace_kx_environment';

  AwsFinspaceKxEnvironment(
    super.localName, {
    TfArg<String>? description,
    required RefTo<AwsKmsKey> kmsKeyId,
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
           'description': ?description,
           'kms_key_id': kmsKeyId.encodeAs('arn'),
           'name': name,
           'region': ?region,
           'tags': ?tags,
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

  /// A reference to this resource, for arguments typed
  /// `RefTo<AwsFinspaceKxEnvironment>`.
  RefTo<AwsFinspaceKxEnvironment> get ref => RefTo.of(this);

  /// Reference to `name` attribute.
  TfRef<String> get name => TfRef.attribute<String>(this, 'name');

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

  /// Reference to `description` attribute.
  TfRef<String> get description => TfRef.attribute<String>(this, 'description');

  /// Reference to `kms_key_id` attribute.
  TfRef<String> get kmsKeyId => TfRef.attribute<String>(this, 'kms_key_id');

  /// Reference to `region` attribute.
  TfRef<String> get region => TfRef.attribute<String>(this, 'region');

  /// Reference to `tags` attribute.
  TfRef<Map<String, String>> get tags =>
      TfRef.attribute<Map<String, String>>(this, 'tags');
}
