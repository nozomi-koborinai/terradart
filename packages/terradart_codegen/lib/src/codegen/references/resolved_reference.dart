const String principalClassName = 'IamPrincipal';

const Map<String, ({String outputDir, String file})> principalTypes = {
  principalClassName: (outputDir: 'iam', file: 'iam_principal'),
  'AppwritePermission': (outputDir: 'auth', file: 'appwrite_permission'),
};

final class ResolvedReference {
  const ResolvedReference({
    required this.target,
    required this.className,
    required this.outputDir,
    required this.attribute,
    required this.list,
    this.package,
    this.dartName,
    this.absorbed = const [],
  });

  ResolvedReference.principal({
    required this.list,
    this.package,
    this.className = principalClassName,
  }) : target = principalTypes[className]!.file,
       outputDir = principalTypes[className]!.outputDir,
       attribute = '',
       dartName = null,
       absorbed = const [];

  final String target;
  final String className;

  final String? dartName;

  final List<String> absorbed;

  final String? package;

  final String outputDir;

  final String attribute;

  final bool list;

  bool get principal => principalTypes.containsKey(className);

  String get dartType => principal
      ? (list ? 'TfArg<List<$className>>' : className)
      : (list ? 'TfArg<List<RefTo<$className>>>' : 'RefTo<$className>');

  String get encode => principal ? '' : ".encodeAs('$attribute')";

  String get import => "import '../$outputDir/$target.dart' show $className;";
}
