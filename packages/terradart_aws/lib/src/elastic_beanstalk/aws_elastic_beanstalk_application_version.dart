// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `aws_elastic_beanstalk_application_version`.
const Set<String> _awsElasticBeanstalkApplicationVersionSensitive = <String>{};

/// Factory wrapper for `aws_elastic_beanstalk_application_version`.
final class AwsElasticBeanstalkApplicationVersion extends Resource {
  static const String tfType = 'aws_elastic_beanstalk_application_version';

  AwsElasticBeanstalkApplicationVersion({
    required super.localName,
    required TfArg<String> application,
    required TfArg<String> bucket,
    TfArg<String>? description,
    TfArg<bool>? forceDelete,
    required TfArg<String> key,
    required TfArg<String> name,
    TfArg<bool>? process,
    TfArg<String>? region,
    TfArg<Map<String, String>>? tags,
    super.lifecycle,
    super.dependsOn,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           'application': application,
           'bucket': bucket,
           if (description != null) 'description': description,
           if (forceDelete != null) 'force_delete': forceDelete,
           'key': key,
           'name': name,
           if (process != null) 'process': process,
           if (region != null) 'region': region,
           if (tags != null) 'tags': tags,
         },
       );

  @override
  Set<String> get sensitiveFields =>
      _awsElasticBeanstalkApplicationVersionSensitive;

  /// Reference to `name` attribute.
  TfRef<String> get nameRef => TfRef.attribute<String>(this, 'name');

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `arn` attribute.
  TfRef<String> get arn => TfRef.attribute<String>(this, 'arn');
}
