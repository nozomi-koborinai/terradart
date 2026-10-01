// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `aws_athena_capacity_reservation`.
const Set<String> _awsAthenaCapacityReservationSensitive = <String>{};

/// Factory wrapper for `aws_athena_capacity_reservation`.
final class AwsAthenaCapacityReservation extends Resource {
  static const String tfType = 'aws_athena_capacity_reservation';

  AwsAthenaCapacityReservation(
    super.localName, {
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
           'region': ?region,
           'tags': ?tags,
           'target_dpus': targetDpus,
         },
       );

  @override
  Set<String> get sensitiveFields => _awsAthenaCapacityReservationSensitive;

  /// A reference to this resource, for arguments typed
  /// `RefTo<AwsAthenaCapacityReservation>`.
  RefTo<AwsAthenaCapacityReservation> get ref => RefTo.of(this);

  /// Reference to `name` attribute.
  TfRef<String> get name => TfRef.attribute<String>(this, 'name');

  /// Reference to `allocated_dpus` attribute.
  TfRef<num> get allocatedDpus => TfRef.attribute<num>(this, 'allocated_dpus');

  /// Reference to `arn` attribute.
  TfRef<String> get arn => TfRef.attribute<String>(this, 'arn');

  /// Reference to `status` attribute.
  TfRef<String> get status => TfRef.attribute<String>(this, 'status');

  /// Reference to `tags_all` attribute.
  TfRef<Map<String, String>> get tagsAll =>
      TfRef.attribute<Map<String, String>>(this, 'tags_all');

  /// Reference to `region` attribute.
  TfRef<String> get region => TfRef.attribute<String>(this, 'region');

  /// Reference to `tags` attribute.
  TfRef<Map<String, String>> get tags =>
      TfRef.attribute<Map<String, String>>(this, 'tags');

  /// Reference to `target_dpus` attribute.
  TfRef<num> get targetDpus => TfRef.attribute<num>(this, 'target_dpus');
}
