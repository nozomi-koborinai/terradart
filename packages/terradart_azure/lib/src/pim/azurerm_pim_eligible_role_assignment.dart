// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:meta/meta.dart';
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `azurerm_pim_eligible_role_assignment`.
const Set<String> _azurermPimEligibleRoleAssignmentSensitive = <String>{};

/// Typed helper for the `schedule` block of
/// `azurerm_pim_eligible_role_assignment` (derived from provider schema).
@immutable
final class PimEligibleRoleAssignmentSchedule {
  const PimEligibleRoleAssignmentSchedule({
    this.startDateTime,
    this.expiration,
  });

  final TfArg<String>? startDateTime;

  final PimEligibleRoleAssignmentExpiration? expiration;

  @internal
  Map<String, Object?> encode() => {
    'start_date_time': ?startDateTime?.toTfJson(),
    'expiration': ?expiration?.encode(),
  };
}

/// At most one of `duration_days`, `duration_hours`, `end_date_time` on the `schedule.expiration` block of `azurerm_pim_eligible_role_assignment`: the provider rejects
/// more than one, so each variant sets one of them and a
/// null choice sets none.
///
/// Pick one with a dot shorthand: `.durationDays(...)`.
sealed class PimEligibleRoleAssignmentExpiration {
  const PimEligibleRoleAssignmentExpiration();

  /// Sets `duration_days`.
  const factory PimEligibleRoleAssignmentExpiration.durationDays(
    TfArg<num> durationDays,
  ) = PimEligibleRoleAssignmentExpirationDurationDays;

  /// Sets `duration_hours`.
  const factory PimEligibleRoleAssignmentExpiration.durationHours(
    TfArg<num> durationHours,
  ) = PimEligibleRoleAssignmentExpirationDurationHours;

  /// Sets `end_date_time`.
  const factory PimEligibleRoleAssignmentExpiration.endDateTime(
    TfArg<String> endDateTime,
  ) = PimEligibleRoleAssignmentExpirationEndDateTime;

  /// The Terraform argument this choice sets.
  @internal
  String get blockKey;

  @internal
  Map<String, Object?> encode();
}

/// The [PimEligibleRoleAssignmentExpiration.durationDays] choice: sets `duration_days`.
final class PimEligibleRoleAssignmentExpirationDurationDays
    extends PimEligibleRoleAssignmentExpiration {
  const PimEligibleRoleAssignmentExpirationDurationDays(this.durationDays);

  final TfArg<num> durationDays;

  @internal
  @override
  String get blockKey => 'duration_days';

  @internal
  @override
  Map<String, Object?> encode() => {'duration_days': durationDays.toTfJson()};
}

/// The [PimEligibleRoleAssignmentExpiration.durationHours] choice: sets `duration_hours`.
final class PimEligibleRoleAssignmentExpirationDurationHours
    extends PimEligibleRoleAssignmentExpiration {
  const PimEligibleRoleAssignmentExpirationDurationHours(this.durationHours);

  final TfArg<num> durationHours;

  @internal
  @override
  String get blockKey => 'duration_hours';

  @internal
  @override
  Map<String, Object?> encode() => {'duration_hours': durationHours.toTfJson()};
}

/// The [PimEligibleRoleAssignmentExpiration.endDateTime] choice: sets `end_date_time`.
final class PimEligibleRoleAssignmentExpirationEndDateTime
    extends PimEligibleRoleAssignmentExpiration {
  const PimEligibleRoleAssignmentExpirationEndDateTime(this.endDateTime);

  final TfArg<String> endDateTime;

  @internal
  @override
  String get blockKey => 'end_date_time';

  @internal
  @override
  Map<String, Object?> encode() => {'end_date_time': endDateTime.toTfJson()};
}

/// Typed helper for the `ticket` block of
/// `azurerm_pim_eligible_role_assignment` (derived from provider schema).
@immutable
final class PimEligibleRoleAssignmentTicket {
  const PimEligibleRoleAssignmentTicket({this.number, this.system});

  final TfArg<String>? number;

  final TfArg<String>? system;

  @internal
  Map<String, Object?> encode() => {
    'number': ?number?.toTfJson(),
    'system': ?system?.toTfJson(),
  };
}

/// Factory wrapper for `azurerm_pim_eligible_role_assignment`.
final class AzurermPimEligibleRoleAssignment extends Resource {
  static const String tfType = 'azurerm_pim_eligible_role_assignment';

  AzurermPimEligibleRoleAssignment(
    super.localName, {
    TfArg<String>? condition,
    TfArg<String>? conditionVersion,
    TfArg<String>? justification,
    required TfArg<String> principalId,
    required TfArg<String> roleDefinitionId,
    required TfArg<String> scope,
    PimEligibleRoleAssignmentSchedule? schedule,
    PimEligibleRoleAssignmentTicket? ticket,
    super.lifecycle,
    super.dependsOn,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           'condition': ?condition,
           'condition_version': ?conditionVersion,
           'justification': ?justification,
           'principal_id': principalId,
           'role_definition_id': roleDefinitionId,
           'scope': scope,
           if (schedule != null) 'schedule': TfArg.literal(schedule.encode()),
           if (ticket != null) 'ticket': TfArg.literal(ticket.encode()),
         },
       );

  @override
  Set<String> get sensitiveFields => _azurermPimEligibleRoleAssignmentSensitive;

  /// A reference to this resource, for arguments typed
  /// `RefTo<AzurermPimEligibleRoleAssignment>`.
  RefTo<AzurermPimEligibleRoleAssignment> get ref => RefTo.of(this);

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `principal_type` attribute.
  TfRef<String> get principalType =>
      TfRef.attribute<String>(this, 'principal_type');

  /// Reference to `condition` attribute.
  TfRef<String> get condition => TfRef.attribute<String>(this, 'condition');

  /// Reference to `condition_version` attribute.
  TfRef<String> get conditionVersion =>
      TfRef.attribute<String>(this, 'condition_version');

  /// Reference to `justification` attribute.
  TfRef<String> get justification =>
      TfRef.attribute<String>(this, 'justification');

  /// Reference to `principal_id` attribute.
  TfRef<String> get principalId =>
      TfRef.attribute<String>(this, 'principal_id');

  /// Reference to `role_definition_id` attribute.
  TfRef<String> get roleDefinitionId =>
      TfRef.attribute<String>(this, 'role_definition_id');

  /// Reference to `scope` attribute.
  TfRef<String> get scope => TfRef.attribute<String>(this, 'scope');
}
