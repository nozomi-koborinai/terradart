// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:meta/meta.dart';
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `google_saas_runtime_unit`.
const Set<String> _googleSaasRuntimeUnitSensitive = <String>{};

/// Typed helper for the `maintenance` block of
/// `google_saas_runtime_unit` (derived from provider schema).
@immutable
final class SaasRuntimeUnitMaintenance {
  const SaasRuntimeUnitMaintenance({this.pinnedUntilTime});

  final TfArg<String>? pinnedUntilTime;

  Map<String, Object?> encode() => {
    'pinned_until_time': ?pinnedUntilTime?.toTfJson(),
  };
}

/// Factory wrapper for `google_saas_runtime_unit`.
///
/// A Unit is the fundamental structural building block of a SaaS offering. Each
/// Unit is an instance of a UnitKind. It is a versioned, manageable component
/// of a service that has its own lifecycle, representing elements like
/// infrastructure, workloads, or an entire application stack that a service
/// producer intends to manage as a single entity.
final class GoogleSaasRuntimeUnit extends Resource {
  static const String tfType = 'google_saas_runtime_unit';

  GoogleSaasRuntimeUnit({
    required super.localName,
    TfArg<Map<String, String>>? annotations,
    TfArg<String>? deletionPolicy,
    TfArg<Map<String, String>>? labels,
    required TfArg<String> location,
    TfArg<String>? managementMode,
    TfArg<String>? project,
    TfArg<String>? tenant,
    required TfArg<String> unitId,
    TfArg<String>? unitKind,
    SaasRuntimeUnitMaintenance? maintenance,
    super.lifecycle,
    super.dependsOn,
    String? provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         provider: provider ?? 'google-beta',
         argMap: {
           'annotations': ?annotations,
           'deletion_policy': ?deletionPolicy,
           'labels': ?labels,
           'location': location,
           'management_mode': ?managementMode,
           'project': ?project,
           'tenant': ?tenant,
           'unit_id': unitId,
           'unit_kind': ?unitKind,
           if (maintenance != null)
             'maintenance': TfArg.literal(maintenance.encode()),
         },
       );

  @override
  Set<String> get sensitiveFields => _googleSaasRuntimeUnitSensitive;

  /// A reference to this resource, for arguments typed
  /// `RefTo<GoogleSaasRuntimeUnit>`.
  RefTo<GoogleSaasRuntimeUnit> get ref => RefTo.of(this);

  /// Reference to `name` attribute.
  TfRef<String> get nameRef => TfRef.attribute<String>(this, 'name');

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `conditions` attribute.
  TfRef<List<Map<String, Object?>>> get conditions =>
      TfRef.attribute<List<Map<String, Object?>>>(this, 'conditions');

  /// Reference to `create_time` attribute.
  TfRef<String> get createTime => TfRef.attribute<String>(this, 'create_time');

  /// Reference to `dependencies` attribute.
  TfRef<List<Map<String, Object?>>> get dependencies =>
      TfRef.attribute<List<Map<String, Object?>>>(this, 'dependencies');

  /// Reference to `dependents` attribute.
  TfRef<List<Map<String, Object?>>> get dependents =>
      TfRef.attribute<List<Map<String, Object?>>>(this, 'dependents');

  /// Reference to `effective_annotations` attribute.
  TfRef<Map<String, String>> get effectiveAnnotations =>
      TfRef.attribute<Map<String, String>>(this, 'effective_annotations');

  /// Reference to `effective_labels` attribute.
  TfRef<Map<String, String>> get effectiveLabels =>
      TfRef.attribute<Map<String, String>>(this, 'effective_labels');

  /// Reference to `input_variables` attribute.
  TfRef<List<Map<String, Object?>>> get inputVariables =>
      TfRef.attribute<List<Map<String, Object?>>>(this, 'input_variables');

  /// Reference to `ongoing_operations` attribute.
  TfRef<List<String>> get ongoingOperations =>
      TfRef.attribute<List<String>>(this, 'ongoing_operations');

  /// Reference to `output_variables` attribute.
  TfRef<List<Map<String, Object?>>> get outputVariables =>
      TfRef.attribute<List<Map<String, Object?>>>(this, 'output_variables');

  /// Reference to `pending_operations` attribute.
  TfRef<List<String>> get pendingOperations =>
      TfRef.attribute<List<String>>(this, 'pending_operations');

  /// Reference to `release` attribute.
  TfRef<String> get release => TfRef.attribute<String>(this, 'release');

  /// Reference to `scheduled_operations` attribute.
  TfRef<List<String>> get scheduledOperations =>
      TfRef.attribute<List<String>>(this, 'scheduled_operations');

  /// Reference to `state` attribute.
  TfRef<String> get state => TfRef.attribute<String>(this, 'state');

  /// Reference to `system_cleanup_at` attribute.
  TfRef<String> get systemCleanupAt =>
      TfRef.attribute<String>(this, 'system_cleanup_at');

  /// Reference to `system_managed_state` attribute.
  TfRef<String> get systemManagedState =>
      TfRef.attribute<String>(this, 'system_managed_state');

  /// Reference to `terraform_labels` attribute.
  TfRef<Map<String, String>> get terraformLabels =>
      TfRef.attribute<Map<String, String>>(this, 'terraform_labels');

  /// Reference to `uid` attribute.
  TfRef<String> get uid => TfRef.attribute<String>(this, 'uid');

  /// Reference to `update_time` attribute.
  TfRef<String> get updateTime => TfRef.attribute<String>(this, 'update_time');
}
