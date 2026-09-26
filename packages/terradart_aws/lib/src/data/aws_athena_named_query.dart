// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `aws_athena_named_query`.
const Set<String> _awsAthenaNamedQuerySensitive = <String>{};

/// Factory wrapper for `aws_athena_named_query`.
final class DataAwsAthenaNamedQuery extends Data {
  static const String tfType = 'aws_athena_named_query';

  DataAwsAthenaNamedQuery({
    required super.localName,
    required TfArg<String> name,
    TfArg<String>? region,
    TfArg<String>? workgroup,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           'name': name,
           if (region != null) 'region': region,
           if (workgroup != null) 'workgroup': workgroup,
         },
       );

  @override
  Set<String> get sensitiveFields => _awsAthenaNamedQuerySensitive;

  /// Reference to `name` attribute.
  TfRef<String> get nameRef => TfRef.attribute<String>(this, 'name');

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `database` attribute.
  TfRef<String> get database => TfRef.attribute<String>(this, 'database');

  /// Reference to `description` attribute.
  TfRef<String> get description => TfRef.attribute<String>(this, 'description');

  /// Reference to `querystring` attribute.
  TfRef<String> get querystring => TfRef.attribute<String>(this, 'querystring');
}
