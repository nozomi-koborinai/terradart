// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `aws_elastic_beanstalk_solution_stack`.
const Set<String> _awsElasticBeanstalkSolutionStackSensitive = <String>{};

/// Factory wrapper for `aws_elastic_beanstalk_solution_stack`.
final class DataAwsElasticBeanstalkSolutionStack extends Data {
  static const String tfType = 'aws_elastic_beanstalk_solution_stack';

  DataAwsElasticBeanstalkSolutionStack({
    required super.localName,
    TfArg<bool>? mostRecent,
    required TfArg<String> nameRegex,
    TfArg<String>? region,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           'most_recent': ?mostRecent,
           'name_regex': nameRegex,
           'region': ?region,
         },
       );

  @override
  Set<String> get sensitiveFields => _awsElasticBeanstalkSolutionStackSensitive;

  /// Reference to `name` attribute.
  TfRef<String> get name => TfRef.attribute<String>(this, 'name');

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `most_recent` attribute.
  TfRef<bool> get mostRecent => TfRef.attribute<bool>(this, 'most_recent');

  /// Reference to `name_regex` attribute.
  TfRef<String> get nameRegex => TfRef.attribute<String>(this, 'name_regex');

  /// Reference to `region` attribute.
  TfRef<String> get region => TfRef.attribute<String>(this, 'region');
}
