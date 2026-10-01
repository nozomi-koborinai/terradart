// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `aws_athena_named_query`.
const Set<String> _awsAthenaNamedQuerySensitive = <String>{};

/// Factory wrapper for `aws_athena_named_query`.
final class AwsAthenaNamedQuery extends Resource {
  static const String tfType = 'aws_athena_named_query';

  AwsAthenaNamedQuery(
    super.localName, {
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
           'description': ?description,
           'name': name,
           'query': query,
           'region': ?region,
           'workgroup': ?workgroup,
         },
       );

  @override
  Set<String> get sensitiveFields => _awsAthenaNamedQuerySensitive;

  /// A reference to this resource, for arguments typed
  /// `RefTo<AwsAthenaNamedQuery>`.
  RefTo<AwsAthenaNamedQuery> get ref => RefTo.of(this);

  /// Reference to `name` attribute.
  TfRef<String> get name => TfRef.attribute<String>(this, 'name');

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `database` attribute.
  TfRef<String> get database => TfRef.attribute<String>(this, 'database');

  /// Reference to `description` attribute.
  TfRef<String> get description => TfRef.attribute<String>(this, 'description');

  /// Reference to `query` attribute.
  TfRef<String> get query => TfRef.attribute<String>(this, 'query');

  /// Reference to `region` attribute.
  TfRef<String> get region => TfRef.attribute<String>(this, 'region');

  /// Reference to `workgroup` attribute.
  TfRef<String> get workgroup => TfRef.attribute<String>(this, 'workgroup');
}
