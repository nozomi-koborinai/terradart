import '../wrapper_overrides/wrapper_override.dart';

class OutputDirResolver {
  const OutputDirResolver({required this.aliases, this.typePrefix = 'google_'});

  final Map<String, String> aliases;

  final String typePrefix;

  String resolve({
    required String terraformType,
    String? mmProduct,
    required WrapperOverrideKind kind,
  }) {
    if (kind == WrapperOverrideKind.dataSource) {
      return 'data';
    }

    if (mmProduct != null) {
      return aliases[mmProduct] ?? mmProduct;
    }

    final stripped =
        typePrefix.isNotEmpty && terraformType.startsWith(typePrefix)
        ? terraformType.substring(typePrefix.length)
        : terraformType;

    final segments = stripped.split('_');
    for (var len = segments.length; len > 1; len--) {
      final candidate = segments.take(len).join('_');
      if (aliases.containsKey(candidate)) {
        return aliases[candidate]!;
      }
    }

    final firstSegment = segments.first;
    return aliases[firstSegment] ?? firstSegment;
  }
}
