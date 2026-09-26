// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:meta/meta.dart';
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `aws_vpclattice_resource_configuration`.
const Set<String> _awsVpclatticeResourceConfigurationSensitive = <String>{};

/// Typed helper for the `resource_configuration_definition` block of
/// `aws_vpclattice_resource_configuration` (derived from provider schema).
@immutable
final class VpclatticeResourceConfigurationResourceConfigurationDefinition {
  const VpclatticeResourceConfigurationResourceConfigurationDefinition({
    this.arnResource,
    this.dnsResource,
    this.ipResource,
  });

  final List<
    VpclatticeResourceConfigurationResourceConfigurationDefinitionArnResource
  >?
  arnResource;

  final List<
    VpclatticeResourceConfigurationResourceConfigurationDefinitionDnsResource
  >?
  dnsResource;

  final List<
    VpclatticeResourceConfigurationResourceConfigurationDefinitionIpResource
  >?
  ipResource;

  Map<String, Object?> encode() => {
    if (arnResource != null)
      'arn_resource': [for (final e in arnResource!) e.encode()],
    if (dnsResource != null)
      'dns_resource': [for (final e in dnsResource!) e.encode()],
    if (ipResource != null)
      'ip_resource': [for (final e in ipResource!) e.encode()],
  };
}

/// Typed helper for the `resource_configuration_definition.arn_resource` block of
/// `aws_vpclattice_resource_configuration` (derived from provider schema).
@immutable
final class VpclatticeResourceConfigurationResourceConfigurationDefinitionArnResource {
  const VpclatticeResourceConfigurationResourceConfigurationDefinitionArnResource({
    required this.arn,
  });

  final TfArg<String> arn;

  Map<String, Object?> encode() => {'arn': arn.toTfJson()};
}

/// Typed helper for the `resource_configuration_definition.dns_resource` block of
/// `aws_vpclattice_resource_configuration` (derived from provider schema).
@immutable
final class VpclatticeResourceConfigurationResourceConfigurationDefinitionDnsResource {
  const VpclatticeResourceConfigurationResourceConfigurationDefinitionDnsResource({
    required this.domainName,
    required this.ipAddressType,
  });

  final TfArg<String> domainName;

  final TfArg<String> ipAddressType;

  Map<String, Object?> encode() => {
    'domain_name': domainName.toTfJson(),
    'ip_address_type': ipAddressType.toTfJson(),
  };
}

/// Typed helper for the `resource_configuration_definition.ip_resource` block of
/// `aws_vpclattice_resource_configuration` (derived from provider schema).
@immutable
final class VpclatticeResourceConfigurationResourceConfigurationDefinitionIpResource {
  const VpclatticeResourceConfigurationResourceConfigurationDefinitionIpResource({
    required this.ipAddress,
  });

  final TfArg<String> ipAddress;

  Map<String, Object?> encode() => {'ip_address': ipAddress.toTfJson()};
}

/// Factory wrapper for `aws_vpclattice_resource_configuration`.
final class AwsVpclatticeResourceConfiguration extends Resource {
  static const String tfType = 'aws_vpclattice_resource_configuration';

  AwsVpclatticeResourceConfiguration({
    required super.localName,
    TfArg<bool>? allowAssociationToShareableServiceNetwork,
    TfArg<String>? customDomainName,
    TfArg<String>? domainVerificationId,
    required TfArg<String> name,
    TfArg<List<String>>? portRanges,
    TfArg<String>? protocol,
    TfArg<String>? region,
    TfArg<String>? resourceConfigurationGroupId,
    TfArg<String>? resourceGatewayIdentifier,
    TfArg<Map<String, String>>? tags,
    TfArg<String>? type,
    List<VpclatticeResourceConfigurationResourceConfigurationDefinition>?
    resourceConfigurationDefinition,
    super.lifecycle,
    super.dependsOn,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           if (allowAssociationToShareableServiceNetwork != null)
             'allow_association_to_shareable_service_network':
                 allowAssociationToShareableServiceNetwork,
           if (customDomainName != null) 'custom_domain_name': customDomainName,
           if (domainVerificationId != null)
             'domain_verification_id': domainVerificationId,
           'name': name,
           if (portRanges != null) 'port_ranges': portRanges,
           if (protocol != null) 'protocol': protocol,
           if (region != null) 'region': region,
           if (resourceConfigurationGroupId != null)
             'resource_configuration_group_id': resourceConfigurationGroupId,
           if (resourceGatewayIdentifier != null)
             'resource_gateway_identifier': resourceGatewayIdentifier,
           if (tags != null) 'tags': tags,
           if (type != null) 'type': type,
           if (resourceConfigurationDefinition != null)
             'resource_configuration_definition': TfArg.literal([
               for (final e in resourceConfigurationDefinition) e.encode(),
             ]),
         },
       );

  @override
  Set<String> get sensitiveFields =>
      _awsVpclatticeResourceConfigurationSensitive;

  /// Reference to `name` attribute.
  TfRef<String> get nameRef => TfRef.attribute<String>(this, 'name');

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `arn` attribute.
  TfRef<String> get arn => TfRef.attribute<String>(this, 'arn');

  /// Reference to `domain_verification_arn` attribute.
  TfRef<String> get domainVerificationArn =>
      TfRef.attribute<String>(this, 'domain_verification_arn');

  /// Reference to `domain_verification_status` attribute.
  TfRef<String> get domainVerificationStatus =>
      TfRef.attribute<String>(this, 'domain_verification_status');

  /// Reference to `tags_all` attribute.
  TfRef<Map<String, String>> get tagsAll =>
      TfRef.attribute<Map<String, String>>(this, 'tags_all');
}
