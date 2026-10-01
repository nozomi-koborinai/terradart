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
    'resource': ?resource?.toTfJson(),
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
           'description': ?description,
           'environment_id': ?environmentId,
           'name': name,
           'region': ?region,
           'solution_stack_name': ?solutionStackName,
           if (setting != null)
             'setting': TfArg.literal([for (final e in setting) e.encode()]),
         },
       );

  @override
  Set<String> get sensitiveFields =>
      _awsElasticBeanstalkConfigurationTemplateSensitive;

  /// A reference to this resource, for arguments typed
  /// `RefTo<AwsElasticBeanstalkConfigurationTemplate>`.
  RefTo<AwsElasticBeanstalkConfigurationTemplate> get ref => RefTo.of(this);

  /// Reference to `name` attribute.
  TfRef<String> get name => TfRef.attribute<String>(this, 'name');

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `application` attribute.
  TfRef<String> get application => TfRef.attribute<String>(this, 'application');

  /// Reference to `description` attribute.
  TfRef<String> get description => TfRef.attribute<String>(this, 'description');

  /// Reference to `environment_id` attribute.
  TfRef<String> get environmentId =>
      TfRef.attribute<String>(this, 'environment_id');

  /// Reference to `region` attribute.
  TfRef<String> get region => TfRef.attribute<String>(this, 'region');

  /// Reference to `solution_stack_name` attribute.
  TfRef<String> get solutionStackName =>
      TfRef.attribute<String>(this, 'solution_stack_name');
}
