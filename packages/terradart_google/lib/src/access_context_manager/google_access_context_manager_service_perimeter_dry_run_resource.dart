// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `google_access_context_manager_service_perimeter_dry_run_resource`.
const Set<String>
_googleAccessContextManagerServicePerimeterDryRunResourceSensitive = <String>{};

/// Factory wrapper for `google_access_context_manager_service_perimeter_dry_run_resource`.
///
/// Allows configuring a single GCP resource that should be inside of the `spec`
/// block of a dry run service perimeter. This resource is intended to be used
/// in cases where it is not possible to compile a full list of projects to
/// include in a `google_access_context_manager_service_perimeter` resource, to
/// enable them to be added separately. If your perimeter is NOT in dry-run mode
/// use `google_access_context_manager_service_perimeter_resource` instead.
///
/// ~> **Note:** If this resource is used alongside a
/// `google_access_context_manager_service_perimeter` resource, the service
/// perimeter resource must have a `lifecycle` block with `ignore_changes =
/// [spec[0].resources]` so they don't fight over which resources should be in
/// the policy.
///
/// Access Context Manager **dry-run perimeter resource** — an
/// additive project attached to a service perimeter `spec` (dry-run)
/// only. Prefer a dedicated perimeter with
/// [useExplicitDryRunSpec] so the attachment does **not** change
/// live `status` evaluation.
///
/// Prefer a thin smoke stack: [perimeterName] from that dry-run
/// perimeter, placeholder [resource] `projects/987654321`, and
/// [deletionPolicy] `DELETE`. Set the sibling perimeter's
/// `lifecycle.ignore_changes` to `spec[0].resources` so the two
/// resources do not fight.
///
/// `access_context_quickstart` is apply-smoke skipped (needs a real
/// organization id), so this factory is synth + `terraform validate`
/// only.
///
/// Example:
/// ```dart
/// GoogleAccessContextManagerServicePerimeterDryRunResource(
///   localName: 'dry_run_project',
///   perimeterName: TfArg.ref(dryRun.nameRef),
///   resource: TfArg.literal('projects/987654321'),
///   deletionPolicy: TfArg.literal('DELETE'),
/// );
/// ```
final class GoogleAccessContextManagerServicePerimeterDryRunResource
    extends Resource {
  static const String tfType =
      'google_access_context_manager_service_perimeter_dry_run_resource';

  GoogleAccessContextManagerServicePerimeterDryRunResource({
    required super.localName,
    required TfArg<String> perimeterName,
    required TfArg<String> resource,
    TfArg<String>? deletionPolicy,
    super.lifecycle,
    super.dependsOn,
  }) : super(
         terraformType: tfType,
         argMap: {
           'perimeter_name': perimeterName,
           'resource': resource,
           if (deletionPolicy != null) 'deletion_policy': deletionPolicy,
         },
       );

  @override
  Set<String> get sensitiveFields =>
      _googleAccessContextManagerServicePerimeterDryRunResourceSensitive;

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `access_policy_id` attribute.
  TfRef<String> get accessPolicyId =>
      TfRef.attribute<String>(this, 'access_policy_id');

  /// Reference to `etag` attribute.
  TfRef<String> get etag => TfRef.attribute<String>(this, 'etag');
}
