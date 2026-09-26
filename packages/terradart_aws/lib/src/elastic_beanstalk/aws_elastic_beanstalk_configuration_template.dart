// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:meta/meta.dart';
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `aws_elastic_beanstalk_configuration_template`.
const Set<String> _awsElasticBeanstalkConfigurationTemplateSensitive =
    <String>{};

/// Typed helper for the `setting` block of
/// `aws_elastic_beanstalk_configuration_template` (derived from provider schema).
@immutable
final class ElasticBeanstalkConfigurationTemplateSetting {
  const ElasticBeanstalkConfigurationTemplateSetting({
    required this.name,
    required this.namespace,
    this.resource,
    required this.value,
  });

  final TfArg<String> name;

  final TfArg<String> namespace;

  final TfArg<String>? resource;

  final TfArg<String> value;

  Map<String, Object?> encode() => {
    'name': name.toTfJson(),
    'namespace': namespace.toTfJson(),
    if (resource != null) 'resource': resource!.toTfJson(),
    'value': value.toTfJson(),
  };
}

/// Factory wrapper for `aws_elastic_beanstalk_configuration_template`.
final class AwsElasticBeanstalkConfigurationTemplate extends Resource {
  static const String tfType = 'aws_elastic_beanstalk_configuration_template';

  AwsElasticBeanstalkConfigurationTemplate({
    required super.localName,
    required TfArg<String> application,
    TfArg<String>? description,
    TfArg<String>? environmentId,
    required TfArg<String> name,
    TfArg<String>? region,
    TfArg<String>? solutionStackName,
    List<ElasticBeanstalkConfigurationTemplateSetting>? setting,
    super.lifecycle,
    super.dependsOn,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           'application': application,
           if (description != null) 'description': description,
           if (environmentId != null) 'environment_id': environmentId,
           'name': name,
           if (region != null) 'region': region,
           if (solutionStackName != null)
             'solution_stack_name': solutionStackName,
           if (setting != null)
             'setting': TfArg.literal([for (final e in setting) e.encode()]),
         },
       );

  @override
  Set<String> get sensitiveFields =>
      _awsElasticBeanstalkConfigurationTemplateSensitive;

  /// Reference to `name` attribute.
  TfRef<String> get nameRef => TfRef.attribute<String>(this, 'name');

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');
}
