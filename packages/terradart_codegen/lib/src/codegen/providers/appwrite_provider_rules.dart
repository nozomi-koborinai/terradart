import '../../ir/resource_def.dart';
import 'provider_rules.dart';

final class AppwriteProviderRules extends ProviderRules {
  const AppwriteProviderRules();

  @override
  String get providerId => 'appwrite/appwrite';

  @override
  String get terraformTypePrefix => 'appwrite_';

  @override
  bool get typedNestedDefaults => true;

  @override
  bool get derivedEnumDefaults => true;

  @override
  bool get exactlyOneDefaults => true;

  @override
  Map<String, String> get outputDirAliases => const {
    'backup': 'backups',
    'function': 'functions',
    'site': 'sites',
    'webhook': 'webhooks',
  };

  @override
  List<String> universalGetters(ResourceDef def) {
    final attrs = def.root.attributes.map((a) => a.name).toSet();
    if (attrs.contains('id')) {
      return ["TfRef<String> get id => TfRef.attribute<String>(this, 'id');"];
    }
    return const [];
  }
}
