import '../../ir/resource_def.dart';
import 'provider_rules.dart';

final class GoogleProviderRules extends ProviderRules {
  const GoogleProviderRules();

  @override
  String get providerId => 'hashicorp/google';

  @override
  Map<String, String> get outputDirAliases => _aliases;

  @override
  List<String> universalGetters(ResourceDef def) {
    final attrs = def.root.attributes.map((a) => a.name).toSet();
    final lines = <String>[];
    if (attrs.contains('id')) {
      lines.add("TfRef<String> get id => TfRef.attribute<String>(this, 'id');");
    }
    if (attrs.contains('name')) {
      lines.add(
        "TfRef<String> get nameRef => TfRef.attribute<String>(this, 'name');",
      );
    }
    return lines;
  }

  /// Google provider alias map. Bootstrap entries derived from the 13 yaml
  /// files shipped in Phase 4.1; extend during Phase 4.5 wave rollout when
  /// new MM products land.
  static const Map<String, String> _aliases = {
    // Strategy 1 — MM `product` field normalization (snake_case alignment).
    'cloudtasks': 'cloud_tasks',
    'secretmanager': 'secret_manager',
    'cloudscheduler': 'cloud_scheduler',
    'resourcemanager': 'project',

    // Strategy 2 — terraform-type prefix / segment overrides.
    'cloud_tasks': 'cloud_tasks',
    'secret_manager': 'secret_manager',
    'cloud_scheduler': 'cloud_scheduler',
    'service_account': 'iam',
    'project_service': 'project',

    // Phase 4.5 pilot — additional MM-product alias.
    'cloudrunv2': 'cloud_run',

    // Phase D — product folding: terraform-type prefix -> product directory.
    // Closes the convergence outputDir gap via resolver Step 2 (longest-prefix)
    // / Step 3 (segment-1). Keys verified against the tracer.
    'artifact_registry': 'artifact_registry',
    'certificate': 'certificate_manager',
    'certificate_manager': 'certificate_manager',
    'cloud_run': 'cloud_run',
    'cloudbuild': 'cloud_build',
    'cloudbuildv2': 'cloud_build',
    'cloudfunctions2': 'cloud_functions',
    'firebase_app_check': 'firebase_app_check',
    'firebase_app_hosting': 'firebase_app_hosting',
    'firebase_data_connect': 'firebase_data_connect',
    'firebase_remote_config': 'firebase_remote_config',
    'project_iam': 'iam',
    'service_networking': 'service_networking',

    // Wave 25 — Serverless VPC Access shares the service_networking barrel.
    'vpc_access': 'service_networking',

    // Wave 9 — GKE Hub factories share the `container` barrel with GKE core.
    'gke': 'container',

    // Container Analysis (`google_container_analysis_*`) — distinct from GKE.
    'containeranalysis': 'container_analysis',
    'container_analysis': 'container_analysis',

    // Wave 10 — GKE Backup (distinct from Hub / core GKE).
    'gke_backup': 'gke_backup',

    // License Manager (`google_license_manager_*` → segment `license`).
    'license': 'license_manager',

    // Vertex AI Search (`google_discovery_engine_*` → segment `discovery`).
    'discovery': 'discovery_engine',

    // Essential Contacts (`google_essential_contacts_*` → segment `essential`).
    'access': 'access_context_manager',
    'access_context': 'access_context_manager',
    'access_context_manager': 'access_context_manager',
    'accesscontextmanager': 'access_context_manager',
    'essential': 'essential_contacts',

    // Service Directory (`google_service_directory_*` → segment `service`).
    'service_directory': 'service_directory',

    // Document AI (`google_document_ai_*` → segment `document`).
    'document_ai': 'document_ai',

    // Parameter Manager (`google_parameter_manager_*` → segment `parameter`).
    'parameter_manager': 'parameter_manager',

    // Vertex AI (`google_vertex_ai_*` → segment `vertex`).
    'vertex_ai': 'vertex_ai',

    // Wave 76 — OS Config (`google_os_config_*` → segment `os`).
    'os': 'os_config',
    'os_config': 'os_config',

    // Wave 76 — Binary Authorization (`google_binary_authorization_*`).
    'binary': 'binary_authorization',
    'binary_authorization': 'binary_authorization',

    // App Hub (`google_apphub_*`).
    'apphub': 'apphub',

    // Wave 77 — API Keys (`google_apikeys_*`).
    'apikeys': 'apikeys',

    // Wave 77 — reCAPTCHA Enterprise (`google_recaptcha_enterprise_*`).
    'recaptcha': 'recaptcha',
    'recaptcha_enterprise': 'recaptcha',

    // Wave 77 — Network Management (`google_network_management_*` → network barrel).
    'network_management': 'network',
  };
}
