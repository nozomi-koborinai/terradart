// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:meta/meta.dart';
import 'package:terradart_core/terradart_core.dart';

import '../iam/aws_iam_role.dart' show AwsIamRole;

/// Sensitive field paths for `aws_elastic_beanstalk_application`.
const Set<String> _awsElasticBeanstalkApplicationSensitive = <String>{};

/// Typed helper for the `appversion_lifecycle` block of
/// `aws_elastic_beanstalk_application` (derived from provider schema).
@immutable
final class ElasticBeanstalkApplicationAppversionLifecycle {
  const ElasticBeanstalkApplicationAppversionLifecycle({
    this.deleteSourceFromS3,
    this.maxAgeInDays,
    this.maxCount,
    required this.serviceRole,
  });

  final TfArg<bool>? deleteSourceFromS3;

  final TfArg<num>? maxAgeInDays;

  final TfArg<num>? maxCount;

  final RefTo<AwsIamRole> serviceRole;

  Map<String, Object?> encode() => {
    'delete_source_from_s3': ?deleteSourceFromS3?.toTfJson(),
    'max_age_in_days': ?maxAgeInDays?.toTfJson(),
    'max_count': ?maxCount?.toTfJson(),
    'service_role': serviceRole.encodeAs('arn').toTfJson(),
  };
}

/// Factory wrapper for `aws_elastic_beanstalk_application`.
final class AwsElasticBeanstalkApplication extends Resource {
  static const String tfType = 'aws_elastic_beanstalk_application';

  AwsElasticBeanstalkApplication(
    super.localName, {
    TfArg<String>? description,
    required TfArg<String> name,
    TfArg<String>? region,
    TfArg<Map<String, String>>? tags,
    ElasticBeanstalkApplicationAppversionLifecycle? appversionLifecycle,
    super.lifecycle,
    super.dependsOn,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           'description': ?description,
           'name': name,
           'region': ?region,
           'tags': ?tags,
           if (appversionLifecycle != null)
             'appversion_lifecycle': TfArg.literal(
               appversionLifecycle.encode(),
             ),
         },
       );

  @override
  Set<String> get sensitiveFields => _awsElasticBeanstalkApplicationSensitive;

  /// A reference to this resource, for arguments typed
  /// `RefTo<AwsElasticBeanstalkApplication>`.
  RefTo<AwsElasticBeanstalkApplication> get ref => RefTo.of(this);

  /// Reference to `name` attribute.
  TfRef<String> get name => TfRef.attribute<String>(this, 'name');

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `arn` attribute.
  TfRef<String> get arn => TfRef.attribute<String>(this, 'arn');

  /// Reference to `description` attribute.
  TfRef<String> get description => TfRef.attribute<String>(this, 'description');

  /// Reference to `region` attribute.
  TfRef<String> get region => TfRef.attribute<String>(this, 'region');

  /// Reference to `tags` attribute.
  TfRef<Map<String, String>> get tags =>
      TfRef.attribute<Map<String, String>>(this, 'tags');
}
