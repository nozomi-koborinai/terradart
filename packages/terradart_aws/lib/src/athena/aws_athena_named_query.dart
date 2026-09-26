// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `aws_athena_named_query`.
const Set<String> _awsAthenaNamedQuerySensitive = <String>{};

/// Factory wrapper for `aws_athena_named_query`.
final class AwsAthenaNamedQuery extends Resource {
  static const String tfType = 'aws_athena_named_query';

  AwsAthenaNamedQuery({
    required super.localName,
    required TfArg<String> database,
    TfArg<String>? description,
    required TfArg<String> name,
    required TfArg<String> query,
    TfArg<String>? region,
    TfArg<String>? workgroup,
    super.lifecycle,
    super.dependsOn,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           'database': database,
           if (description != null) 'description': description,
           'name': name,
           'query': query,
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
}
