// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `google_access_context_manager_service_perimeter_resource`.
const Set<String> _googleAccessContextManagerServicePerimeterResourceSensitive =
    <String>{};

/// Factory wrapper for `google_access_context_manager_service_perimeter_resource`.
///
/// Allows configuring a single GCP resource that should be inside the `status`
/// block of a service perimeter. This resource is intended to be used in cases
/// where it is not possible to compile a full list of projects to include in a
/// `google_access_context_manager_service_perimeter` resource, to enable them
/// to be added separately. If your perimeter is in dry-run mode use
/// `google_access_context_manager_service_perimeter_dry_run_resource` instead.
///
/// ~> **Note:** If this resource is used alongside a
/// `google_access_context_manager_service_perimeter` resource, the service
/// perimeter resource must have a `lifecycle` block with `ignore_changes =
/// [status[0].resources]` so they don't fight over which resources should be in
/// the policy.
///
/// ACM live perimeter project attachment — leftover factory on the
/// apply-excluded path (synth + `terraform validate` only).
///
/// Needs an organization / folder / external artifact that
/// standalone terradart-validate cannot supply. Do not apply.
final class GoogleAccessContextManagerServicePerimeterResource
    extends Resource {
  static const String tfType =
      'google_access_context_manager_service_perimeter_resource';

  GoogleAccessContextManagerServicePerimeterResource({
    required super.localName,
    TfArg<String>? deletionPolicy,
    required TfArg<String> perimeterName,
    required TfArg<String> resource,
    super.lifecycle,
    super.dependsOn,
  }) : super(
         terraformType: tfType,
         argMap: {
           if (deletionPolicy != null) 'deletion_policy': deletionPolicy,
           'perimeter_name': perimeterName,
           'resource': resource,
         },
       );

  @override
  Set<String> get sensitiveFields =>
      _googleAccessContextManagerServicePerimeterResourceSensitive;

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `access_policy_id` attribute.
  TfRef<String> get accessPolicyId =>
      TfRef.attribute<String>(this, 'access_policy_id');

  /// Reference to `etag` attribute.
  TfRef<String> get etag => TfRef.attribute<String>(this, 'etag');
}
