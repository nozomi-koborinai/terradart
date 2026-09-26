// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:meta/meta.dart';
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `aws_media_convert_queue`.
const Set<String> _awsMediaConvertQueueSensitive = <String>{};

/// Typed helper for the `reservation_plan_settings` block of
/// `aws_media_convert_queue` (derived from provider schema).
@immutable
final class MediaConvertQueueReservationPlanSettings {
  const MediaConvertQueueReservationPlanSettings({
    required this.commitment,
    required this.renewalType,
    required this.reservedSlots,
  });

  final TfArg<String> commitment;

  final TfArg<String> renewalType;

  final TfArg<num> reservedSlots;

  Map<String, Object?> encode() => {
    'commitment': commitment.toTfJson(),
    'renewal_type': renewalType.toTfJson(),
    'reserved_slots': reservedSlots.toTfJson(),
  };
}

/// Factory wrapper for `aws_media_convert_queue`.
final class AwsMediaConvertQueue extends Resource {
  static const String tfType = 'aws_media_convert_queue';

  AwsMediaConvertQueue({
    required super.localName,
    TfArg<num>? concurrentJobs,
    TfArg<String>? description,
    required TfArg<String> name,
    TfArg<String>? pricingPlan,
    TfArg<String>? region,
    TfArg<String>? status,
    TfArg<Map<String, String>>? tags,
    MediaConvertQueueReservationPlanSettings? reservationPlanSettings,
    super.lifecycle,
    super.dependsOn,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           if (concurrentJobs != null) 'concurrent_jobs': concurrentJobs,
           if (description != null) 'description': description,
           'name': name,
           if (pricingPlan != null) 'pricing_plan': pricingPlan,
           if (region != null) 'region': region,
           if (status != null) 'status': status,
           if (tags != null) 'tags': tags,
           if (reservationPlanSettings != null)
             'reservation_plan_settings': TfArg.literal(
               reservationPlanSettings.encode(),
             ),
         },
       );

  @override
  Set<String> get sensitiveFields => _awsMediaConvertQueueSensitive;

  /// Reference to `name` attribute.
  TfRef<String> get nameRef => TfRef.attribute<String>(this, 'name');

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `arn` attribute.
  TfRef<String> get arn => TfRef.attribute<String>(this, 'arn');
}
