// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:meta/meta.dart';
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `aws_datasync_location_hdfs`.
const Set<String> _awsDatasyncLocationHdfsSensitive = <String>{};

/// Typed helper for the `name_node` block of
/// `aws_datasync_location_hdfs` (derived from provider schema).
@immutable
final class DatasyncLocationHdfsNameNode {
  const DatasyncLocationHdfsNameNode({
    required this.hostname,
    required this.port,
  });

  final TfArg<String> hostname;

  final TfArg<num> port;

  Map<String, Object?> encode() => {
    'hostname': hostname.toTfJson(),
    'port': port.toTfJson(),
  };
}

/// Typed helper for the `qop_configuration` block of
/// `aws_datasync_location_hdfs` (derived from provider schema).
@immutable
final class DatasyncLocationHdfsQopConfiguration {
  const DatasyncLocationHdfsQopConfiguration({
    this.dataTransferProtection,
    this.rpcProtection,
  });

  final TfArg<String>? dataTransferProtection;

  final TfArg<String>? rpcProtection;

  Map<String, Object?> encode() => {
    if (dataTransferProtection != null)
      'data_transfer_protection': dataTransferProtection!.toTfJson(),
    if (rpcProtection != null) 'rpc_protection': rpcProtection!.toTfJson(),
  };
}

/// Factory wrapper for `aws_datasync_location_hdfs`.
final class AwsDatasyncLocationHdfs extends Resource {
  static const String tfType = 'aws_datasync_location_hdfs';

  AwsDatasyncLocationHdfs({
    required super.localName,
    required TfArg<List<String>> agentArns,
    TfArg<String>? authenticationType,
    TfArg<num>? blockSize,
    TfArg<String>? kerberosKeytab,
    TfArg<String>? kerberosKeytabBase64,
    TfArg<String>? kerberosKrb5Conf,
    TfArg<String>? kerberosKrb5ConfBase64,
    TfArg<String>? kerberosPrincipal,
    TfArg<String>? kmsKeyProviderUri,
    TfArg<String>? region,
    TfArg<num>? replicationFactor,
    TfArg<String>? simpleUser,
    TfArg<String>? subdirectory,
    TfArg<Map<String, String>>? tags,
    required List<DatasyncLocationHdfsNameNode> nameNode,
    DatasyncLocationHdfsQopConfiguration? qopConfiguration,
    super.lifecycle,
    super.dependsOn,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           'agent_arns': agentArns,
           if (authenticationType != null)
             'authentication_type': authenticationType,
           if (blockSize != null) 'block_size': blockSize,
           if (kerberosKeytab != null) 'kerberos_keytab': kerberosKeytab,
           if (kerberosKeytabBase64 != null)
             'kerberos_keytab_base64': kerberosKeytabBase64,
           if (kerberosKrb5Conf != null) 'kerberos_krb5_conf': kerberosKrb5Conf,
           if (kerberosKrb5ConfBase64 != null)
             'kerberos_krb5_conf_base64': kerberosKrb5ConfBase64,
           if (kerberosPrincipal != null)
             'kerberos_principal': kerberosPrincipal,
           if (kmsKeyProviderUri != null)
             'kms_key_provider_uri': kmsKeyProviderUri,
           if (region != null) 'region': region,
           if (replicationFactor != null)
             'replication_factor': replicationFactor,
           if (simpleUser != null) 'simple_user': simpleUser,
           if (subdirectory != null) 'subdirectory': subdirectory,
           if (tags != null) 'tags': tags,
           'name_node': TfArg.literal([for (final e in nameNode) e.encode()]),
           if (qopConfiguration != null)
             'qop_configuration': TfArg.literal(qopConfiguration.encode()),
         },
       );

  @override
  Set<String> get sensitiveFields => _awsDatasyncLocationHdfsSensitive;

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `arn` attribute.
  TfRef<String> get arn => TfRef.attribute<String>(this, 'arn');

  /// Reference to `uri` attribute.
  TfRef<String> get uri => TfRef.attribute<String>(this, 'uri');
}
