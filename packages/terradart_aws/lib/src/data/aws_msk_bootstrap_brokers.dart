// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `aws_msk_bootstrap_brokers`.
const Set<String> _awsMskBootstrapBrokersSensitive = <String>{};

/// Factory wrapper for `aws_msk_bootstrap_brokers`.
final class DataAwsMskBootstrapBrokers extends Data {
  static const String tfType = 'aws_msk_bootstrap_brokers';

  DataAwsMskBootstrapBrokers({
    required super.localName,
    required TfArg<String> clusterArn,
    TfArg<String>? region,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           'cluster_arn': clusterArn,
           if (region != null) 'region': region,
         },
       );

  @override
  Set<String> get sensitiveFields => _awsMskBootstrapBrokersSensitive;

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `bootstrap_brokers` attribute.
  TfRef<String> get bootstrapBrokers =>
      TfRef.attribute<String>(this, 'bootstrap_brokers');

  /// Reference to `bootstrap_brokers_ipv6` attribute.
  TfRef<String> get bootstrapBrokersIpv6 =>
      TfRef.attribute<String>(this, 'bootstrap_brokers_ipv6');

  /// Reference to `bootstrap_brokers_public_sasl_iam` attribute.
  TfRef<String> get bootstrapBrokersPublicSaslIam =>
      TfRef.attribute<String>(this, 'bootstrap_brokers_public_sasl_iam');

  /// Reference to `bootstrap_brokers_public_sasl_scram` attribute.
  TfRef<String> get bootstrapBrokersPublicSaslScram =>
      TfRef.attribute<String>(this, 'bootstrap_brokers_public_sasl_scram');

  /// Reference to `bootstrap_brokers_public_tls` attribute.
  TfRef<String> get bootstrapBrokersPublicTls =>
      TfRef.attribute<String>(this, 'bootstrap_brokers_public_tls');

  /// Reference to `bootstrap_brokers_sasl_iam` attribute.
  TfRef<String> get bootstrapBrokersSaslIam =>
      TfRef.attribute<String>(this, 'bootstrap_brokers_sasl_iam');

  /// Reference to `bootstrap_brokers_sasl_iam_ipv6` attribute.
  TfRef<String> get bootstrapBrokersSaslIamIpv6 =>
      TfRef.attribute<String>(this, 'bootstrap_brokers_sasl_iam_ipv6');

  /// Reference to `bootstrap_brokers_sasl_scram` attribute.
  TfRef<String> get bootstrapBrokersSaslScram =>
      TfRef.attribute<String>(this, 'bootstrap_brokers_sasl_scram');

  /// Reference to `bootstrap_brokers_sasl_scram_ipv6` attribute.
  TfRef<String> get bootstrapBrokersSaslScramIpv6 =>
      TfRef.attribute<String>(this, 'bootstrap_brokers_sasl_scram_ipv6');

  /// Reference to `bootstrap_brokers_tls` attribute.
  TfRef<String> get bootstrapBrokersTls =>
      TfRef.attribute<String>(this, 'bootstrap_brokers_tls');

  /// Reference to `bootstrap_brokers_tls_ipv6` attribute.
  TfRef<String> get bootstrapBrokersTlsIpv6 =>
      TfRef.attribute<String>(this, 'bootstrap_brokers_tls_ipv6');

  /// Reference to `bootstrap_brokers_vpc_connectivity_sasl_iam` attribute.
  TfRef<String> get bootstrapBrokersVpcConnectivitySaslIam =>
      TfRef.attribute<String>(
        this,
        'bootstrap_brokers_vpc_connectivity_sasl_iam',
      );

  /// Reference to `bootstrap_brokers_vpc_connectivity_sasl_scram` attribute.
  TfRef<String> get bootstrapBrokersVpcConnectivitySaslScram =>
      TfRef.attribute<String>(
        this,
        'bootstrap_brokers_vpc_connectivity_sasl_scram',
      );

  /// Reference to `bootstrap_brokers_vpc_connectivity_tls` attribute.
  TfRef<String> get bootstrapBrokersVpcConnectivityTls =>
      TfRef.attribute<String>(this, 'bootstrap_brokers_vpc_connectivity_tls');
}
