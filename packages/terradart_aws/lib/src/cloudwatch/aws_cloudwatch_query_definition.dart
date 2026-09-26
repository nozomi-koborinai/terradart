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
           if (logGroupNames != null) 'log_group_names': logGroupNames,
           'name': name,
           'query_string': queryString,
           if (region != null) 'region': region,
         },
       );

  @override
  Set<String> get sensitiveFields => _awsCloudwatchQueryDefinitionSensitive;

  /// Reference to `name` attribute.
  TfRef<String> get nameRef => TfRef.attribute<String>(this, 'name');

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `arn` attribute.
  TfRef<String> get arn => TfRef.attribute<String>(this, 'arn');

  /// Reference to `query_definition_id` attribute.
  TfRef<String> get queryDefinitionId =>
      TfRef.attribute<String>(this, 'query_definition_id');
}
