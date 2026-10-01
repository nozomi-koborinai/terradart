// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `aws_docdb_orderable_db_instance`.
const Set<String> _awsDocdbOrderableDbInstanceSensitive = <String>{};

/// Factory wrapper for `aws_docdb_orderable_db_instance`.
final class DataAwsDocdbOrderableDbInstance extends Data {
  static const String tfType = 'aws_docdb_orderable_db_instance';

  DataAwsDocdbOrderableDbInstance(
    super.localName, {
    TfArg<String>? engine,
    TfArg<String>? engineVersion,
    TfArg<String>? instanceClass,
    TfArg<String>? licenseModel,
    TfArg<List<String>>? preferredInstanceClasses,
    TfArg<String>? region,
    TfArg<bool>? vpc,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           'engine': ?engine,
           'engine_version': ?engineVersion,
           'instance_class': ?instanceClass,
           'license_model': ?licenseModel,
           'preferred_instance_classes': ?preferredInstanceClasses,
           'region': ?region,
           'vpc': ?vpc,
         },
       );

  @override
  Set<String> get sensitiveFields => _awsDocdbOrderableDbInstanceSensitive;

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `availability_zones` attribute.
  TfRef<List<String>> get availabilityZones =>
      TfRef.attribute<List<String>>(this, 'availability_zones');

  /// Reference to `engine` attribute.
  TfRef<String> get engine => TfRef.attribute<String>(this, 'engine');

  /// Reference to `engine_version` attribute.
  TfRef<String> get engineVersion =>
      TfRef.attribute<String>(this, 'engine_version');

  /// Reference to `instance_class` attribute.
  TfRef<String> get instanceClass =>
      TfRef.attribute<String>(this, 'instance_class');

  /// Reference to `license_model` attribute.
  TfRef<String> get licenseModel =>
      TfRef.attribute<String>(this, 'license_model');

  /// Reference to `preferred_instance_classes` attribute.
  TfRef<List<String>> get preferredInstanceClasses =>
      TfRef.attribute<List<String>>(this, 'preferred_instance_classes');

  /// Reference to `region` attribute.
  TfRef<String> get region => TfRef.attribute<String>(this, 'region');

  /// Reference to `vpc` attribute.
  TfRef<bool> get vpc => TfRef.attribute<bool>(this, 'vpc');
}
