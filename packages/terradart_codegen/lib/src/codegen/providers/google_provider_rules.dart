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
  };
}
