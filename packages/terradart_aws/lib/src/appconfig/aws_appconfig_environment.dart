// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:meta/meta.dart';
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `aws_appconfig_environment`.
const Set<String> _awsAppconfigEnvironmentSensitive = <String>{};

/// Typed helper for the `monitor` block of
/// `aws_appconfig_environment` (derived from provider schema).
@immutable
final class AppconfigEnvironmentMonitor {
  const AppconfigEnvironmentMonitor({
    required this.alarmArn,
    this.alarmRoleArn,
  });

  final TfArg<String> alarmArn;

  final TfArg<String>? alarmRoleArn;

  Map<String, Object?> encode() => {
    'alarm_arn': alarmArn.toTfJson(),
    'alarm_role_arn': ?alarmRoleArn?.toTfJson(),
  };
}

/// Factory wrapper for `aws_appconfig_environment`.
final class AwsAppconfigEnvironment extends Resource {
  static const String tfType = 'aws_appconfig_environment';

  AwsAppconfigEnvironment({
    required super.localName,
    required TfArg<String> applicationId,
    TfArg<String>? description,
    required TfArg<String> name,
    TfArg<String>? region,
    TfArg<Map<String, String>>? tags,
    List<AppconfigEnvironmentMonitor>? monitor,
    super.lifecycle,
    super.dependsOn,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           'application_id': applicationId,
           'description': ?description,
           'name': name,
           'region': ?region,
           'tags': ?tags,
           if (monitor != null)
             'monitor': TfArg.literal([for (final e in monitor) e.encode()]),
         },
       );

  @override
  Set<String> get sensitiveFields => _awsAppconfigEnvironmentSensitive;

  /// A reference to this resource, for arguments typed
  /// `RefTo<AwsAppconfigEnvironment>`.
  RefTo<AwsAppconfigEnvironment> get ref => RefTo.of(this);

  /// Reference to `name` attribute.
  TfRef<String> get nameRef => TfRef.attribute<String>(this, 'name');

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `arn` attribute.
  TfRef<String> get arn => TfRef.attribute<String>(this, 'arn');

  /// Reference to `environment_id` attribute.
  TfRef<String> get environmentId =>
      TfRef.attribute<String>(this, 'environment_id');

  /// Reference to `state` attribute.
  TfRef<String> get state => TfRef.attribute<String>(this, 'state');

  /// Reference to `tags_all` attribute.
  TfRef<Map<String, String>> get tagsAll =>
      TfRef.attribute<Map<String, String>>(this, 'tags_all');

  /// Reference to `application_id` attribute.
  TfRef<String> get applicationIdRef =>
      TfRef.attribute<String>(this, 'application_id');

  /// Reference to `description` attribute.
  TfRef<String> get descriptionRef =>
      TfRef.attribute<String>(this, 'description');

  /// Reference to `region` attribute.
  TfRef<String> get regionRef => TfRef.attribute<String>(this, 'region');

  /// Reference to `tags` attribute.
  TfRef<Map<String, String>> get tagsRef =>
      TfRef.attribute<Map<String, String>>(this, 'tags');
}
