import '../ir/resource_def.dart';

class AbstractClassEmitter {
  const AbstractClassEmitter();

  String emit(
    ResourceDef def, {
    required String providerSource,
    List<String>? extraSensitiveFields,
  }) {
    return '';
  }
}
