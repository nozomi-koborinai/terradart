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
final class NetworkfirewallTlsInspectionConfiguration {
  const NetworkfirewallTlsInspectionConfiguration({
    this.serverCertificateConfiguration,
  });

  final List<
    NetworkfirewallTlsInspectionConfigurationServerCertificateConfiguration
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
final class NetworkfirewallTlsInspectionConfigurationServerCertificateConfiguration {
  const NetworkfirewallTlsInspectionConfigurationServerCertificateConfiguration({
    this.certificateAuthorityArn,
    this.checkCertificateRevocationStatus,
    this.scope,
    this.serverCertificate,
  });

  final TfArg<String>? certificateAuthorityArn;

  final List<
    NetworkfirewallTlsInspectionConfigurationCheckCertificateRevocationStatus
  >?
  checkCertificateRevocationStatus;

  final List<NetworkfirewallTlsInspectionConfigurationScope>? scope;

  final List<NetworkfirewallTlsInspectionConfigurationServerCertificate>?
  serverCertificate;

  Map<String, Object?> encode() => {
    'certificate_authority_arn': ?certificateAuthorityArn?.toTfJson(),
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
final class NetworkfirewallTlsInspectionConfigurationCheckCertificateRevocationStatus {
  const NetworkfirewallTlsInspectionConfigurationCheckCertificateRevocationStatus({
    this.revokedStatusAction,
    this.unknownStatusAction,
  });

  final TfArg<NetworkfirewallTlsInspectionConfigurationRevokedStatusAction>?
  revokedStatusAction;

  final TfArg<NetworkfirewallTlsInspectionConfigurationUnknownStatusAction>?
  unknownStatusAction;

  Map<String, Object?> encode() => {
    'revoked_status_action': ?revokedStatusAction?.toTfJson(),
    'unknown_status_action': ?unknownStatusAction?.toTfJson(),
  };
}

/// `revoked_status_action` — derived from the provider schema description.
enum NetworkfirewallTlsInspectionConfigurationRevokedStatusAction
    implements TerraformEnum {
  pass('PASS'),
  drop('DROP'),
  reject('REJECT');

  const NetworkfirewallTlsInspectionConfigurationRevokedStatusAction(
    this.terraformValue,
  );
  @override
  final String terraformValue;
}

/// `unknown_status_action` — derived from the provider schema description.
enum NetworkfirewallTlsInspectionConfigurationUnknownStatusAction
    implements TerraformEnum {
  pass('PASS'),
  drop('DROP'),
  reject('REJECT');

  const NetworkfirewallTlsInspectionConfigurationUnknownStatusAction(
    this.terraformValue,
  );
  @override
  final String terraformValue;
}

/// Typed helper for the `tls_inspection_configuration.server_certificate_configuration.scope` block of
/// `aws_networkfirewall_tls_inspection_configuration` (derived from provider schema).
@immutable
final class NetworkfirewallTlsInspectionConfigurationScope {
  const NetworkfirewallTlsInspectionConfigurationScope({
    required this.protocols,
    this.destination,
    this.destinationPorts,
    this.source,
    this.sourcePorts,
  });

  final TfArg<List<num>> protocols;

  final List<NetworkfirewallTlsInspectionConfigurationDestination>? destination;

  final List<NetworkfirewallTlsInspectionConfigurationDestinationPorts>?
  destinationPorts;

  final List<NetworkfirewallTlsInspectionConfigurationSource>? source;

  final List<NetworkfirewallTlsInspectionConfigurationSourcePorts>? sourcePorts;

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
final class NetworkfirewallTlsInspectionConfigurationDestination {
  const NetworkfirewallTlsInspectionConfigurationDestination({
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
final class NetworkfirewallTlsInspectionConfigurationDestinationPorts {
  const NetworkfirewallTlsInspectionConfigurationDestinationPorts({
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
final class NetworkfirewallTlsInspectionConfigurationSource {
  const NetworkfirewallTlsInspectionConfigurationSource({
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
final class NetworkfirewallTlsInspectionConfigurationSourcePorts {
  const NetworkfirewallTlsInspectionConfigurationSourcePorts({
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
final class NetworkfirewallTlsInspectionConfigurationServerCertificate {
  const NetworkfirewallTlsInspectionConfigurationServerCertificate({
    this.resourceArn,
  });

  final TfArg<String>? resourceArn;

  Map<String, Object?> encode() => {'resource_arn': ?resourceArn?.toTfJson()};
}

/// Factory wrapper for `aws_networkfirewall_tls_inspection_configuration`.
final class AwsNetworkfirewallTlsInspectionConfiguration extends Resource {
  static const String tfType =
      'aws_networkfirewall_tls_inspection_configuration';

  AwsNetworkfirewallTlsInspectionConfiguration(
    super.localName, {
    TfArg<String>? description,
    TfArg<List<Map<String, Object?>>>? encryptionConfiguration,
    required TfArg<String> name,
    TfArg<String>? region,
    TfArg<Map<String, String>>? tags,
    List<NetworkfirewallTlsInspectionConfiguration>? tlsInspectionConfiguration,
    super.lifecycle,
    super.dependsOn,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           'description': ?description,
           'encryption_configuration': ?encryptionConfiguration,
           'name': name,
           'region': ?region,
           'tags': ?tags,
           if (tlsInspectionConfiguration != null)
             'tls_inspection_configuration': TfArg.literal([
               for (final e in tlsInspectionConfiguration) e.encode(),
             ]),
         },
       );

  @override
  Set<String> get sensitiveFields =>
      _awsNetworkfirewallTlsInspectionConfigurationSensitive;

  /// A reference to this resource, for arguments typed
  /// `RefTo<AwsNetworkfirewallTlsInspectionConfiguration>`.
  RefTo<AwsNetworkfirewallTlsInspectionConfiguration> get ref => RefTo.of(this);

  /// Reference to `name` attribute.
  TfRef<String> get name => TfRef.attribute<String>(this, 'name');

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

  /// Reference to `description` attribute.
  TfRef<String> get description => TfRef.attribute<String>(this, 'description');

  /// Reference to `encryption_configuration` attribute.
  TfRef<List<Map<String, Object?>>> get encryptionConfiguration =>
      TfRef.attribute<List<Map<String, Object?>>>(
        this,
        'encryption_configuration',
      );

  /// Reference to `region` attribute.
  TfRef<String> get region => TfRef.attribute<String>(this, 'region');

  /// Reference to `tags` attribute.
  TfRef<Map<String, String>> get tags =>
      TfRef.attribute<Map<String, String>>(this, 'tags');
}
