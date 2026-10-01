// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:meta/meta.dart';
import 'package:terradart_core/terradart_core.dart';

import '../kms/aws_kms_key.dart' show AwsKmsKey;

/// Sensitive field paths for `aws_mailmanager_ingress_point`.
const Set<String> _awsMailmanagerIngressPointSensitive = <String>{
  'ingress_point_configuration.smtp_password_wo',
};

/// Mailmanager Ingress Point Status To enum for `status_to_update`.
enum MailmanagerIngressPointStatusToUpdate implements TerraformEnum {
  active('ACTIVE'),
  closed('CLOSED');

  const MailmanagerIngressPointStatusToUpdate(this.terraformValue);
  @override
  final String terraformValue;
}

/// Mailmanager Ingress Point Tls enum for `tls_policy`.
enum MailmanagerIngressPointTlsPolicy implements TerraformEnum {
  required('REQUIRED'),
  optional('OPTIONAL'),
  fips('FIPS');

  const MailmanagerIngressPointTlsPolicy(this.terraformValue);
  @override
  final String terraformValue;
}

/// Mailmanager Ingress Point enum for `type`.
enum MailmanagerIngressPointType implements TerraformEnum {
  open('OPEN'),
  auth('AUTH'),
  mtls('MTLS');

  const MailmanagerIngressPointType(this.terraformValue);
  @override
  final String terraformValue;
}

/// Typed helper for the `ingress_point_configuration` block of
/// `aws_mailmanager_ingress_point` (derived from provider schema).
@immutable
final class MailmanagerIngressPointConfiguration {
  const MailmanagerIngressPointConfiguration({
    this.secretArn,
    this.smtpPasswordWo,
    this.smtpPasswordWoVersion,
    this.tlsAuthConfiguration,
  });

  final TfArg<String>? secretArn;

  final TfArg<String>? smtpPasswordWo;

  final TfArg<num>? smtpPasswordWoVersion;

  final List<MailmanagerIngressPointTlsAuthConfiguration>? tlsAuthConfiguration;

  Map<String, Object?> encode() => {
    'secret_arn': ?secretArn?.toTfJson(),
    'smtp_password_wo': ?smtpPasswordWo?.toTfJson(),
    'smtp_password_wo_version': ?smtpPasswordWoVersion?.toTfJson(),
    if (tlsAuthConfiguration != null)
      'tls_auth_configuration': [
        for (final e in tlsAuthConfiguration!) e.encode(),
      ],
  };
}

/// Typed helper for the `ingress_point_configuration.tls_auth_configuration` block of
/// `aws_mailmanager_ingress_point` (derived from provider schema).
@immutable
final class MailmanagerIngressPointTlsAuthConfiguration {
  const MailmanagerIngressPointTlsAuthConfiguration({this.trustStore});

  final List<MailmanagerIngressPointTrustStore>? trustStore;

  Map<String, Object?> encode() => {
    if (trustStore != null)
      'trust_store': [for (final e in trustStore!) e.encode()],
  };
}

/// Typed helper for the `ingress_point_configuration.tls_auth_configuration.trust_store` block of
/// `aws_mailmanager_ingress_point` (derived from provider schema).
@immutable
final class MailmanagerIngressPointTrustStore {
  const MailmanagerIngressPointTrustStore({
    required this.caContent,
    this.crlContent,
    this.kmsKeyArn,
  });

  final TfArg<String> caContent;

  final TfArg<String>? crlContent;

  final RefTo<AwsKmsKey>? kmsKeyArn;

  Map<String, Object?> encode() => {
    'ca_content': caContent.toTfJson(),
    'crl_content': ?crlContent?.toTfJson(),
    'kms_key_arn': ?kmsKeyArn?.encodeAs('arn').toTfJson(),
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

  final List<MailmanagerIngressPointPrivateNetworkConfiguration>?
  privateNetworkConfiguration;

  final List<MailmanagerIngressPointPublicNetworkConfiguration>?
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
final class MailmanagerIngressPointPrivateNetworkConfiguration {
  const MailmanagerIngressPointPrivateNetworkConfiguration({
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
final class MailmanagerIngressPointPublicNetworkConfiguration {
  const MailmanagerIngressPointPublicNetworkConfiguration({
    required this.ipType,
  });

  final TfArg<MailmanagerIngressPointIpType> ipType;

  Map<String, Object?> encode() => {'ip_type': ipType.toTfJson()};
}

/// `ip_type` — derived from the provider schema description.
enum MailmanagerIngressPointIpType implements TerraformEnum {
  ipv4('IPV4'),
  dualStack('DUAL_STACK');

  const MailmanagerIngressPointIpType(this.terraformValue);
  @override
  final String terraformValue;
}

/// Factory wrapper for `aws_mailmanager_ingress_point`.
final class AwsMailmanagerIngressPoint extends Resource {
  static const String tfType = 'aws_mailmanager_ingress_point';

  AwsMailmanagerIngressPoint({
    required super.localName,
    required TfArg<String> name,
    TfArg<String>? region,
    required TfArg<String> ruleSetId,
    TfArg<MailmanagerIngressPointStatusToUpdate>? statusToUpdate,
    TfArg<Map<String, String>>? tags,
    TfArg<MailmanagerIngressPointTlsPolicy>? tlsPolicy,
    required TfArg<String> trafficPolicyId,
    required TfArg<MailmanagerIngressPointType> type,
    List<MailmanagerIngressPointConfiguration>? ingressPointConfiguration,
    List<MailmanagerIngressPointNetworkConfiguration>? networkConfiguration,
    super.lifecycle,
    super.dependsOn,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           'name': name,
           'region': ?region,
           'rule_set_id': ruleSetId,
           'status_to_update': ?statusToUpdate,
           'tags': ?tags,
           'tls_policy': ?tlsPolicy,
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

  /// A reference to this resource, for arguments typed
  /// `RefTo<AwsMailmanagerIngressPoint>`.
  RefTo<AwsMailmanagerIngressPoint> get ref => RefTo.of(this);

  /// Reference to `name` attribute.
  TfRef<String> get name => TfRef.attribute<String>(this, 'name');

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

  /// Reference to `region` attribute.
  TfRef<String> get region => TfRef.attribute<String>(this, 'region');

  /// Reference to `rule_set_id` attribute.
  TfRef<String> get ruleSetId => TfRef.attribute<String>(this, 'rule_set_id');

  /// Reference to `status_to_update` attribute.
  TfRef<String> get statusToUpdate =>
      TfRef.attribute<String>(this, 'status_to_update');

  /// Reference to `tags` attribute.
  TfRef<Map<String, String>> get tags =>
      TfRef.attribute<Map<String, String>>(this, 'tags');

  /// Reference to `tls_policy` attribute.
  TfRef<String> get tlsPolicy => TfRef.attribute<String>(this, 'tls_policy');

  /// Reference to `traffic_policy_id` attribute.
  TfRef<String> get trafficPolicyId =>
      TfRef.attribute<String>(this, 'traffic_policy_id');

  /// Reference to `type` attribute.
  TfRef<String> get type => TfRef.attribute<String>(this, 'type');
}
