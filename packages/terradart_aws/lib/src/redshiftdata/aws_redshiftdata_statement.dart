// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:meta/meta.dart';
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `aws_redshiftdata_statement`.
const Set<String> _awsRedshiftdataStatementSensitive = <String>{};

/// Typed helper for the `parameters` block of
/// `aws_redshiftdata_statement` (derived from provider schema).
@immutable
final class RedshiftdataStatementParameters {
  const RedshiftdataStatementParameters({
    required this.name,
    required this.value,
  });

  final TfArg<String> name;

  final TfArg<String> value;

  Map<String, Object?> encode() => {
    'name': name.toTfJson(),
    'value': value.toTfJson(),
  };
}

/// Factory wrapper for `aws_redshiftdata_statement`.
final class AwsRedshiftdataStatement extends Resource {
  static const String tfType = 'aws_redshiftdata_statement';

  AwsRedshiftdataStatement(
    super.localName, {
    TfArg<String>? clusterIdentifier,
    required TfArg<String> database,
    TfArg<String>? dbUser,
    TfArg<String>? region,
    TfArg<String>? secretArn,
    required TfArg<String> sql,
    TfArg<String>? statementName,
    TfArg<bool>? withEvent,
    TfArg<String>? workgroupName,
    List<RedshiftdataStatementParameters>? parameters,
    super.lifecycle,
    super.dependsOn,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           'cluster_identifier': ?clusterIdentifier,
           'database': database,
           'db_user': ?dbUser,
           'region': ?region,
           'secret_arn': ?secretArn,
           'sql': sql,
           'statement_name': ?statementName,
           'with_event': ?withEvent,
           'workgroup_name': ?workgroupName,
           if (parameters != null)
             'parameters': TfArg.literal([
               for (final e in parameters) e.encode(),
             ]),
         },
       );

  @override
  Set<String> get sensitiveFields => _awsRedshiftdataStatementSensitive;

  /// A reference to this resource, for arguments typed
  /// `RefTo<AwsRedshiftdataStatement>`.
  RefTo<AwsRedshiftdataStatement> get ref => RefTo.of(this);

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `cluster_identifier` attribute.
  TfRef<String> get clusterIdentifier =>
      TfRef.attribute<String>(this, 'cluster_identifier');

  /// Reference to `database` attribute.
  TfRef<String> get database => TfRef.attribute<String>(this, 'database');

  /// Reference to `db_user` attribute.
  TfRef<String> get dbUser => TfRef.attribute<String>(this, 'db_user');

  /// Reference to `region` attribute.
  TfRef<String> get region => TfRef.attribute<String>(this, 'region');

  /// Reference to `secret_arn` attribute.
  TfRef<String> get secretArn => TfRef.attribute<String>(this, 'secret_arn');

  /// Reference to `sql` attribute.
  TfRef<String> get sql => TfRef.attribute<String>(this, 'sql');

  /// Reference to `statement_name` attribute.
  TfRef<String> get statementName =>
      TfRef.attribute<String>(this, 'statement_name');

  /// Reference to `with_event` attribute.
  TfRef<bool> get withEvent => TfRef.attribute<bool>(this, 'with_event');

  /// Reference to `workgroup_name` attribute.
  TfRef<String> get workgroupName =>
      TfRef.attribute<String>(this, 'workgroup_name');
}
