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
///
/// Pick one with a dot shorthand: `.kerberosKeytab(...)`.
sealed class DatasyncLocationHdfsKerberosKeytab {
  const DatasyncLocationHdfsKerberosKeytab();

  /// Sets `kerberos_keytab`.
  const factory DatasyncLocationHdfsKerberosKeytab.kerberosKeytab(
    TfArg<String> kerberosKeytab,
  ) = DatasyncLocationHdfsKerberosKeytabChoice;

  /// Sets `kerberos_keytab_base64`.
  const factory DatasyncLocationHdfsKerberosKeytab.kerberosKeytabBase64(
    TfArg<String> kerberosKeytabBase64,
  ) = DatasyncLocationHdfsKerberosKeytabBase64;

  /// The Terraform argument this choice sets.
  String get blockKey;

  Map<String, Object?> encode();

  /// The resource arguments behind [encode], as the caller's
  /// [TfArg]s.
  Map<String, TfArg<Object?>> get argMap;
}

/// The [DatasyncLocationHdfsKerberosKeytab.kerberosKeytab] choice: sets `kerberos_keytab`.
final class DatasyncLocationHdfsKerberosKeytabChoice
    extends DatasyncLocationHdfsKerberosKeytab {
  const DatasyncLocationHdfsKerberosKeytabChoice(this.kerberosKeytab);

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

/// The [DatasyncLocationHdfsKerberosKeytab.kerberosKeytabBase64] choice: sets `kerberos_keytab_base64`.
final class DatasyncLocationHdfsKerberosKeytabBase64
    extends DatasyncLocationHdfsKerberosKeytab {
  const DatasyncLocationHdfsKerberosKeytabBase64(this.kerberosKeytabBase64);

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
///
/// Pick one with a dot shorthand: `.kerberosKrb5Conf(...)`.
sealed class DatasyncLocationHdfsKerberosKrb5Conf {
  const DatasyncLocationHdfsKerberosKrb5Conf();

  /// Sets `kerberos_krb5_conf`.
  const factory DatasyncLocationHdfsKerberosKrb5Conf.kerberosKrb5Conf(
    TfArg<String> kerberosKrb5Conf,
  ) = DatasyncLocationHdfsKerberosKrb5ConfChoice;

  /// Sets `kerberos_krb5_conf_base64`.
  const factory DatasyncLocationHdfsKerberosKrb5Conf.kerberosKrb5ConfBase64(
    TfArg<String> kerberosKrb5ConfBase64,
  ) = DatasyncLocationHdfsKerberosKrb5ConfBase64;

  /// The Terraform argument this choice sets.
  String get blockKey;

  Map<String, Object?> encode();

  /// The resource arguments behind [encode], as the caller's
  /// [TfArg]s.
  Map<String, TfArg<Object?>> get argMap;
}

/// The [DatasyncLocationHdfsKerberosKrb5Conf.kerberosKrb5Conf] choice: sets `kerberos_krb5_conf`.
final class DatasyncLocationHdfsKerberosKrb5ConfChoice
    extends DatasyncLocationHdfsKerberosKrb5Conf {
  const DatasyncLocationHdfsKerberosKrb5ConfChoice(this.kerberosKrb5Conf);

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

/// The [DatasyncLocationHdfsKerberosKrb5Conf.kerberosKrb5ConfBase64] choice: sets `kerberos_krb5_conf_base64`.
final class DatasyncLocationHdfsKerberosKrb5ConfBase64
    extends DatasyncLocationHdfsKerberosKrb5Conf {
  const DatasyncLocationHdfsKerberosKrb5ConfBase64(this.kerberosKrb5ConfBase64);

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

  final TfArg<DatasyncLocationHdfsDataTransferProtection>?
  dataTransferProtection;

  final TfArg<DatasyncLocationHdfsRpcProtection>? rpcProtection;

  Map<String, Object?> encode() => {
    'data_transfer_protection': ?dataTransferProtection?.toTfJson(),
    'rpc_protection': ?rpcProtection?.toTfJson(),
  };
}

/// `data_transfer_protection` — derived from the provider schema description.
enum DatasyncLocationHdfsDataTransferProtection implements TerraformEnum {
  disabled('DISABLED'),
  authentication('AUTHENTICATION'),
  integrity('INTEGRITY'),
  privacy('PRIVACY');

  const DatasyncLocationHdfsDataTransferProtection(this.terraformValue);
  @override
  final String terraformValue;
}

/// `rpc_protection` — derived from the provider schema description.
enum DatasyncLocationHdfsRpcProtection implements TerraformEnum {
  disabled('DISABLED'),
  authentication('AUTHENTICATION'),
  integrity('INTEGRITY'),
  privacy('PRIVACY');

  const DatasyncLocationHdfsRpcProtection(this.terraformValue);
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
    DatasyncLocationHdfsKerberosKeytab? kerberosKeytab,
    DatasyncLocationHdfsKerberosKrb5Conf? kerberosKrb5Conf,
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
           'authentication_type': ?authenticationType,
           'block_size': ?blockSize,
           ...?kerberosKeytab?.argMap,
           ...?kerberosKrb5Conf?.argMap,
           'kerberos_principal': ?kerberosPrincipal,
           'kms_key_provider_uri': ?kmsKeyProviderUri,
           'region': ?region,
           'replication_factor': ?replicationFactor,
           'simple_user': ?simpleUser,
           'subdirectory': ?subdirectory,
           'tags': ?tags,
           'name_node': TfArg.literal([for (final e in nameNode) e.encode()]),
           if (qopConfiguration != null)
             'qop_configuration': TfArg.literal(qopConfiguration.encode()),
         },
       );

  @override
  Set<String> get sensitiveFields => _awsDatasyncLocationHdfsSensitive;

  /// A reference to this resource, for arguments typed
  /// `RefTo<AwsDatasyncLocationHdfs>`.
  RefTo<AwsDatasyncLocationHdfs> get ref => RefTo.of(this);

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `arn` attribute.
  TfRef<String> get arn => TfRef.attribute<String>(this, 'arn');

  /// Reference to `uri` attribute.
  TfRef<String> get uri => TfRef.attribute<String>(this, 'uri');

  /// Reference to `agent_arns` attribute.
  TfRef<List<String>> get agentArns =>
      TfRef.attribute<List<String>>(this, 'agent_arns');

  /// Reference to `authentication_type` attribute.
  TfRef<String> get authenticationType =>
      TfRef.attribute<String>(this, 'authentication_type');

  /// Reference to `block_size` attribute.
  TfRef<num> get blockSize => TfRef.attribute<num>(this, 'block_size');

  /// Reference to `kerberos_keytab` attribute.
  TfRef<String> get kerberosKeytab =>
      TfRef.attribute<String>(this, 'kerberos_keytab');

  /// Reference to `kerberos_keytab_base64` attribute.
  TfRef<String> get kerberosKeytabBase64 =>
      TfRef.attribute<String>(this, 'kerberos_keytab_base64');

  /// Reference to `kerberos_krb5_conf` attribute.
  TfRef<String> get kerberosKrb5Conf =>
      TfRef.attribute<String>(this, 'kerberos_krb5_conf');

  /// Reference to `kerberos_krb5_conf_base64` attribute.
  TfRef<String> get kerberosKrb5ConfBase64 =>
      TfRef.attribute<String>(this, 'kerberos_krb5_conf_base64');

  /// Reference to `kerberos_principal` attribute.
  TfRef<String> get kerberosPrincipal =>
      TfRef.attribute<String>(this, 'kerberos_principal');

  /// Reference to `kms_key_provider_uri` attribute.
  TfRef<String> get kmsKeyProviderUri =>
      TfRef.attribute<String>(this, 'kms_key_provider_uri');

  /// Reference to `region` attribute.
  TfRef<String> get region => TfRef.attribute<String>(this, 'region');

  /// Reference to `replication_factor` attribute.
  TfRef<num> get replicationFactor =>
      TfRef.attribute<num>(this, 'replication_factor');

  /// Reference to `simple_user` attribute.
  TfRef<String> get simpleUser => TfRef.attribute<String>(this, 'simple_user');

  /// Reference to `subdirectory` attribute.
  TfRef<String> get subdirectory =>
      TfRef.attribute<String>(this, 'subdirectory');

  /// Reference to `tags` attribute.
  TfRef<Map<String, String>> get tags =>
      TfRef.attribute<Map<String, String>>(this, 'tags');
}
