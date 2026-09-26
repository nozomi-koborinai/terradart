// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:meta/meta.dart';
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `aws_mailmanager_ingress_point`.
const Set<String> _awsMailmanagerIngressPointSensitive = <String>{
  'ingress_point_configuration.smtp_password_wo',
};

/// Typed helper for the `ingress_point_configuration` block of
/// `aws_mailmanager_ingress_point` (derived from provider schema).
@immutable
final class MailmanagerIngressPointIngressPointConfiguration {
  const MailmanagerIngressPointIngressPointConfiguration({
    this.secretArn,
    this.smtpPasswordWo,
    this.smtpPasswordWoVersion,
    this.tlsAuthConfiguration,
  });

  final TfArg<String>? secretArn;

  final TfArg<String>? smtpPasswordWo;

  final TfArg<num>? smtpPasswordWoVersion;

  final List<
    MailmanagerIngressPointIngressPointConfigurationTlsAuthConfiguration
  >?
  tlsAuthConfiguration;

  Map<String, Object?> encode() => {
    if (secretArn != null) 'secret_arn': secretArn!.toTfJson(),
    if (smtpPasswordWo != null) 'smtp_password_wo': smtpPasswordWo!.toTfJson(),
    if (smtpPasswordWoVersion != null)
      'smtp_password_wo_version': smtpPasswordWoVersion!.toTfJson(),
    if (tlsAuthConfiguration != null)
      'tls_auth_configuration': [
        for (final e in tlsAuthConfiguration!) e.encode(),
      ],
  };
}

/// Typed helper for the `ingress_point_configuration.tls_auth_configuration` block of
/// `aws_mailmanager_ingress_point` (derived from provider schema).
@immutable
final class MailmanagerIngressPointIngressPointConfigurationTlsAuthConfiguration {
  const MailmanagerIngressPointIngressPointConfigurationTlsAuthConfiguration({
    this.trustStore,
  });

  final List<
    MailmanagerIngressPointIngressPointConfigurationTlsAuthConfigurationTrustStore
  >?
  trustStore;

  Map<String, Object?> encode() => {
    if (trustStore != null)
      'trust_store': [for (final e in trustStore!) e.encode()],
  };
}

/// Typed helper for the `ingress_point_configuration.tls_auth_configuration.trust_store` block of
/// `aws_mailmanager_ingress_point` (derived from provider schema).
@immutable
final class MailmanagerIngressPointIngressPointConfigurationTlsAuthConfigurationTrustStore {
  const MailmanagerIngressPointIngressPointConfigurationTlsAuthConfigurationTrustStore({
    required this.caContent,
    this.crlContent,
    this.kmsKeyArn,
  });

  final TfArg<String> caContent;

  final TfArg<String>? crlContent;

  final TfArg<String>? kmsKeyArn;

  Map<String, Object?> encode() => {
    'ca_content': caContent.toTfJson(),
    if (crlContent != null) 'crl_content': crlContent!.toTfJson(),
    if (kmsKeyArn != null) 'kms_key_arn': kmsKeyArn!.toTfJson(),
  };
}

/// Typed helper for the `network_configuration` block of
/// `aws_mailmanager_ingress_point` (derived from provider schema).
@immutable
final class MailmanagerIngressPointNetworkConfiguration {
  const MailmanagerIngressPointNetworkConfiguration({
    this.privateNetworkConfiguration,
    this.publicNetworkConfiguration,
  });

  final List<
    MailmanagerIngressPointNetworkConfigurationPrivateNetworkConfiguration
  >?
  privateNetworkConfiguration;

  final List<
    MailmanagerIngressPointNetworkConfigurationPublicNetworkConfiguration
  >?
  publicNetworkConfiguration;

  Map<String, Object?> encode() => {
    if (privateNetworkConfiguration != null)
      'private_network_configuration': [
        for (final e in privateNetworkConfiguration!) e.encode(),
      ],
    if (publicNetworkConfiguration != null)
      'public_network_configuration': [
        for (final e in publicNetworkConfiguration!) e.encode(),
      ],
  };
}

/// Typed helper for the `network_configuration.private_network_configuration` block of
/// `aws_mailmanager_ingress_point` (derived from provider schema).
@immutable
final class MailmanagerIngressPointNetworkConfigurationPrivateNetworkConfiguration {
  const MailmanagerIngressPointNetworkConfigurationPrivateNetworkConfiguration({
    required this.vpcEndpointId,
  });

  final TfArg<String> vpcEndpointId;

  Map<String, Object?> encode() => {
    'vpc_endpoint_id': vpcEndpointId.toTfJson(),
  };
}

/// Typed helper for the `network_configuration.public_network_configuration` block of
/// `aws_mailmanager_ingress_point` (derived from provider schema).
@immutable
final class MailmanagerIngressPointNetworkConfigurationPublicNetworkConfiguration {
  const MailmanagerIngressPointNetworkConfigurationPublicNetworkConfiguration({
    required this.ipType,
  });

  final TfArg<String> ipType;

  Map<String, Object?> encode() => {'ip_type': ipType.toTfJson()};
}

/// Factory wrapper for `aws_mailmanager_ingress_point`.
final class AwsMailmanagerIngressPoint extends Resource {
  static const String tfType = 'aws_mailmanager_ingress_point';

  AwsMailmanagerIngressPoint({
    required super.localName,
    required TfArg<String> name,
    TfArg<String>? region,
    required TfArg<String> ruleSetId,
    TfArg<String>? statusToUpdate,
    TfArg<Map<String, String>>? tags,
    TfArg<String>? tlsPolicy,
    required TfArg<String> trafficPolicyId,
    required TfArg<String> type,
    List<MailmanagerIngressPointIngressPointConfiguration>?
    ingressPointConfiguration,
    List<MailmanagerIngressPointNetworkConfiguration>? networkConfiguration,
    super.lifecycle,
    super.dependsOn,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           'name': name,
           if (region != null) 'region': region,
           'rule_set_id': ruleSetId,
           if (statusToUpdate != null) 'status_to_update': statusToUpdate,
           if (tags != null) 'tags': tags,
           if (tlsPolicy != null) 'tls_policy': tlsPolicy,
           'traffic_policy_id': trafficPolicyId,
           'type': type,
           if (ingressPointConfiguration != null)
             'ingress_point_configuration': TfArg.literal([
               for (final e in ingressPointConfiguration) e.encode(),
             ]),
           if (networkConfiguration != null)
             'network_configuration': TfArg.literal([
               for (final e in networkConfiguration) e.encode(),
             ]),
         },
       );

  @override
  Set<String> get sensitiveFields => _awsMailmanagerIngressPointSensitive;

  /// Reference to `name` attribute.
  TfRef<String> get nameRef => TfRef.attribute<String>(this, 'name');

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `a_record` attribute.
  TfRef<String> get aRecord => TfRef.attribute<String>(this, 'a_record');

  /// Reference to `arn` attribute.
  TfRef<String> get arn => TfRef.attribute<String>(this, 'arn');

  /// Reference to `created_timestamp` attribute.
  TfRef<String> get createdTimestamp =>
      TfRef.attribute<String>(this, 'created_timestamp');

  /// Reference to `last_updated_timestamp` attribute.
  TfRef<String> get lastUpdatedTimestamp =>
      TfRef.attribute<String>(this, 'last_updated_timestamp');

  /// Reference to `status` attribute.
  TfRef<String> get status => TfRef.attribute<String>(this, 'status');

  /// Reference to `tags_all` attribute.
  TfRef<Map<String, String>> get tagsAll =>
      TfRef.attribute<Map<String, String>>(this, 'tags_all');
}
