// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `aws_cloudwatch_query_definition`.
const Set<String> _awsCloudwatchQueryDefinitionSensitive = <String>{};

/// Factory wrapper for `aws_cloudwatch_query_definition`.
final class AwsCloudwatchQueryDefinition extends Resource {
  static const String tfType = 'aws_cloudwatch_query_definition';

  AwsCloudwatchQueryDefinition({
    required super.localName,
    TfArg<List<String>>? logGroupNames,
    required TfArg<String> name,
    required TfArg<String> queryString,
    TfArg<String>? region,
    super.lifecycle,
    super.dependsOn,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           'log_group_names': ?logGroupNames,
           'name': name,
           'query_string': queryString,
           'region': ?region,
         },
       );

  @override
  Set<String> get sensitiveFields => _awsCloudwatchQueryDefinitionSensitive;

  /// A reference to this resource, for arguments typed
  /// `RefTo<AwsCloudwatchQueryDefinition>`.
  RefTo<AwsCloudwatchQueryDefinition> get ref => RefTo.of(this);

  /// Reference to `name` attribute.
  TfRef<String> get name => TfRef.attribute<String>(this, 'name');

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `arn` attribute.
  TfRef<String> get arn => TfRef.attribute<String>(this, 'arn');

  /// Reference to `query_definition_id` attribute.
  TfRef<String> get queryDefinitionId =>
      TfRef.attribute<String>(this, 'query_definition_id');

  /// Reference to `log_group_names` attribute.
  TfRef<List<String>> get logGroupNames =>
      TfRef.attribute<List<String>>(this, 'log_group_names');

  /// Reference to `query_string` attribute.
  TfRef<String> get queryString =>
      TfRef.attribute<String>(this, 'query_string');

  /// Reference to `region` attribute.
  TfRef<String> get region => TfRef.attribute<String>(this, 'region');
}
