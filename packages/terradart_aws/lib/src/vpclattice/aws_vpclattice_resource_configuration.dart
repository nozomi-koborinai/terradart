// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:meta/meta.dart';
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `aws_vpclattice_resource_configuration`.
const Set<String> _awsVpclatticeResourceConfigurationSensitive = <String>{};

/// Vpclattice Resource Configuration enum for `protocol`.
enum VpclatticeResourceConfigurationProtocol implements TerraformEnum {
  tcp('TCP');

  const VpclatticeResourceConfigurationProtocol(this.terraformValue);
  @override
  final String terraformValue;
}

/// Exactly one of `resource_configuration_group_id`, `resource_gateway_identifier` on `aws_vpclattice_resource_configuration`: the provider rejects
/// none and more than one, so each variant sets one of them.
sealed class VpclatticeResourceConfigurationResourceConfigurationGroupIdOrResourceGatewayIdentifier {
  const VpclatticeResourceConfigurationResourceConfigurationGroupIdOrResourceGatewayIdentifier();

  /// The Terraform argument this choice sets.
  String get blockKey;

  Map<String, Object?> encode();

  /// The resource arguments behind [encode], as the caller's
  /// [TfArg]s.
  Map<String, TfArg<Object?>> get argMap;
}

/// Sets `resource_configuration_group_id` (one of the [VpclatticeResourceConfigurationResourceConfigurationGroupIdOrResourceGatewayIdentifier] choices).
final class VpclatticeResourceConfigurationResourceConfigurationGroupIdOption
    extends
        VpclatticeResourceConfigurationResourceConfigurationGroupIdOrResourceGatewayIdentifier {
  const VpclatticeResourceConfigurationResourceConfigurationGroupIdOption({
    required this.resourceConfigurationGroupId,
  });

  final TfArg<String> resourceConfigurationGroupId;

  @override
  String get blockKey => 'resource_configuration_group_id';

  @override
  Map<String, Object?> encode() => {
    'resource_configuration_group_id': resourceConfigurationGroupId.toTfJson(),
  };

  @override
  Map<String, TfArg<Object?>> get argMap => {
    'resource_configuration_group_id': resourceConfigurationGroupId,
  };
}

/// Sets `resource_gateway_identifier` (one of the [VpclatticeResourceConfigurationResourceConfigurationGroupIdOrResourceGatewayIdentifier] choices).
final class VpclatticeResourceConfigurationResourceGatewayIdentifierOption
    extends
        VpclatticeResourceConfigurationResourceConfigurationGroupIdOrResourceGatewayIdentifier {
  const VpclatticeResourceConfigurationResourceGatewayIdentifierOption({
    required this.resourceGatewayIdentifier,
  });

  final TfArg<String> resourceGatewayIdentifier;

  @override
  String get blockKey => 'resource_gateway_identifier';

  @override
  Map<String, Object?> encode() => {
    'resource_gateway_identifier': resourceGatewayIdentifier.toTfJson(),
  };

  @override
  Map<String, TfArg<Object?>> get argMap => {
    'resource_gateway_identifier': resourceGatewayIdentifier,
  };
}

/// Typed helper for the `resource_configuration_definition` block of
/// `aws_vpclattice_resource_configuration` (derived from provider schema).
@immutable
final class VpclatticeResourceConfigurationResourceConfigurationDefinition {
  const VpclatticeResourceConfigurationResourceConfigurationDefinition({
    required this.arnResourceOrDnsResourceOrIpResource,
  });

  final VpclatticeResourceConfigurationResourceConfigurationDefinitionArnResourceOrDnsResourceOrIpResource
  arnResourceOrDnsResourceOrIpResource;

  Map<String, Object?> encode() => {
    ...arnResourceOrDnsResourceOrIpResource.encode(),
  };
}

/// Exactly one of `arn_resource`, `dns_resource`, `ip_resource` on the `resource_configuration_definition` block of `aws_vpclattice_resource_configuration`: the provider rejects
/// none and more than one, so each variant sets one of them.
sealed class VpclatticeResourceConfigurationResourceConfigurationDefinitionArnResourceOrDnsResourceOrIpResource {
  const VpclatticeResourceConfigurationResourceConfigurationDefinitionArnResourceOrDnsResourceOrIpResource();

  /// The Terraform argument this choice sets.
  String get blockKey;

  Map<String, Object?> encode();
}

/// Sets `arn_resource` (one of the [VpclatticeResourceConfigurationResourceConfigurationDefinitionArnResourceOrDnsResourceOrIpResource] choices).
final class VpclatticeResourceConfigurationResourceConfigurationDefinitionArnResourceOption
    extends
        VpclatticeResourceConfigurationResourceConfigurationDefinitionArnResourceOrDnsResourceOrIpResource {
  const VpclatticeResourceConfigurationResourceConfigurationDefinitionArnResourceOption({
    required this.arnResource,
  });

  final List<
    VpclatticeResourceConfigurationResourceConfigurationDefinitionArnResource
  >
  arnResource;

  @override
  String get blockKey => 'arn_resource';

  @override
  Map<String, Object?> encode() => {
    'arn_resource': [for (final e in arnResource) e.encode()],
  };
}

/// Sets `dns_resource` (one of the [VpclatticeResourceConfigurationResourceConfigurationDefinitionArnResourceOrDnsResourceOrIpResource] choices).
final class VpclatticeResourceConfigurationResourceConfigurationDefinitionDnsResourceOption
    extends
        VpclatticeResourceConfigurationResourceConfigurationDefinitionArnResourceOrDnsResourceOrIpResource {
  const VpclatticeResourceConfigurationResourceConfigurationDefinitionDnsResourceOption({
    required this.dnsResource,
  });

  final List<
    VpclatticeResourceConfigurationResourceConfigurationDefinitionDnsResource
  >
  dnsResource;

  @override
  String get blockKey => 'dns_resource';

  @override
  Map<String, Object?> encode() => {
    'dns_resource': [for (final e in dnsResource) e.encode()],
  };
}

/// Sets `ip_resource` (one of the [VpclatticeResourceConfigurationResourceConfigurationDefinitionArnResourceOrDnsResourceOrIpResource] choices).
final class VpclatticeResourceConfigurationResourceConfigurationDefinitionIpResourceOption
    extends
        VpclatticeResourceConfigurationResourceConfigurationDefinitionArnResourceOrDnsResourceOrIpResource {
  const VpclatticeResourceConfigurationResourceConfigurationDefinitionIpResourceOption({
    required this.ipResource,
  });

  final List<
    VpclatticeResourceConfigurationResourceConfigurationDefinitionIpResource
  >
  ipResource;

  @override
  String get blockKey => 'ip_resource';

  @override
  Map<String, Object?> encode() => {
    'ip_resource': [for (final e in ipResource) e.encode()],
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

  final TfArg<
    VpclatticeResourceConfigurationResourceConfigurationDefinitionDnsResourceIpAddressType
  >
  ipAddressType;

  Map<String, Object?> encode() => {
    'domain_name': domainName.toTfJson(),
    'ip_address_type': ipAddressType.toTfJson(),
  };
}

/// `ip_address_type` — derived from the provider schema description.
enum VpclatticeResourceConfigurationResourceConfigurationDefinitionDnsResourceIpAddressType
    implements TerraformEnum {
  ipv4('IPV4'),
  ipv6('IPV6');

  const VpclatticeResourceConfigurationResourceConfigurationDefinitionDnsResourceIpAddressType(
    this.terraformValue,
  );
  @override
  final String terraformValue;
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
    TfArg<VpclatticeResourceConfigurationProtocol>? protocol,
    TfArg<String>? region,
    required VpclatticeResourceConfigurationResourceConfigurationGroupIdOrResourceGatewayIdentifier
    resourceConfigurationGroupIdOrResourceGatewayIdentifier,
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
           ...resourceConfigurationGroupIdOrResourceGatewayIdentifier.argMap,
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
