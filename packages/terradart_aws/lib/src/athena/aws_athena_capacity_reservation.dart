// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `aws_athena_capacity_reservation`.
const Set<String> _awsAthenaCapacityReservationSensitive = <String>{};

/// Factory wrapper for `aws_athena_capacity_reservation`.
final class AwsAthenaCapacityReservation extends Resource {
  static const String tfType = 'aws_athena_capacity_reservation';

  AwsAthenaCapacityReservation({
    required super.localName,
    required TfArg<String> name,
    TfArg<String>? region,
    TfArg<Map<String, String>>? tags,
    required TfArg<num> targetDpus,
    super.lifecycle,
    super.dependsOn,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           'name': name,
           if (region != null) 'region': region,
           if (tags != null) 'tags': tags,
           'target_dpus': targetDpus,
         },
       );

  @override
  Set<String> get sensitiveFields => _awsAthenaCapacityReservationSensitive;

  /// Reference to `name` attribute.
  TfRef<String> get nameRef => TfRef.attribute<String>(this, 'name');

  /// Reference to `allocated_dpus` attribute.
  TfRef<num> get allocatedDpus => TfRef.attribute<num>(this, 'allocated_dpus');

  /// Reference to `arn` attribute.
  TfRef<String> get arn => TfRef.attribute<String>(this, 'arn');

  /// Reference to `status` attribute.
  TfRef<String> get status => TfRef.attribute<String>(this, 'status');

  /// Reference to `tags_all` attribute.
  TfRef<Map<String, String>> get tagsAll =>
      TfRef.attribute<Map<String, String>>(this, 'tags_all');
}
