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
           'description': ?description,
           'name': name,
           'query_statement': queryStatement,
           'region': ?region,
           'workgroup': workgroup,
         },
       );

  @override
  Set<String> get sensitiveFields => _awsAthenaPreparedStatementSensitive;

  /// A reference to this resource, for arguments typed
  /// `RefTo<AwsAthenaPreparedStatement>`.
  RefTo<AwsAthenaPreparedStatement> get ref => RefTo.of(this);

  /// Reference to `name` attribute.
  TfRef<String> get name => TfRef.attribute<String>(this, 'name');

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `description` attribute.
  TfRef<String> get description => TfRef.attribute<String>(this, 'description');

  /// Reference to `query_statement` attribute.
  TfRef<String> get queryStatement =>
      TfRef.attribute<String>(this, 'query_statement');

  /// Reference to `region` attribute.
  TfRef<String> get region => TfRef.attribute<String>(this, 'region');

  /// Reference to `workgroup` attribute.
  TfRef<String> get workgroup => TfRef.attribute<String>(this, 'workgroup');
}
