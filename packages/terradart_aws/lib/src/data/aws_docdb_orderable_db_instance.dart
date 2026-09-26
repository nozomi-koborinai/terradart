// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `aws_docdb_orderable_db_instance`.
const Set<String> _awsDocdbOrderableDbInstanceSensitive = <String>{};

/// Factory wrapper for `aws_docdb_orderable_db_instance`.
final class DataAwsDocdbOrderableDbInstance extends Data {
  static const String tfType = 'aws_docdb_orderable_db_instance';

  DataAwsDocdbOrderableDbInstance({
    required super.localName,
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
           if (engine != null) 'engine': engine,
           if (engineVersion != null) 'engine_version': engineVersion,
           if (instanceClass != null) 'instance_class': instanceClass,
           if (licenseModel != null) 'license_model': licenseModel,
           if (preferredInstanceClasses != null)
             'preferred_instance_classes': preferredInstanceClasses,
           if (region != null) 'region': region,
           if (vpc != null) 'vpc': vpc,
         },
       );

  @override
  Set<String> get sensitiveFields => _awsDocdbOrderableDbInstanceSensitive;

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `availability_zones` attribute.
  TfRef<List<String>> get availabilityZones =>
      TfRef.attribute<List<String>>(this, 'availability_zones');
}
