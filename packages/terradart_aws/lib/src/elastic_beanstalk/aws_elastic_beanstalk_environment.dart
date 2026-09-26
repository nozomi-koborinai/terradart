// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:meta/meta.dart';
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `aws_elastic_beanstalk_environment`.
const Set<String> _awsElasticBeanstalkEnvironmentSensitive = <String>{};

/// Typed helper for the `setting` block of
/// `aws_elastic_beanstalk_environment` (derived from provider schema).
@immutable
final class ElasticBeanstalkEnvironmentSetting {
  const ElasticBeanstalkEnvironmentSetting({
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

/// Factory wrapper for `aws_elastic_beanstalk_environment`.
final class AwsElasticBeanstalkEnvironment extends Resource {
  static const String tfType = 'aws_elastic_beanstalk_environment';

  AwsElasticBeanstalkEnvironment({
    required super.localName,
    required TfArg<String> application,
    TfArg<String>? cnamePrefix,
    TfArg<String>? description,
    required TfArg<String> name,
    TfArg<String>? platformArn,
    TfArg<String>? pollInterval,
    TfArg<String>? region,
    TfArg<String>? solutionStackName,
    TfArg<Map<String, String>>? tags,
    TfArg<String>? templateName,
    TfArg<String>? tier,
    TfArg<String>? versionLabel,
    TfArg<String>? waitForReadyTimeout,
    List<ElasticBeanstalkEnvironmentSetting>? setting,
    super.lifecycle,
    super.dependsOn,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           'application': application,
           if (cnamePrefix != null) 'cname_prefix': cnamePrefix,
           if (description != null) 'description': description,
           'name': name,
           if (platformArn != null) 'platform_arn': platformArn,
           if (pollInterval != null) 'poll_interval': pollInterval,
           if (region != null) 'region': region,
           if (solutionStackName != null)
             'solution_stack_name': solutionStackName,
           if (tags != null) 'tags': tags,
           if (templateName != null) 'template_name': templateName,
           if (tier != null) 'tier': tier,
           if (versionLabel != null) 'version_label': versionLabel,
           if (waitForReadyTimeout != null)
             'wait_for_ready_timeout': waitForReadyTimeout,
           if (setting != null)
             'setting': TfArg.literal([for (final e in setting) e.encode()]),
         },
       );

  @override
  Set<String> get sensitiveFields => _awsElasticBeanstalkEnvironmentSensitive;

  /// Reference to `name` attribute.
  TfRef<String> get nameRef => TfRef.attribute<String>(this, 'name');

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `all_settings` attribute.
  TfRef<List<Map<String, Object?>>> get allSettings =>
      TfRef.attribute<List<Map<String, Object?>>>(this, 'all_settings');

  /// Reference to `arn` attribute.
  TfRef<String> get arn => TfRef.attribute<String>(this, 'arn');

  /// Reference to `autoscaling_groups` attribute.
  TfRef<List<String>> get autoscalingGroups =>
      TfRef.attribute<List<String>>(this, 'autoscaling_groups');

  /// Reference to `cname` attribute.
  TfRef<String> get cname => TfRef.attribute<String>(this, 'cname');

  /// Reference to `endpoint_url` attribute.
  TfRef<String> get endpointUrl =>
      TfRef.attribute<String>(this, 'endpoint_url');

  /// Reference to `instances` attribute.
  TfRef<List<String>> get instances =>
      TfRef.attribute<List<String>>(this, 'instances');

  /// Reference to `launch_configurations` attribute.
  TfRef<List<String>> get launchConfigurations =>
      TfRef.attribute<List<String>>(this, 'launch_configurations');

  /// Reference to `load_balancers` attribute.
  TfRef<List<String>> get loadBalancers =>
      TfRef.attribute<List<String>>(this, 'load_balancers');

  /// Reference to `queues` attribute.
  TfRef<List<String>> get queues =>
      TfRef.attribute<List<String>>(this, 'queues');

  /// Reference to `triggers` attribute.
  TfRef<List<String>> get triggers =>
      TfRef.attribute<List<String>>(this, 'triggers');
}
