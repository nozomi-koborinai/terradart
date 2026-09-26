// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `aws_odb_db_system_shapes`.
const Set<String> _awsOdbDbSystemShapesSensitive = <String>{};

/// Factory wrapper for `aws_odb_db_system_shapes`.
final class DataAwsOdbDbSystemShapes extends Data {
  static const String tfType = 'aws_odb_db_system_shapes';

  DataAwsOdbDbSystemShapes({
    required super.localName,
    TfArg<String>? availabilityZoneId,
    TfArg<String>? region,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           if (availabilityZoneId != null)
             'availability_zone_id': availabilityZoneId,
           if (region != null) 'region': region,
         },
       );

  @override
  Set<String> get sensitiveFields => _awsOdbDbSystemShapesSensitive;

  /// Reference to `db_system_shapes` attribute.
  TfRef<List<Map<String, Object?>>> get dbSystemShapes =>
      TfRef.attribute<List<Map<String, Object?>>>(this, 'db_system_shapes');
}
