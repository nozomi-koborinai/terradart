// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:meta/meta.dart';
import 'package:terradart_core/terradart_core.dart';

import '../bigquery/google_bigquery_reservation.dart'
    show GoogleBigqueryReservation;

/// Sensitive field paths for `google_bigquery_reservation_assignment`.
const Set<String> _googleBigqueryReservationAssignmentSensitive = <String>{};

extension type const BigqueryReservationAssignmentJobType._(TfArg<String> _)
    implements TfArg<String> {
  BigqueryReservationAssignmentJobType.variable(String name)
    : this._(TfArg.variable(name));
  BigqueryReservationAssignmentJobType.expression(String template)
    : this._(TfArg.expression(template));
  const BigqueryReservationAssignmentJobType.arg(TfArg<String> arg)
    : this._(arg);

  static const pipeline = BigqueryReservationAssignmentJobType._(
    TfArgLiteral('PIPELINE'),
  );
  static const query = BigqueryReservationAssignmentJobType._(
    TfArgLiteral('QUERY'),
  );
  static const continuous = BigqueryReservationAssignmentJobType._(
    TfArgLiteral('CONTINUOUS'),
  );
  static const mlExternal = BigqueryReservationAssignmentJobType._(
    TfArgLiteral('ML_EXTERNAL'),
  );
  static const background = BigqueryReservationAssignmentJobType._(
    TfArgLiteral('BACKGROUND'),
  );
  static const backgroundChangeDataCapture =
      BigqueryReservationAssignmentJobType._(
        TfArgLiteral('BACKGROUND_CHANGE_DATA_CAPTURE'),
      );
  static const backgroundColumnMetadataIndex =
      BigqueryReservationAssignmentJobType._(
        TfArgLiteral('BACKGROUND_COLUMN_METADATA_INDEX'),
      );
  static const backgroundSearchIndexRefresh =
      BigqueryReservationAssignmentJobType._(
        TfArgLiteral('BACKGROUND_SEARCH_INDEX_REFRESH'),
      );
  static const automaticMaterializedViewRefresh =
      BigqueryReservationAssignmentJobType._(
        TfArgLiteral('AUTOMATIC_MATERIALIZED_VIEW_REFRESH'),
      );

  static const List<BigqueryReservationAssignmentJobType> values = [
    pipeline,
    query,
    continuous,
    mlExternal,
    background,
    backgroundChangeDataCapture,
    backgroundColumnMetadataIndex,
    backgroundSearchIndexRefresh,
    automaticMaterializedViewRefresh,
  ];
}

/// Exactly one of `job_type`, `scheduling_policy` on `google_bigquery_reservation_assignment`: the provider rejects
/// none and more than one, so each variant sets one of them.
///
/// Pick one with a dot shorthand: `.jobType(...)`.
sealed class BigqueryReservationAssignmentWorkload {
  const BigqueryReservationAssignmentWorkload();

  /// Sets `job_type`.
  const factory BigqueryReservationAssignmentWorkload.jobType(
    BigqueryReservationAssignmentJobType jobType,
  ) = BigqueryReservationAssignmentWorkloadJobType;

  /// Sets `scheduling_policy`.
  const factory BigqueryReservationAssignmentWorkload.schedulingPolicy(
    BigqueryReservationAssignmentSchedulingPolicy schedulingPolicy,
  ) = BigqueryReservationAssignmentWorkloadSchedulingPolicy;

  /// The Terraform argument this choice sets.
  @internal
  String get blockKey;

  @internal
  Map<String, Object?> encode();

  /// The resource arguments behind [encode], as the caller's
  /// [TfArg]s.
  @internal
  Map<String, TfArg<Object?>> get argMap;
}

/// The [BigqueryReservationAssignmentWorkload.jobType] choice: sets `job_type`.
final class BigqueryReservationAssignmentWorkloadJobType
    extends BigqueryReservationAssignmentWorkload {
  const BigqueryReservationAssignmentWorkloadJobType(this.jobType);

  final BigqueryReservationAssignmentJobType jobType;

  @internal
  @override
  String get blockKey => 'job_type';

  @internal
  @override
  Map<String, Object?> encode() => {'job_type': jobType.toTfJson()};

  @internal
  @override
  Map<String, TfArg<Object?>> get argMap => {'job_type': jobType};
}

/// The [BigqueryReservationAssignmentWorkload.schedulingPolicy] choice: sets `scheduling_policy`.
final class BigqueryReservationAssignmentWorkloadSchedulingPolicy
    extends BigqueryReservationAssignmentWorkload {
  const BigqueryReservationAssignmentWorkloadSchedulingPolicy(
    this.schedulingPolicy,
  );

  final BigqueryReservationAssignmentSchedulingPolicy schedulingPolicy;

  @internal
  @override
  String get blockKey => 'scheduling_policy';

  @internal
  @override
  Map<String, Object?> encode() => {
    'scheduling_policy': schedulingPolicy.encode(),
  };

  @internal
  @override
  Map<String, TfArg<Object?>> get argMap => {
    'scheduling_policy': TfArg.literal(schedulingPolicy.encode()),
  };
}

/// Typed helper for the `scheduling_policy` block of
/// `google_bigquery_reservation_assignment` (derived from provider schema).
@immutable
final class BigqueryReservationAssignmentSchedulingPolicy {
  const BigqueryReservationAssignmentSchedulingPolicy({
    this.concurrency,
    this.maxSlots,
  });

  final TfArg<num>? concurrency;

  final TfArg<num>? maxSlots;

  @internal
  Map<String, Object?> encode() => {
    'concurrency': ?concurrency?.toTfJson(),
    'max_slots': ?maxSlots?.toTfJson(),
  };
}

/// Factory wrapper for `google_bigquery_reservation_assignment`.
///
/// The BigqueryReservation Assignment resource.
final class GoogleBigqueryReservationAssignment extends Resource {
  static const String tfType = 'google_bigquery_reservation_assignment';

  GoogleBigqueryReservationAssignment(
    super.localName, {
    required TfArg<String> assignee,
    required BigqueryReservationAssignmentWorkload workload,
    TfArg<String>? location,
    TfArg<String>? project,
    required RefTo<GoogleBigqueryReservation> reservation,
    super.lifecycle,
    super.dependsOn,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           'assignee': assignee,
           ...workload.argMap,
           'location': ?location,
           'project': ?project,
           'reservation': reservation.encodeAs('name'),
         },
       );

  @override
  Set<String> get sensitiveFields =>
      _googleBigqueryReservationAssignmentSensitive;

  /// A reference to this resource, for arguments typed
  /// `RefTo<GoogleBigqueryReservationAssignment>`.
  RefTo<GoogleBigqueryReservationAssignment> get ref => RefTo.of(this);

  /// Reference to `name` attribute.
  TfRef<String> get name => TfRef.attribute<String>(this, 'name');

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `state` attribute.
  TfRef<String> get state => TfRef.attribute<String>(this, 'state');

  /// Reference to `assignee` attribute.
  TfRef<String> get assignee => TfRef.attribute<String>(this, 'assignee');

  /// Reference to `deletion_policy` attribute.
  TfRef<String> get deletionPolicy =>
      TfRef.attribute<String>(this, 'deletion_policy');

  /// Reference to `job_type` attribute.
  TfRef<String> get jobType => TfRef.attribute<String>(this, 'job_type');

  /// Reference to `location` attribute.
  TfRef<String> get location => TfRef.attribute<String>(this, 'location');

  /// Reference to `principal` attribute.
  TfRef<String> get principal => TfRef.attribute<String>(this, 'principal');

  /// Reference to `project` attribute.
  TfRef<String> get project => TfRef.attribute<String>(this, 'project');

  /// Reference to `reservation` attribute.
  TfRef<String> get reservation => TfRef.attribute<String>(this, 'reservation');
}
