// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:meta/meta.dart';
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `aws_vpclattice_resource_configuration`.
const Set<String> _awsVpclatticeResourceConfigurationSensitive = <String>{};

/// Vpclattice Resource Configuration enum for `protocol`.
extension type const VpclatticeResourceConfigurationProtocol._(TfArg<String> _)
    implements TfArg<String> {
  VpclatticeResourceConfigurationProtocol.variable(String name)
    : this._(TfArg.variable(name));
  VpclatticeResourceConfigurationProtocol.expression(String template)
    : this._(TfArg.expression(template));
  const VpclatticeResourceConfigurationProtocol.arg(TfArg<String> arg)
    : this._(arg);

  static const tcp = VpclatticeResourceConfigurationProtocol._(
    TfArgLiteral('TCP'),
  );

  static const List<VpclatticeResourceConfigurationProtocol> values = [tcp];
}

/// Exactly one of `resource_configuration_group_id`, `resource_gateway_identifier` on `aws_vpclattice_resource_configuration`: the provider rejects
/// none and more than one, so each variant sets one of them.
///
/// Pick one with a dot shorthand: `.resourceConfigurationGroupId(...)`.
sealed class VpclatticeResourceConfigurationParent {
  const VpclatticeResourceConfigurationParent();

  /// Sets `resource_configuration_group_id`.
  const factory VpclatticeResourceConfigurationParent.resourceConfigurationGroupId(
    TfArg<String> resourceConfigurationGroupId,
  ) = VpclatticeResourceConfigurationParentResourceConfigurationGroupId;

  /// Sets `resource_gateway_identifier`.
  const factory VpclatticeResourceConfigurationParent.resourceGatewayIdentifier(
    TfArg<String> resourceGatewayIdentifier,
  ) = VpclatticeResourceConfigurationParentResourceGatewayIdentifier;

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

/// The [VpclatticeResourceConfigurationParent.resourceConfigurationGroupId] choice: sets `resource_configuration_group_id`.
final class VpclatticeResourceConfigurationParentResourceConfigurationGroupId
    extends VpclatticeResourceConfigurationParent {
  const VpclatticeResourceConfigurationParentResourceConfigurationGroupId(
    this.resourceConfigurationGroupId,
  );

  final TfArg<String> resourceConfigurationGroupId;

  @internal
  @override
  String get blockKey => 'resource_configuration_group_id';

  @internal
  @override
  Map<String, Object?> encode() => {
    'resource_configuration_group_id': resourceConfigurationGroupId.toTfJson(),
  };

  @internal
  @override
  Map<String, TfArg<Object?>> get argMap => {
    'resource_configuration_group_id': resourceConfigurationGroupId,
  };
}

/// The [VpclatticeResourceConfigurationParent.resourceGatewayIdentifier] choice: sets `resource_gateway_identifier`.
final class VpclatticeResourceConfigurationParentResourceGatewayIdentifier
    extends VpclatticeResourceConfigurationParent {
  const VpclatticeResourceConfigurationParentResourceGatewayIdentifier(
    this.resourceGatewayIdentifier,
  );

  final TfArg<String> resourceGatewayIdentifier;

  @internal
  @override
  String get blockKey => 'resource_gateway_identifier';

  @internal
  @override
  Map<String, Object?> encode() => {
    'resource_gateway_identifier': resourceGatewayIdentifier.toTfJson(),
  };

  @internal
  @override
  Map<String, TfArg<Object?>> get argMap => {
    'resource_gateway_identifier': resourceGatewayIdentifier,
  };
}

/// Exactly one of `arn_resource`, `dns_resource`, `ip_resource` on the `resource_configuration_definition` block of `aws_vpclattice_resource_configuration`: the provider rejects
/// none and more than one, so each variant sets one of them.
///
/// Pick one with a dot shorthand: `.arnResource(...)`.
sealed class VpclatticeResourceConfigurationDefinition {
  const VpclatticeResourceConfigurationDefinition();

  /// Sets `arn_resource`.
  const factory VpclatticeResourceConfigurationDefinition.arnResource(
    List<VpclatticeResourceConfigurationArnResource> arnResource,
  ) = VpclatticeResourceConfigurationDefinitionArnResource;

  /// Sets `dns_resource`.
  const factory VpclatticeResourceConfigurationDefinition.dnsResource(
    List<VpclatticeResourceConfigurationDnsResource> dnsResource,
  ) = VpclatticeResourceConfigurationDefinitionDnsResource;

  /// Sets `ip_resource`.
  const factory VpclatticeResourceConfigurationDefinition.ipResource(
    List<VpclatticeResourceConfigurationIpResource> ipResource,
  ) = VpclatticeResourceConfigurationDefinitionIpResource;

  /// The Terraform argument this choice sets.
  @internal
  String get blockKey;

  @internal
  Map<String, Object?> encode();
}

/// The [VpclatticeResourceConfigurationDefinition.arnResource] choice: sets `arn_resource`.
final class VpclatticeResourceConfigurationDefinitionArnResource
    extends VpclatticeResourceConfigurationDefinition {
  const VpclatticeResourceConfigurationDefinitionArnResource(this.arnResource);

  final List<VpclatticeResourceConfigurationArnResource> arnResource;

  @internal
  @override
  String get blockKey => 'arn_resource';

  @internal
  @override
  Map<String, Object?> encode() => {
    'arn_resource': [for (final e in arnResource) e.encode()],
  };
}

/// The [VpclatticeResourceConfigurationDefinition.dnsResource] choice: sets `dns_resource`.
final class VpclatticeResourceConfigurationDefinitionDnsResource
    extends VpclatticeResourceConfigurationDefinition {
  const VpclatticeResourceConfigurationDefinitionDnsResource(this.dnsResource);

  final List<VpclatticeResourceConfigurationDnsResource> dnsResource;

  @internal
  @override
  String get blockKey => 'dns_resource';

  @internal
  @override
  Map<String, Object?> encode() => {
    'dns_resource': [for (final e in dnsResource) e.encode()],
  };
}

/// The [VpclatticeResourceConfigurationDefinition.ipResource] choice: sets `ip_resource`.
final class VpclatticeResourceConfigurationDefinitionIpResource
    extends VpclatticeResourceConfigurationDefinition {
  const VpclatticeResourceConfigurationDefinitionIpResource(this.ipResource);

  final List<VpclatticeResourceConfigurationIpResource> ipResource;

  @internal
  @override
  String get blockKey => 'ip_resource';

  @internal
  @override
  Map<String, Object?> encode() => {
    'ip_resource': [for (final e in ipResource) e.encode()],
  };
}

/// Typed helper for the `resource_configuration_definition.arn_resource` block of
/// `aws_vpclattice_resource_configuration` (derived from provider schema).
@immutable
final class VpclatticeResourceConfigurationArnResource {
  const VpclatticeResourceConfigurationArnResource({required this.arn});

  final TfArg<String> arn;

  @internal
  Map<String, Object?> encode() => {'arn': arn.toTfJson()};
}

/// Typed helper for the `resource_configuration_definition.dns_resource` block of
/// `aws_vpclattice_resource_configuration` (derived from provider schema).
@immutable
final class VpclatticeResourceConfigurationDnsResource {
  const VpclatticeResourceConfigurationDnsResource({
    required this.domainName,
    required this.ipAddressType,
  });

  final TfArg<String> domainName;

  final VpclatticeResourceConfigurationIpAddressType ipAddressType;

  @internal
  Map<String, Object?> encode() => {
    'domain_name': domainName.toTfJson(),
    'ip_address_type': ipAddressType.toTfJson(),
  };
}

/// `ip_address_type` — derived from the provider schema description.
extension type const VpclatticeResourceConfigurationIpAddressType._(
  TfArg<String> _
) implements TfArg<String> {
  VpclatticeResourceConfigurationIpAddressType.variable(String name)
    : this._(TfArg.variable(name));
  VpclatticeResourceConfigurationIpAddressType.expression(String template)
    : this._(TfArg.expression(template));
  const VpclatticeResourceConfigurationIpAddressType.arg(TfArg<String> arg)
    : this._(arg);

  static const ipv4 = VpclatticeResourceConfigurationIpAddressType._(
    TfArgLiteral('IPV4'),
  );
  static const ipv6 = VpclatticeResourceConfigurationIpAddressType._(
    TfArgLiteral('IPV6'),
  );

  static const List<VpclatticeResourceConfigurationIpAddressType> values = [
    ipv4,
    ipv6,
  ];
}

/// Typed helper for the `resource_configuration_definition.ip_resource` block of
/// `aws_vpclattice_resource_configuration` (derived from provider schema).
@immutable
final class VpclatticeResourceConfigurationIpResource {
  const VpclatticeResourceConfigurationIpResource({required this.ipAddress});

  final TfArg<String> ipAddress;

  @internal
  Map<String, Object?> encode() => {'ip_address': ipAddress.toTfJson()};
}

/// Factory wrapper for `aws_vpclattice_resource_configuration`.
final class AwsVpclatticeResourceConfiguration extends Resource {
  static const String tfType = 'aws_vpclattice_resource_configuration';

  AwsVpclatticeResourceConfiguration(
    super.localName, {
    TfArg<bool>? allowAssociationToShareableServiceNetwork,
    TfArg<String>? customDomainName,
    TfArg<String>? domainVerificationId,
    required TfArg<String> name,
    TfArg<List<String>>? portRanges,
    VpclatticeResourceConfigurationProtocol? protocol,
    TfArg<String>? region,
    required VpclatticeResourceConfigurationParent parent,
    TfArg<Map<String, String>>? tags,
    TfArg<String>? type,
    List<VpclatticeResourceConfigurationDefinition>?
    resourceConfigurationDefinition,
    super.lifecycle,
    super.dependsOn,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           'allow_association_to_shareable_service_network':
               ?allowAssociationToShareableServiceNetwork,
           'custom_domain_name': ?customDomainName,
           'domain_verification_id': ?domainVerificationId,
           'name': name,
           'port_ranges': ?portRanges,
           'protocol': ?protocol,
           'region': ?region,
           ...parent.argMap,
           'tags': ?tags,
           'type': ?type,
           if (resourceConfigurationDefinition != null)
             'resource_configuration_definition': TfArg.literal([
               for (final e in resourceConfigurationDefinition) e.encode(),
             ]),
         },
       );

  @override
  Set<String> get sensitiveFields =>
      _awsVpclatticeResourceConfigurationSensitive;

  /// A reference to this resource, for arguments typed
  /// `RefTo<AwsVpclatticeResourceConfiguration>`.
  RefTo<AwsVpclatticeResourceConfiguration> get ref => RefTo.of(this);

  /// Reference to `name` attribute.
  TfRef<String> get name => TfRef.attribute<String>(this, 'name');

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

  /// Reference to `allow_association_to_shareable_service_network` attribute.
  TfRef<bool> get allowAssociationToShareableServiceNetwork =>
      TfRef.attribute<bool>(
        this,
        'allow_association_to_shareable_service_network',
      );

  /// Reference to `custom_domain_name` attribute.
  TfRef<String> get customDomainName =>
      TfRef.attribute<String>(this, 'custom_domain_name');

  /// Reference to `domain_verification_id` attribute.
  TfRef<String> get domainVerificationId =>
      TfRef.attribute<String>(this, 'domain_verification_id');

  /// Reference to `port_ranges` attribute.
  TfRef<List<String>> get portRanges =>
      TfRef.attribute<List<String>>(this, 'port_ranges');

  /// Reference to `protocol` attribute.
  TfRef<String> get protocol => TfRef.attribute<String>(this, 'protocol');

  /// Reference to `region` attribute.
  TfRef<String> get region => TfRef.attribute<String>(this, 'region');

  /// Reference to `resource_configuration_group_id` attribute.
  TfRef<String> get resourceConfigurationGroupId =>
      TfRef.attribute<String>(this, 'resource_configuration_group_id');

  /// Reference to `resource_gateway_identifier` attribute.
  TfRef<String> get resourceGatewayIdentifier =>
      TfRef.attribute<String>(this, 'resource_gateway_identifier');

  /// Reference to `tags` attribute.
  TfRef<Map<String, String>> get tags =>
      TfRef.attribute<Map<String, String>>(this, 'tags');

  /// Reference to `type` attribute.
  TfRef<String> get type => TfRef.attribute<String>(this, 'type');
}
