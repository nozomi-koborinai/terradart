// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `aws_elastic_beanstalk_application`.
const Set<String> _awsElasticBeanstalkApplicationSensitive = <String>{};

/// Factory wrapper for `aws_elastic_beanstalk_application`.
final class DataAwsElasticBeanstalkApplication extends Data {
  static const String tfType = 'aws_elastic_beanstalk_application';

  DataAwsElasticBeanstalkApplication({
    required super.localName,
    required TfArg<String> name,
    TfArg<String>? region,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {'name': name, if (region != null) 'region': region},
       );

  @override
  Set<String> get sensitiveFields => _awsElasticBeanstalkApplicationSensitive;

  /// Reference to `name` attribute.
  TfRef<String> get nameRef => TfRef.attribute<String>(this, 'name');

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `appversion_lifecycle` attribute.
  TfRef<List<Map<String, Object?>>> get appversionLifecycle =>
      TfRef.attribute<List<Map<String, Object?>>>(this, 'appversion_lifecycle');

  /// Reference to `arn` attribute.
  TfRef<String> get arn => TfRef.attribute<String>(this, 'arn');

  /// Reference to `description` attribute.
  TfRef<String> get description => TfRef.attribute<String>(this, 'description');
}
