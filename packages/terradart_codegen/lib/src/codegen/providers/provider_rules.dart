import '../../ir/resource_def.dart';

abstract class ProviderRules {
  const ProviderRules();

  String get providerId;

  Map<String, String> get outputDirAliases;

  List<String> universalGetters(ResourceDef def);

  String get terraformTypePrefix;

  bool get typedNestedDefaults => false;

  bool get derivedEnumDefaults => false;

  bool get exactlyOneDefaults => false;
}
