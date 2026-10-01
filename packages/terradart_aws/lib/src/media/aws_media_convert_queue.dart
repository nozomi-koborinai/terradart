// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:meta/meta.dart';
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `aws_media_convert_queue`.
const Set<String> _awsMediaConvertQueueSensitive = <String>{};

/// Media Convert Queue Pricing enum for `pricing_plan`.
enum MediaConvertQueuePricingPlan implements TerraformEnum {
  onDemand('ON_DEMAND'),
  reserved('RESERVED');

  const MediaConvertQueuePricingPlan(this.terraformValue);
  @override
  final String terraformValue;
}

/// Media Convert Queue enum for `status`.
enum MediaConvertQueueStatus implements TerraformEnum {
  active('ACTIVE'),
  paused('PAUSED');

  const MediaConvertQueueStatus(this.terraformValue);
  @override
  final String terraformValue;
}

/// Typed helper for the `reservation_plan_settings` block of
/// `aws_media_convert_queue` (derived from provider schema).
@immutable
final class MediaConvertQueueReservationPlanSettings {
  const MediaConvertQueueReservationPlanSettings({
    required this.commitment,
    required this.renewalType,
    required this.reservedSlots,
  });

  final TfArg<MediaConvertQueueCommitment> commitment;

  final TfArg<MediaConvertQueueRenewalType> renewalType;

  final TfArg<num> reservedSlots;

  Map<String, Object?> encode() => {
    'commitment': commitment.toTfJson(),
    'renewal_type': renewalType.toTfJson(),
    'reserved_slots': reservedSlots.toTfJson(),
  };
}

/// `commitment` — derived from the provider schema description.
enum MediaConvertQueueCommitment implements TerraformEnum {
  oneYear('ONE_YEAR');

  const MediaConvertQueueCommitment(this.terraformValue);
  @override
  final String terraformValue;
}

/// `renewal_type` — derived from the provider schema description.
enum MediaConvertQueueRenewalType implements TerraformEnum {
  autoRenew('AUTO_RENEW'),
  expire('EXPIRE');

  const MediaConvertQueueRenewalType(this.terraformValue);
  @override
  final String terraformValue;
}

/// Factory wrapper for `aws_media_convert_queue`.
final class AwsMediaConvertQueue extends Resource {
  static const String tfType = 'aws_media_convert_queue';

  AwsMediaConvertQueue({
    required super.localName,
    TfArg<num>? concurrentJobs,
    TfArg<String>? description,
    required TfArg<String> name,
    TfArg<MediaConvertQueuePricingPlan>? pricingPlan,
    TfArg<String>? region,
    TfArg<MediaConvertQueueStatus>? status,
    TfArg<Map<String, String>>? tags,
    MediaConvertQueueReservationPlanSettings? reservationPlanSettings,
    super.lifecycle,
    super.dependsOn,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           'concurrent_jobs': ?concurrentJobs,
           'description': ?description,
           'name': name,
           'pricing_plan': ?pricingPlan,
           'region': ?region,
           'status': ?status,
           'tags': ?tags,
           if (reservationPlanSettings != null)
             'reservation_plan_settings': TfArg.literal(
               reservationPlanSettings.encode(),
             ),
         },
       );

  @override
  Set<String> get sensitiveFields => _awsMediaConvertQueueSensitive;

  /// A reference to this resource, for arguments typed
  /// `RefTo<AwsMediaConvertQueue>`.
  RefTo<AwsMediaConvertQueue> get ref => RefTo.of(this);

  /// Reference to `name` attribute.
  TfRef<String> get nameRef => TfRef.attribute<String>(this, 'name');

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `arn` attribute.
  TfRef<String> get arn => TfRef.attribute<String>(this, 'arn');

  /// Reference to `concurrent_jobs` attribute.
  TfRef<num> get concurrentJobsRef =>
      TfRef.attribute<num>(this, 'concurrent_jobs');

  /// Reference to `description` attribute.
  TfRef<String> get descriptionRef =>
      TfRef.attribute<String>(this, 'description');

  /// Reference to `pricing_plan` attribute.
  TfRef<String> get pricingPlanRef =>
      TfRef.attribute<String>(this, 'pricing_plan');

  /// Reference to `region` attribute.
  TfRef<String> get regionRef => TfRef.attribute<String>(this, 'region');

  /// Reference to `status` attribute.
  TfRef<String> get statusRef => TfRef.attribute<String>(this, 'status');

  /// Reference to `tags` attribute.
  TfRef<Map<String, String>> get tagsRef =>
      TfRef.attribute<Map<String, String>>(this, 'tags');
}
