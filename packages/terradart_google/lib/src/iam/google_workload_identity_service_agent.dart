// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `google_workload_identity_service_agent`.
const Set<String> _googleWorkloadIdentityServiceAgentSensitive = <String>{};

/// Factory wrapper for `google_workload_identity_service_agent`.
///
/// A Service Agent within the Workload Identity API.
///
/// Workload Identity **service agent** — calls
/// `generateServiceAgents` so Google-managed service-agent
/// identities exist for one [parent] service producer.
/// Creating the resource does **not** provision a VM, start a
/// job, or grant IAM (do not wire the official `for_each` role
/// grants in a smoke stack).
///
/// Prefer a thin smoke stack: [parent] is
/// `projects/$projectNumber/locations/global/serviceProducers/pubsub.googleapis.com`
/// (an API the stack already uses). Magic Modules sets
/// `exclude_delete` — destroy drops Terraform state; the API
/// cannot remove Google-owned service agents. The wrap fixture
/// (provider 7.43.0) has no `deletion_policy` attribute.
///
/// Enable `workloadidentity.googleapis.com` via
/// [GoogleProjectService] before apply. Resolve the project
/// *number* with [GoogleProject] `.number`.
///
/// Example:
/// ```dart
/// GoogleWorkloadIdentityServiceAgent(
///   localName: 'pubsub_agents',
///   parent: TfArg.literal(
///     'projects/${current.number.interpolation}/locations/global/serviceProducers/pubsub.googleapis.com',
///   ),
/// );
/// ```
final class GoogleWorkloadIdentityServiceAgent extends Resource {
  static const String tfType = 'google_workload_identity_service_agent';

  GoogleWorkloadIdentityServiceAgent({
    required super.localName,
    required TfArg<String> parent,
    super.lifecycle,
    super.dependsOn,
  }) : super(terraformType: tfType, argMap: {'parent': parent});

  @override
  Set<String> get sensitiveFields =>
      _googleWorkloadIdentityServiceAgentSensitive;

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `service_agents` attribute.
  TfRef<List<Map<String, Object?>>> get serviceAgents =>
      TfRef.attribute<List<Map<String, Object?>>>(this, 'service_agents');
}
