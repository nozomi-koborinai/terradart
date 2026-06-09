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

    // Wave 9 — GKE Hub factories share the `container` barrel with GKE core.
    'gke': 'container',
  };
}
