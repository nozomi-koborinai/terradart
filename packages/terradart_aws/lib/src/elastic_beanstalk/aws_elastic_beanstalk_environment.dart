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
sealed class ElasticBeanstalkEnvironmentPlatform {
  const ElasticBeanstalkEnvironmentPlatform();

  /// Sets `platform_arn`.
  const factory ElasticBeanstalkEnvironmentPlatform.platformArn(
    TfArg<String> platformArn,
  ) = ElasticBeanstalkEnvironmentPlatformArn;

  /// Sets `solution_stack_name`.
  const factory ElasticBeanstalkEnvironmentPlatform.solutionStackName(
    TfArg<String> solutionStackName,
  ) = ElasticBeanstalkEnvironmentPlatformSolutionStackName;

  /// Sets `template_name`.
  const factory ElasticBeanstalkEnvironmentPlatform.templateName(
    TfArg<String> templateName,
  ) = ElasticBeanstalkEnvironmentPlatformTemplateName;

  /// The Terraform argument this choice sets.
  String get blockKey;

  Map<String, Object?> encode();

  /// The resource arguments behind [encode], as the caller's
  /// [TfArg]s.
  Map<String, TfArg<Object?>> get argMap;
}

/// The [ElasticBeanstalkEnvironmentPlatform.platformArn] choice: sets `platform_arn`.
final class ElasticBeanstalkEnvironmentPlatformArn
    extends ElasticBeanstalkEnvironmentPlatform {
  const ElasticBeanstalkEnvironmentPlatformArn(this.platformArn);

  final TfArg<String> platformArn;

  @override
  String get blockKey => 'platform_arn';

  @override
  Map<String, Object?> encode() => {'platform_arn': platformArn.toTfJson()};

  @override
  Map<String, TfArg<Object?>> get argMap => {'platform_arn': platformArn};
}

/// The [ElasticBeanstalkEnvironmentPlatform.solutionStackName] choice: sets `solution_stack_name`.
final class ElasticBeanstalkEnvironmentPlatformSolutionStackName
    extends ElasticBeanstalkEnvironmentPlatform {
  const ElasticBeanstalkEnvironmentPlatformSolutionStackName(
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

/// The [ElasticBeanstalkEnvironmentPlatform.templateName] choice: sets `template_name`.
final class ElasticBeanstalkEnvironmentPlatformTemplateName
    extends ElasticBeanstalkEnvironmentPlatform {
  const ElasticBeanstalkEnvironmentPlatformTemplateName(this.templateName);

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
    'resource': ?resource?.toTfJson(),
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
    ElasticBeanstalkEnvironmentPlatform? platform,
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
           'cname_prefix': ?cnamePrefix,
           'description': ?description,
           'name': name,
           ...?platform?.argMap,
           'poll_interval': ?pollInterval,
           'region': ?region,
           'tags': ?tags,
           'tier': ?tier,
           'version_label': ?versionLabel,
           'wait_for_ready_timeout': ?waitForReadyTimeout,
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

  /// Reference to `application` attribute.
  TfRef<String> get applicationRef =>
      TfRef.attribute<String>(this, 'application');

  /// Reference to `cname_prefix` attribute.
  TfRef<String> get cnamePrefixRef =>
      TfRef.attribute<String>(this, 'cname_prefix');

  /// Reference to `description` attribute.
  TfRef<String> get descriptionRef =>
      TfRef.attribute<String>(this, 'description');

  /// Reference to `platform_arn` attribute.
  TfRef<String> get platformArnRef =>
      TfRef.attribute<String>(this, 'platform_arn');

  /// Reference to `poll_interval` attribute.
  TfRef<String> get pollIntervalRef =>
      TfRef.attribute<String>(this, 'poll_interval');

  /// Reference to `region` attribute.
  TfRef<String> get regionRef => TfRef.attribute<String>(this, 'region');

  /// Reference to `solution_stack_name` attribute.
  TfRef<String> get solutionStackNameRef =>
      TfRef.attribute<String>(this, 'solution_stack_name');

  /// Reference to `tags` attribute.
  TfRef<Map<String, String>> get tagsRef =>
      TfRef.attribute<Map<String, String>>(this, 'tags');

  /// Reference to `template_name` attribute.
  TfRef<String> get templateNameRef =>
      TfRef.attribute<String>(this, 'template_name');

  /// Reference to `tier` attribute.
  TfRef<String> get tierRef => TfRef.attribute<String>(this, 'tier');

  /// Reference to `version_label` attribute.
  TfRef<String> get versionLabelRef =>
      TfRef.attribute<String>(this, 'version_label');

  /// Reference to `wait_for_ready_timeout` attribute.
  TfRef<String> get waitForReadyTimeoutRef =>
      TfRef.attribute<String>(this, 'wait_for_ready_timeout');
}
