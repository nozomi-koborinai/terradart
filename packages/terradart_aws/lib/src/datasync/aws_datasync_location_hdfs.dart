// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:meta/meta.dart';
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `aws_datasync_location_hdfs`.
const Set<String> _awsDatasyncLocationHdfsSensitive = <String>{};

/// Datasync Location Hdfs Authentication enum for `authentication_type`.
enum DatasyncLocationHdfsAuthenticationType implements TerraformEnum {
  simple('SIMPLE'),
  kerberos('KERBEROS');

  const DatasyncLocationHdfsAuthenticationType(this.terraformValue);
  @override
  final String terraformValue;
}

/// At most one of `kerberos_keytab`, `kerberos_keytab_base64` on `aws_datasync_location_hdfs`: the provider rejects
/// more than one, so each variant sets one of them and a
/// null choice sets none.
sealed class DatasyncLocationHdfsKerberosKeytabOrKerberosKeytabBase64 {
  const DatasyncLocationHdfsKerberosKeytabOrKerberosKeytabBase64();

  /// The Terraform argument this choice sets.
  String get blockKey;

  Map<String, Object?> encode();

  /// The resource arguments behind [encode], as the caller's
  /// [TfArg]s.
  Map<String, TfArg<Object?>> get argMap;
}

/// Sets `kerberos_keytab` (one of the [DatasyncLocationHdfsKerberosKeytabOrKerberosKeytabBase64] choices).
final class DatasyncLocationHdfsKerberosKeytabOption
    extends DatasyncLocationHdfsKerberosKeytabOrKerberosKeytabBase64 {
  const DatasyncLocationHdfsKerberosKeytabOption({
    required this.kerberosKeytab,
  });

  final TfArg<String> kerberosKeytab;

  @override
  String get blockKey => 'kerberos_keytab';

  @override
  Map<String, Object?> encode() => {
    'kerberos_keytab': kerberosKeytab.toTfJson(),
  };

  @override
  Map<String, TfArg<Object?>> get argMap => {'kerberos_keytab': kerberosKeytab};
}

/// Sets `kerberos_keytab_base64` (one of the [DatasyncLocationHdfsKerberosKeytabOrKerberosKeytabBase64] choices).
final class DatasyncLocationHdfsKerberosKeytabBase64Option
    extends DatasyncLocationHdfsKerberosKeytabOrKerberosKeytabBase64 {
  const DatasyncLocationHdfsKerberosKeytabBase64Option({
    required this.kerberosKeytabBase64,
  });

  final TfArg<String> kerberosKeytabBase64;

  @override
  String get blockKey => 'kerberos_keytab_base64';

  @override
  Map<String, Object?> encode() => {
    'kerberos_keytab_base64': kerberosKeytabBase64.toTfJson(),
  };

  @override
  Map<String, TfArg<Object?>> get argMap => {
    'kerberos_keytab_base64': kerberosKeytabBase64,
  };
}

/// At most one of `kerberos_krb5_conf`, `kerberos_krb5_conf_base64` on `aws_datasync_location_hdfs`: the provider rejects
/// more than one, so each variant sets one of them and a
/// null choice sets none.
sealed class DatasyncLocationHdfsKerberosKrb5ConfOrKerberosKrb5ConfBase64 {
  const DatasyncLocationHdfsKerberosKrb5ConfOrKerberosKrb5ConfBase64();

  /// The Terraform argument this choice sets.
  String get blockKey;

  Map<String, Object?> encode();

  /// The resource arguments behind [encode], as the caller's
  /// [TfArg]s.
  Map<String, TfArg<Object?>> get argMap;
}

/// Sets `kerberos_krb5_conf` (one of the [DatasyncLocationHdfsKerberosKrb5ConfOrKerberosKrb5ConfBase64] choices).
final class DatasyncLocationHdfsKerberosKrb5ConfOption
    extends DatasyncLocationHdfsKerberosKrb5ConfOrKerberosKrb5ConfBase64 {
  const DatasyncLocationHdfsKerberosKrb5ConfOption({
    required this.kerberosKrb5Conf,
  });

  final TfArg<String> kerberosKrb5Conf;

  @override
  String get blockKey => 'kerberos_krb5_conf';

  @override
  Map<String, Object?> encode() => {
    'kerberos_krb5_conf': kerberosKrb5Conf.toTfJson(),
  };

  @override
  Map<String, TfArg<Object?>> get argMap => {
    'kerberos_krb5_conf': kerberosKrb5Conf,
  };
}

/// Sets `kerberos_krb5_conf_base64` (one of the [DatasyncLocationHdfsKerberosKrb5ConfOrKerberosKrb5ConfBase64] choices).
final class DatasyncLocationHdfsKerberosKrb5ConfBase64Option
    extends DatasyncLocationHdfsKerberosKrb5ConfOrKerberosKrb5ConfBase64 {
  const DatasyncLocationHdfsKerberosKrb5ConfBase64Option({
    required this.kerberosKrb5ConfBase64,
  });

  final TfArg<String> kerberosKrb5ConfBase64;

  @override
  String get blockKey => 'kerberos_krb5_conf_base64';

  @override
  Map<String, Object?> encode() => {
    'kerberos_krb5_conf_base64': kerberosKrb5ConfBase64.toTfJson(),
  };

  @override
  Map<String, TfArg<Object?>> get argMap => {
    'kerberos_krb5_conf_base64': kerberosKrb5ConfBase64,
  };
}

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

  final TfArg<DatasyncLocationHdfsQopConfigurationDataTransferProtection>?
  dataTransferProtection;

  final TfArg<DatasyncLocationHdfsQopConfigurationRpcProtection>? rpcProtection;

  Map<String, Object?> encode() => {
    if (dataTransferProtection != null)
      'data_transfer_protection': dataTransferProtection!.toTfJson(),
    if (rpcProtection != null) 'rpc_protection': rpcProtection!.toTfJson(),
  };
}

/// `data_transfer_protection` — derived from the provider schema description.
enum DatasyncLocationHdfsQopConfigurationDataTransferProtection
    implements TerraformEnum {
  disabled('DISABLED'),
  authentication('AUTHENTICATION'),
  integrity('INTEGRITY'),
  privacy('PRIVACY');

  const DatasyncLocationHdfsQopConfigurationDataTransferProtection(
    this.terraformValue,
  );
  @override
  final String terraformValue;
}

/// `rpc_protection` — derived from the provider schema description.
enum DatasyncLocationHdfsQopConfigurationRpcProtection
    implements TerraformEnum {
  disabled('DISABLED'),
  authentication('AUTHENTICATION'),
  integrity('INTEGRITY'),
  privacy('PRIVACY');

  const DatasyncLocationHdfsQopConfigurationRpcProtection(this.terraformValue);
  @override
  final String terraformValue;
}

/// Factory wrapper for `aws_datasync_location_hdfs`.
final class AwsDatasyncLocationHdfs extends Resource {
  static const String tfType = 'aws_datasync_location_hdfs';

  AwsDatasyncLocationHdfs({
    required super.localName,
    required TfArg<List<String>> agentArns,
    TfArg<DatasyncLocationHdfsAuthenticationType>? authenticationType,
    TfArg<num>? blockSize,
    DatasyncLocationHdfsKerberosKeytabOrKerberosKeytabBase64?
    kerberosKeytabOrKerberosKeytabBase64,
    DatasyncLocationHdfsKerberosKrb5ConfOrKerberosKrb5ConfBase64?
    kerberosKrb5ConfOrKerberosKrb5ConfBase64,
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
           ...?kerberosKeytabOrKerberosKeytabBase64?.argMap,
           ...?kerberosKrb5ConfOrKerberosKrb5ConfBase64?.argMap,
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
