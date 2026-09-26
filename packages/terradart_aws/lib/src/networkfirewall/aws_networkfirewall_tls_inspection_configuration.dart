// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:meta/meta.dart';
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `aws_networkfirewall_tls_inspection_configuration`.
const Set<String> _awsNetworkfirewallTlsInspectionConfigurationSensitive =
    <String>{};

/// Typed helper for the `tls_inspection_configuration` block of
/// `aws_networkfirewall_tls_inspection_configuration` (derived from provider schema).
@immutable
final class NetworkfirewallTlsInspectionConfigurationTlsInspectionConfiguration {
  const NetworkfirewallTlsInspectionConfigurationTlsInspectionConfiguration({
    this.serverCertificateConfiguration,
  });

  final List<
    NetworkfirewallTlsInspectionConfigurationTlsInspectionConfigurationServerCertificateConfiguration
  >?
  serverCertificateConfiguration;

  Map<String, Object?> encode() => {
    if (serverCertificateConfiguration != null)
      'server_certificate_configuration': [
        for (final e in serverCertificateConfiguration!) e.encode(),
      ],
  };
}

/// Typed helper for the `tls_inspection_configuration.server_certificate_configuration` block of
/// `aws_networkfirewall_tls_inspection_configuration` (derived from provider schema).
@immutable
final class NetworkfirewallTlsInspectionConfigurationTlsInspectionConfigurationServerCertificateConfiguration {
  const NetworkfirewallTlsInspectionConfigurationTlsInspectionConfigurationServerCertificateConfiguration({
    this.certificateAuthorityArn,
    this.checkCertificateRevocationStatus,
    this.scope,
    this.serverCertificate,
  });

  final TfArg<String>? certificateAuthorityArn;

  final List<
    NetworkfirewallTlsInspectionConfigurationTlsInspectionConfigurationServerCertificateConfigurationCheckCertificateRevocationStatus
  >?
  checkCertificateRevocationStatus;

  final List<
    NetworkfirewallTlsInspectionConfigurationTlsInspectionConfigurationServerCertificateConfigurationScope
  >?
  scope;

  final List<
    NetworkfirewallTlsInspectionConfigurationTlsInspectionConfigurationServerCertificateConfigurationServerCertificate
  >?
  serverCertificate;

  Map<String, Object?> encode() => {
    if (certificateAuthorityArn != null)
      'certificate_authority_arn': certificateAuthorityArn!.toTfJson(),
    if (checkCertificateRevocationStatus != null)
      'check_certificate_revocation_status': [
        for (final e in checkCertificateRevocationStatus!) e.encode(),
      ],
    if (scope != null) 'scope': [for (final e in scope!) e.encode()],
    if (serverCertificate != null)
      'server_certificate': [for (final e in serverCertificate!) e.encode()],
  };
}

/// Typed helper for the `tls_inspection_configuration.server_certificate_configuration.check_certificate_revocation_status` block of
/// `aws_networkfirewall_tls_inspection_configuration` (derived from provider schema).
@immutable
final class NetworkfirewallTlsInspectionConfigurationTlsInspectionConfigurationServerCertificateConfigurationCheckCertificateRevocationStatus {
  const NetworkfirewallTlsInspectionConfigurationTlsInspectionConfigurationServerCertificateConfigurationCheckCertificateRevocationStatus({
    this.revokedStatusAction,
    this.unknownStatusAction,
  });

  final TfArg<String>? revokedStatusAction;

  final TfArg<String>? unknownStatusAction;

  Map<String, Object?> encode() => {
    if (revokedStatusAction != null)
      'revoked_status_action': revokedStatusAction!.toTfJson(),
    if (unknownStatusAction != null)
      'unknown_status_action': unknownStatusAction!.toTfJson(),
  };
}

/// Typed helper for the `tls_inspection_configuration.server_certificate_configuration.scope` block of
/// `aws_networkfirewall_tls_inspection_configuration` (derived from provider schema).
@immutable
final class NetworkfirewallTlsInspectionConfigurationTlsInspectionConfigurationServerCertificateConfigurationScope {
  const NetworkfirewallTlsInspectionConfigurationTlsInspectionConfigurationServerCertificateConfigurationScope({
    required this.protocols,
    this.destination,
    this.destinationPorts,
    this.source,
    this.sourcePorts,
  });

  final TfArg<List<Object?>> protocols;

  final List<
    NetworkfirewallTlsInspectionConfigurationTlsInspectionConfigurationServerCertificateConfigurationScopeDestination
  >?
  destination;

  final List<
    NetworkfirewallTlsInspectionConfigurationTlsInspectionConfigurationServerCertificateConfigurationScopeDestinationPorts
  >?
  destinationPorts;

  final List<
    NetworkfirewallTlsInspectionConfigurationTlsInspectionConfigurationServerCertificateConfigurationScopeSource
  >?
  source;

  final List<
    NetworkfirewallTlsInspectionConfigurationTlsInspectionConfigurationServerCertificateConfigurationScopeSourcePorts
  >?
  sourcePorts;

  Map<String, Object?> encode() => {
    'protocols': protocols.toTfJson(),
    if (destination != null)
      'destination': [for (final e in destination!) e.encode()],
    if (destinationPorts != null)
      'destination_ports': [for (final e in destinationPorts!) e.encode()],
    if (source != null) 'source': [for (final e in source!) e.encode()],
    if (sourcePorts != null)
      'source_ports': [for (final e in sourcePorts!) e.encode()],
  };
}

/// Typed helper for the `tls_inspection_configuration.server_certificate_configuration.scope.destination` block of
/// `aws_networkfirewall_tls_inspection_configuration` (derived from provider schema).
@immutable
final class NetworkfirewallTlsInspectionConfigurationTlsInspectionConfigurationServerCertificateConfigurationScopeDestination {
  const NetworkfirewallTlsInspectionConfigurationTlsInspectionConfigurationServerCertificateConfigurationScopeDestination({
    required this.addressDefinition,
  });

  final TfArg<String> addressDefinition;

  Map<String, Object?> encode() => {
    'address_definition': addressDefinition.toTfJson(),
  };
}

/// Typed helper for the `tls_inspection_configuration.server_certificate_configuration.scope.destination_ports` block of
/// `aws_networkfirewall_tls_inspection_configuration` (derived from provider schema).
@immutable
final class NetworkfirewallTlsInspectionConfigurationTlsInspectionConfigurationServerCertificateConfigurationScopeDestinationPorts {
  const NetworkfirewallTlsInspectionConfigurationTlsInspectionConfigurationServerCertificateConfigurationScopeDestinationPorts({
    required this.fromPort,
    required this.toPort,
  });

  final TfArg<num> fromPort;

  final TfArg<num> toPort;

  Map<String, Object?> encode() => {
    'from_port': fromPort.toTfJson(),
    'to_port': toPort.toTfJson(),
  };
}

/// Typed helper for the `tls_inspection_configuration.server_certificate_configuration.scope.source` block of
/// `aws_networkfirewall_tls_inspection_configuration` (derived from provider schema).
@immutable
final class NetworkfirewallTlsInspectionConfigurationTlsInspectionConfigurationServerCertificateConfigurationScopeSource {
  const NetworkfirewallTlsInspectionConfigurationTlsInspectionConfigurationServerCertificateConfigurationScopeSource({
    required this.addressDefinition,
  });

  final TfArg<String> addressDefinition;

  Map<String, Object?> encode() => {
    'address_definition': addressDefinition.toTfJson(),
  };
}

/// Typed helper for the `tls_inspection_configuration.server_certificate_configuration.scope.source_ports` block of
/// `aws_networkfirewall_tls_inspection_configuration` (derived from provider schema).
@immutable
final class NetworkfirewallTlsInspectionConfigurationTlsInspectionConfigurationServerCertificateConfigurationScopeSourcePorts {
  const NetworkfirewallTlsInspectionConfigurationTlsInspectionConfigurationServerCertificateConfigurationScopeSourcePorts({
    required this.fromPort,
    required this.toPort,
  });

  final TfArg<num> fromPort;

  final TfArg<num> toPort;

  Map<String, Object?> encode() => {
    'from_port': fromPort.toTfJson(),
    'to_port': toPort.toTfJson(),
  };
}

/// Typed helper for the `tls_inspection_configuration.server_certificate_configuration.server_certificate` block of
/// `aws_networkfirewall_tls_inspection_configuration` (derived from provider schema).
@immutable
final class NetworkfirewallTlsInspectionConfigurationTlsInspectionConfigurationServerCertificateConfigurationServerCertificate {
  const NetworkfirewallTlsInspectionConfigurationTlsInspectionConfigurationServerCertificateConfigurationServerCertificate({
    this.resourceArn,
  });

  final TfArg<String>? resourceArn;

  Map<String, Object?> encode() => {
    if (resourceArn != null) 'resource_arn': resourceArn!.toTfJson(),
  };
}

/// Factory wrapper for `aws_networkfirewall_tls_inspection_configuration`.
final class AwsNetworkfirewallTlsInspectionConfiguration extends Resource {
  static const String tfType =
      'aws_networkfirewall_tls_inspection_configuration';

  AwsNetworkfirewallTlsInspectionConfiguration({
    required super.localName,
    TfArg<String>? description,
    TfArg<List<Map<String, Object?>>>? encryptionConfiguration,
    required TfArg<String> name,
    TfArg<String>? region,
    TfArg<Map<String, String>>? tags,
    List<NetworkfirewallTlsInspectionConfigurationTlsInspectionConfiguration>?
    tlsInspectionConfiguration,
    super.lifecycle,
    super.dependsOn,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           if (description != null) 'description': description,
           if (encryptionConfiguration != null)
             'encryption_configuration': encryptionConfiguration,
           'name': name,
           if (region != null) 'region': region,
           if (tags != null) 'tags': tags,
           if (tlsInspectionConfiguration != null)
             'tls_inspection_configuration': TfArg.literal([
               for (final e in tlsInspectionConfiguration) e.encode(),
             ]),
         },
       );

  @override
  Set<String> get sensitiveFields =>
      _awsNetworkfirewallTlsInspectionConfigurationSensitive;

  /// Reference to `name` attribute.
  TfRef<String> get nameRef => TfRef.attribute<String>(this, 'name');

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `arn` attribute.
  TfRef<String> get arn => TfRef.attribute<String>(this, 'arn');

  /// Reference to `certificate_authority` attribute.
  TfRef<List<Map<String, Object?>>> get certificateAuthority =>
      TfRef.attribute<List<Map<String, Object?>>>(
        this,
        'certificate_authority',
      );

  /// Reference to `certificates` attribute.
  TfRef<List<Map<String, Object?>>> get certificates =>
      TfRef.attribute<List<Map<String, Object?>>>(this, 'certificates');

  /// Reference to `number_of_associations` attribute.
  TfRef<num> get numberOfAssociations =>
      TfRef.attribute<num>(this, 'number_of_associations');

  /// Reference to `tags_all` attribute.
  TfRef<Map<String, String>> get tagsAll =>
      TfRef.attribute<Map<String, String>>(this, 'tags_all');

  /// Reference to `tls_inspection_configuration_id` attribute.
  TfRef<String> get tlsInspectionConfigurationId =>
      TfRef.attribute<String>(this, 'tls_inspection_configuration_id');

  /// Reference to `update_token` attribute.
  TfRef<String> get updateToken =>
      TfRef.attribute<String>(this, 'update_token');
}
