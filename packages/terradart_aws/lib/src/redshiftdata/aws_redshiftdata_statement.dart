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

  AwsRedshiftdataStatement({
    required super.localName,
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
           if (clusterIdentifier != null)
             'cluster_identifier': clusterIdentifier,
           'database': database,
           if (dbUser != null) 'db_user': dbUser,
           if (region != null) 'region': region,
           if (secretArn != null) 'secret_arn': secretArn,
           'sql': sql,
           if (statementName != null) 'statement_name': statementName,
           if (withEvent != null) 'with_event': withEvent,
           if (workgroupName != null) 'workgroup_name': workgroupName,
           if (parameters != null)
             'parameters': TfArg.literal([
               for (final e in parameters) e.encode(),
             ]),
         },
       );

  @override
  Set<String> get sensitiveFields => _awsRedshiftdataStatementSensitive;

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');
}
