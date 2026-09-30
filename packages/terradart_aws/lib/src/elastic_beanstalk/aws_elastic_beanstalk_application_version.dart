// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';

import '../s3/aws_s3_bucket.dart' show AwsS3Bucket;

/// Sensitive field paths for `aws_elastic_beanstalk_application_version`.
const Set<String> _awsElasticBeanstalkApplicationVersionSensitive = <String>{};

/// Factory wrapper for `aws_elastic_beanstalk_application_version`.
final class AwsElasticBeanstalkApplicationVersion extends Resource {
  static const String tfType = 'aws_elastic_beanstalk_application_version';

  AwsElasticBeanstalkApplicationVersion({
    required super.localName,
    required TfArg<String> application,
    required RefTo<AwsS3Bucket> bucket,
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
           'bucket': bucket.encodeAs('id'),
           'description': ?description,
           'force_delete': ?forceDelete,
           'key': key,
           'name': name,
           'process': ?process,
           'region': ?region,
           'tags': ?tags,
         },
       );

  @override
  Set<String> get sensitiveFields =>
      _awsElasticBeanstalkApplicationVersionSensitive;

  /// A reference to this resource, for arguments typed
  /// `RefTo<AwsElasticBeanstalkApplicationVersion>`.
  RefTo<AwsElasticBeanstalkApplicationVersion> get ref => RefTo.of(this);

  /// Reference to `name` attribute.
  TfRef<String> get nameRef => TfRef.attribute<String>(this, 'name');

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `arn` attribute.
  TfRef<String> get arn => TfRef.attribute<String>(this, 'arn');

  /// Reference to `application` attribute.
  TfRef<String> get applicationRef =>
      TfRef.attribute<String>(this, 'application');

  /// Reference to `bucket` attribute.
  TfRef<String> get bucketRef => TfRef.attribute<String>(this, 'bucket');

  /// Reference to `description` attribute.
  TfRef<String> get descriptionRef =>
      TfRef.attribute<String>(this, 'description');

  /// Reference to `force_delete` attribute.
  TfRef<bool> get forceDeleteRef => TfRef.attribute<bool>(this, 'force_delete');

  /// Reference to `key` attribute.
  TfRef<String> get keyRef => TfRef.attribute<String>(this, 'key');

  /// Reference to `process` attribute.
  TfRef<bool> get processRef => TfRef.attribute<bool>(this, 'process');

  /// Reference to `region` attribute.
  TfRef<String> get regionRef => TfRef.attribute<String>(this, 'region');

  /// Reference to `tags` attribute.
  TfRef<Map<String, String>> get tagsRef =>
      TfRef.attribute<Map<String, String>>(this, 'tags');
}
