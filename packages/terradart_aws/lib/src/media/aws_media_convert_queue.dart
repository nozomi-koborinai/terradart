// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:meta/meta.dart';
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `aws_media_convert_queue`.
const Set<String> _awsMediaConvertQueueSensitive = <String>{};

/// Media Convert Queue Pricing enum for `pricing_plan`.
extension type const MediaConvertQueuePricingPlan._(TfArg<String> _)
    implements TfArg<String> {
  MediaConvertQueuePricingPlan.variable(String name)
    : this._(TfArg.variable(name));
  MediaConvertQueuePricingPlan.expression(String template)
    : this._(TfArg.expression(template));
  const MediaConvertQueuePricingPlan.arg(TfArg<String> arg) : this._(arg);

  static const onDemand = MediaConvertQueuePricingPlan._(
    TfArgLiteral('ON_DEMAND'),
  );
  static const reserved = MediaConvertQueuePricingPlan._(
    TfArgLiteral('RESERVED'),
  );

  static const List<MediaConvertQueuePricingPlan> values = [onDemand, reserved];
}

/// Media Convert Queue enum for `status`.
extension type const MediaConvertQueueStatus._(TfArg<String> _)
    implements TfArg<String> {
  MediaConvertQueueStatus.variable(String name) : this._(TfArg.variable(name));
  MediaConvertQueueStatus.expression(String template)
    : this._(TfArg.expression(template));
  const MediaConvertQueueStatus.arg(TfArg<String> arg) : this._(arg);

  static const active = MediaConvertQueueStatus._(TfArgLiteral('ACTIVE'));
  static const paused = MediaConvertQueueStatus._(TfArgLiteral('PAUSED'));

  static const List<MediaConvertQueueStatus> values = [active, paused];
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

  final MediaConvertQueueCommitment commitment;

  final MediaConvertQueueRenewalType renewalType;

  final TfArg<num> reservedSlots;

  Map<String, Object?> encode() => {
    'commitment': commitment.toTfJson(),
    'renewal_type': renewalType.toTfJson(),
    'reserved_slots': reservedSlots.toTfJson(),
  };
}

/// `commitment` — derived from the provider schema description.
extension type const MediaConvertQueueCommitment._(TfArg<String> _)
    implements TfArg<String> {
  MediaConvertQueueCommitment.variable(String name)
    : this._(TfArg.variable(name));
  MediaConvertQueueCommitment.expression(String template)
    : this._(TfArg.expression(template));
  const MediaConvertQueueCommitment.arg(TfArg<String> arg) : this._(arg);

  static const oneYear = MediaConvertQueueCommitment._(
    TfArgLiteral('ONE_YEAR'),
  );

  static const List<MediaConvertQueueCommitment> values = [oneYear];
}

/// `renewal_type` — derived from the provider schema description.
extension type const MediaConvertQueueRenewalType._(TfArg<String> _)
    implements TfArg<String> {
  MediaConvertQueueRenewalType.variable(String name)
    : this._(TfArg.variable(name));
  MediaConvertQueueRenewalType.expression(String template)
    : this._(TfArg.expression(template));
  const MediaConvertQueueRenewalType.arg(TfArg<String> arg) : this._(arg);

  static const autoRenew = MediaConvertQueueRenewalType._(
    TfArgLiteral('AUTO_RENEW'),
  );
  static const expire = MediaConvertQueueRenewalType._(TfArgLiteral('EXPIRE'));

  static const List<MediaConvertQueueRenewalType> values = [autoRenew, expire];
}

/// Factory wrapper for `aws_media_convert_queue`.
final class AwsMediaConvertQueue extends Resource {
  static const String tfType = 'aws_media_convert_queue';

  AwsMediaConvertQueue(
    super.localName, {
    TfArg<num>? concurrentJobs,
    TfArg<String>? description,
    required TfArg<String> name,
    MediaConvertQueuePricingPlan? pricingPlan,
    TfArg<String>? region,
    MediaConvertQueueStatus? status,
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
  TfRef<String> get name => TfRef.attribute<String>(this, 'name');

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `arn` attribute.
  TfRef<String> get arn => TfRef.attribute<String>(this, 'arn');

  /// Reference to `concurrent_jobs` attribute.
  TfRef<num> get concurrentJobs =>
      TfRef.attribute<num>(this, 'concurrent_jobs');

  /// Reference to `description` attribute.
  TfRef<String> get description => TfRef.attribute<String>(this, 'description');

  /// Reference to `pricing_plan` attribute.
  TfRef<String> get pricingPlan =>
      TfRef.attribute<String>(this, 'pricing_plan');

  /// Reference to `region` attribute.
  TfRef<String> get region => TfRef.attribute<String>(this, 'region');

  /// Reference to `status` attribute.
  TfRef<String> get status => TfRef.attribute<String>(this, 'status');

  /// Reference to `tags` attribute.
  TfRef<Map<String, String>> get tags =>
      TfRef.attribute<Map<String, String>>(this, 'tags');
}
