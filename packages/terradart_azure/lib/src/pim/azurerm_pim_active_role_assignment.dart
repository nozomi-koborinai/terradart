// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:meta/meta.dart';
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `azurerm_pim_active_role_assignment`.
const Set<String> _azurermPimActiveRoleAssignmentSensitive = <String>{};

/// Typed helper for the `schedule` block of
/// `azurerm_pim_active_role_assignment` (derived from provider schema).
@immutable
final class PimActiveRoleAssignmentSchedule {
  const PimActiveRoleAssignmentSchedule({this.startDateTime, this.expiration});

  final TfArg<String>? startDateTime;

  final PimActiveRoleAssignmentExpiration? expiration;

  @internal
  Map<String, Object?> encode() => {
    'start_date_time': ?startDateTime?.toTfJson(),
    'expiration': ?expiration?.encode(),
  };
}

/// At most one of `duration_days`, `duration_hours`, `end_date_time` on the `schedule.expiration` block of `azurerm_pim_active_role_assignment`: the provider rejects
/// more than one, so each variant sets one of them and a
/// null choice sets none.
///
/// Pick one with a dot shorthand: `.durationDays(...)`.
sealed class PimActiveRoleAssignmentExpiration {
  const PimActiveRoleAssignmentExpiration();

  /// Sets `duration_days`.
  const factory PimActiveRoleAssignmentExpiration.durationDays(
    TfArg<num> durationDays,
  ) = PimActiveRoleAssignmentExpirationDurationDays;

  /// Sets `duration_hours`.
  const factory PimActiveRoleAssignmentExpiration.durationHours(
    TfArg<num> durationHours,
  ) = PimActiveRoleAssignmentExpirationDurationHours;

  /// Sets `end_date_time`.
  const factory PimActiveRoleAssignmentExpiration.endDateTime(
    TfArg<String> endDateTime,
  ) = PimActiveRoleAssignmentExpirationEndDateTime;

  /// The Terraform argument this choice sets.
  @internal
  String get blockKey;

  @internal
  Map<String, Object?> encode();
}

/// The [PimActiveRoleAssignmentExpiration.durationDays] choice: sets `duration_days`.
final class PimActiveRoleAssignmentExpirationDurationDays
    extends PimActiveRoleAssignmentExpiration {
  const PimActiveRoleAssignmentExpirationDurationDays(this.durationDays);

  final TfArg<num> durationDays;

  @internal
  @override
  String get blockKey => 'duration_days';

  @internal
  @override
  Map<String, Object?> encode() => {'duration_days': durationDays.toTfJson()};
}

/// The [PimActiveRoleAssignmentExpiration.durationHours] choice: sets `duration_hours`.
final class PimActiveRoleAssignmentExpirationDurationHours
    extends PimActiveRoleAssignmentExpiration {
  const PimActiveRoleAssignmentExpirationDurationHours(this.durationHours);

  final TfArg<num> durationHours;

  @internal
  @override
  String get blockKey => 'duration_hours';

  @internal
  @override
  Map<String, Object?> encode() => {'duration_hours': durationHours.toTfJson()};
}

/// The [PimActiveRoleAssignmentExpiration.endDateTime] choice: sets `end_date_time`.
final class PimActiveRoleAssignmentExpirationEndDateTime
    extends PimActiveRoleAssignmentExpiration {
  const PimActiveRoleAssignmentExpirationEndDateTime(this.endDateTime);

  final TfArg<String> endDateTime;

  @internal
  @override
  String get blockKey => 'end_date_time';

  @internal
  @override
  Map<String, Object?> encode() => {'end_date_time': endDateTime.toTfJson()};
}

/// Typed helper for the `ticket` block of
/// `azurerm_pim_active_role_assignment` (derived from provider schema).
@immutable
final class PimActiveRoleAssignmentTicket {
  const PimActiveRoleAssignmentTicket({this.number, this.system});

  final TfArg<String>? number;

  final TfArg<String>? system;

  @internal
  Map<String, Object?> encode() => {
    'number': ?number?.toTfJson(),
    'system': ?system?.toTfJson(),
  };
}

/// Factory wrapper for `azurerm_pim_active_role_assignment`.
final class AzurermPimActiveRoleAssignment extends Resource {
  static const String tfType = 'azurerm_pim_active_role_assignment';

  AzurermPimActiveRoleAssignment(
    super.localName, {
    TfArg<String>? justification,
    required TfArg<String> principalId,
    required TfArg<String> roleDefinitionId,
    required TfArg<String> scope,
    PimActiveRoleAssignmentSchedule? schedule,
    PimActiveRoleAssignmentTicket? ticket,
    super.lifecycle,
    super.dependsOn,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           'justification': ?justification,
           'principal_id': principalId,
           'role_definition_id': roleDefinitionId,
           'scope': scope,
           if (schedule != null) 'schedule': TfArg.literal(schedule.encode()),
           if (ticket != null) 'ticket': TfArg.literal(ticket.encode()),
         },
       );

  @override
  Set<String> get sensitiveFields => _azurermPimActiveRoleAssignmentSensitive;

  /// A reference to this resource, for arguments typed
  /// `RefTo<AzurermPimActiveRoleAssignment>`.
  RefTo<AzurermPimActiveRoleAssignment> get ref => RefTo.of(this);

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `principal_type` attribute.
  TfRef<String> get principalType =>
      TfRef.attribute<String>(this, 'principal_type');

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
