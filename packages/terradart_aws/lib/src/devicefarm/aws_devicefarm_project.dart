// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `aws_devicefarm_project`.
const Set<String> _awsDevicefarmProjectSensitive = <String>{};

/// Factory wrapper for `aws_devicefarm_project`.
final class AwsDevicefarmProject extends Resource {
  static const String tfType = 'aws_devicefarm_project';

  AwsDevicefarmProject(
    super.localName, {
    TfArg<num>? defaultJobTimeoutMinutes,
    required TfArg<String> name,
    TfArg<String>? region,
    TfArg<Map<String, String>>? tags,
    super.lifecycle,
    super.dependsOn,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           'default_job_timeout_minutes': ?defaultJobTimeoutMinutes,
           'name': name,
           'region': ?region,
           'tags': ?tags,
         },
       );

  @override
  Set<String> get sensitiveFields => _awsDevicefarmProjectSensitive;

  /// A reference to this resource, for arguments typed
  /// `RefTo<AwsDevicefarmProject>`.
  RefTo<AwsDevicefarmProject> get ref => RefTo.of(this);

  /// Reference to `name` attribute.
  TfRef<String> get name => TfRef.attribute<String>(this, 'name');

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `arn` attribute.
  TfRef<String> get arn => TfRef.attribute<String>(this, 'arn');

  /// Reference to `default_job_timeout_minutes` attribute.
  TfRef<num> get defaultJobTimeoutMinutes =>
      TfRef.attribute<num>(this, 'default_job_timeout_minutes');

  /// Reference to `region` attribute.
  TfRef<String> get region => TfRef.attribute<String>(this, 'region');

  /// Reference to `tags` attribute.
  TfRef<Map<String, String>> get tags =>
      TfRef.attribute<Map<String, String>>(this, 'tags');
}
