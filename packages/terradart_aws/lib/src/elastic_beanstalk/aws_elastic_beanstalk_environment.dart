// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:meta/meta.dart';
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `aws_elastic_beanstalk_environment`.
const Set<String> _awsElasticBeanstalkEnvironmentSensitive = <String>{};

/// Elastic Beanstalk Environment enum for `tier`.
enum ElasticBeanstalkEnvironmentTier implements TerraformEnum {
  webserver('WebServer'),
  worker('Worker');

  const ElasticBeanstalkEnvironmentTier(this.terraformValue);
  @override
  final String terraformValue;
}

/// At most one of `platform_arn`, `solution_stack_name`, `template_name` on `aws_elastic_beanstalk_environment`: the provider rejects
/// more than one, so each variant sets one of them and a
/// null choice sets none.
///
/// Pick one with a dot shorthand: `.platformArn(...)`.
sealed class ElasticBeanstalkEnvironmentPlatformArnOrSolutionStackNameOrTemplateName {
  const ElasticBeanstalkEnvironmentPlatformArnOrSolutionStackNameOrTemplateName();

  /// Sets `platform_arn`.
  const factory ElasticBeanstalkEnvironmentPlatformArnOrSolutionStackNameOrTemplateName.platformArn(
    TfArg<String> platformArn,
  ) = ElasticBeanstalkEnvironmentPlatformArnOrSolutionStackNameOrTemplateNamePlatformArn;

  /// Sets `solution_stack_name`.
  const factory ElasticBeanstalkEnvironmentPlatformArnOrSolutionStackNameOrTemplateName.solutionStackName(
    TfArg<String> solutionStackName,
  ) = ElasticBeanstalkEnvironmentPlatformArnOrSolutionStackNameOrTemplateNameSolutionStackName;

  /// Sets `template_name`.
  const factory ElasticBeanstalkEnvironmentPlatformArnOrSolutionStackNameOrTemplateName.templateName(
    TfArg<String> templateName,
  ) = ElasticBeanstalkEnvironmentPlatformArnOrSolutionStackNameOrTemplateNameTemplateName;

  /// The Terraform argument this choice sets.
  String get blockKey;

  Map<String, Object?> encode();

  /// The resource arguments behind [encode], as the caller's
  /// [TfArg]s.
  Map<String, TfArg<Object?>> get argMap;
}

/// The [ElasticBeanstalkEnvironmentPlatformArnOrSolutionStackNameOrTemplateName.platformArn] choice: sets `platform_arn`.
final class ElasticBeanstalkEnvironmentPlatformArnOrSolutionStackNameOrTemplateNamePlatformArn
    extends
        ElasticBeanstalkEnvironmentPlatformArnOrSolutionStackNameOrTemplateName {
  const ElasticBeanstalkEnvironmentPlatformArnOrSolutionStackNameOrTemplateNamePlatformArn(
    this.platformArn,
  );

  final TfArg<String> platformArn;

  @override
  String get blockKey => 'platform_arn';

  @override
  Map<String, Object?> encode() => {'platform_arn': platformArn.toTfJson()};

  @override
  Map<String, TfArg<Object?>> get argMap => {'platform_arn': platformArn};
}

/// The [ElasticBeanstalkEnvironmentPlatformArnOrSolutionStackNameOrTemplateName.solutionStackName] choice: sets `solution_stack_name`.
final class ElasticBeanstalkEnvironmentPlatformArnOrSolutionStackNameOrTemplateNameSolutionStackName
    extends
        ElasticBeanstalkEnvironmentPlatformArnOrSolutionStackNameOrTemplateName {
  const ElasticBeanstalkEnvironmentPlatformArnOrSolutionStackNameOrTemplateNameSolutionStackName(
    this.solutionStackName,
  );

  final TfArg<String> solutionStackName;

  @override
  String get blockKey => 'solution_stack_name';

  @override
  Map<String, Object?> encode() => {
    'solution_stack_name': solutionStackName.toTfJson(),
  };

  @override
  Map<String, TfArg<Object?>> get argMap => {
    'solution_stack_name': solutionStackName,
  };
}

/// The [ElasticBeanstalkEnvironmentPlatformArnOrSolutionStackNameOrTemplateName.templateName] choice: sets `template_name`.
final class ElasticBeanstalkEnvironmentPlatformArnOrSolutionStackNameOrTemplateNameTemplateName
    extends
        ElasticBeanstalkEnvironmentPlatformArnOrSolutionStackNameOrTemplateName {
  const ElasticBeanstalkEnvironmentPlatformArnOrSolutionStackNameOrTemplateNameTemplateName(
    this.templateName,
  );

  final TfArg<String> templateName;

  @override
  String get blockKey => 'template_name';

  @override
  Map<String, Object?> encode() => {'template_name': templateName.toTfJson()};

  @override
  Map<String, TfArg<Object?>> get argMap => {'template_name': templateName};
}

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
    ElasticBeanstalkEnvironmentPlatformArnOrSolutionStackNameOrTemplateName?
    platformArnOrSolutionStackNameOrTemplateName,
    TfArg<String>? pollInterval,
    TfArg<String>? region,
    TfArg<Map<String, String>>? tags,
    TfArg<ElasticBeanstalkEnvironmentTier>? tier,
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
           ...?platformArnOrSolutionStackNameOrTemplateName?.argMap,
           if (pollInterval != null) 'poll_interval': pollInterval,
           if (region != null) 'region': region,
           if (tags != null) 'tags': tags,
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

  /// A reference to this resource, for arguments typed
  /// `RefTo<AwsElasticBeanstalkEnvironment>`.
  RefTo<AwsElasticBeanstalkEnvironment> get ref => RefTo.of(this);

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
