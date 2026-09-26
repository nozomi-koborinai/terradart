// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `aws_athena_prepared_statement`.
const Set<String> _awsAthenaPreparedStatementSensitive = <String>{};

/// Factory wrapper for `aws_athena_prepared_statement`.
final class AwsAthenaPreparedStatement extends Resource {
  static const String tfType = 'aws_athena_prepared_statement';

  AwsAthenaPreparedStatement({
    required super.localName,
    TfArg<String>? description,
    required TfArg<String> name,
    required TfArg<String> queryStatement,
    TfArg<String>? region,
    required TfArg<String> workgroup,
    super.lifecycle,
    super.dependsOn,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           if (description != null) 'description': description,
           'name': name,
           'query_statement': queryStatement,
           if (region != null) 'region': region,
           'workgroup': workgroup,
         },
       );

  @override
  Set<String> get sensitiveFields => _awsAthenaPreparedStatementSensitive;

  /// Reference to `name` attribute.
  TfRef<String> get nameRef => TfRef.attribute<String>(this, 'name');

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');
}
