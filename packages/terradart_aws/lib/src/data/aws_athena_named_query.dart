// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';
import '../athena/aws_athena_named_query.dart';

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
         argMap: {'name': name, 'region': ?region, 'workgroup': ?workgroup},
       );

  @override
  Set<String> get sensitiveFields => _awsAthenaNamedQuerySensitive;

  /// A reference to the `aws_athena_named_query` this data source reads, for
  /// arguments typed `RefTo<AwsAthenaNamedQuery>`.
  RefTo<AwsAthenaNamedQuery> get ref =>
      RefTo.read(this); // ignore: invalid_use_of_internal_member

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

  /// Reference to `region` attribute.
  TfRef<String> get regionRef => TfRef.attribute<String>(this, 'region');

  /// Reference to `workgroup` attribute.
  TfRef<String> get workgroupRef => TfRef.attribute<String>(this, 'workgroup');
}
