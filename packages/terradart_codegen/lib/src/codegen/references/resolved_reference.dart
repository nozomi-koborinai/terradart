/// The hand-written principal type in `terradart_google`
/// (`lib/src/iam/iam_principal.dart`).
const String principalClassName = 'IamPrincipal';

/// The hand-written types a `- principals:` entry can name, by the
/// directory and file under the lane package's `lib/src/` that declare them.
const Map<String, ({String outputDir, String file})> principalTypes = {
  principalClassName: (outputDir: 'iam', file: 'iam_principal'),
  'AppwritePermission': (outputDir: 'auth', file: 'appwrite_permission'),
};

/// A resource input typed `RefTo<className>`.
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

  /// An input that names who a grant is for: [className] is one of
  /// [principalTypes] and the value is passed as it is.
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

  /// The Dart parameter name when it is not the input's (`service` for an
  /// IAM adjunct's `name`).
  final String? dartName;

  /// Sibling top-level keys the reference also fills from the same block
  /// (`location`, `project`) unless the caller sets them.
  final List<String> absorbed;

  /// The package the target wrapper lives in, when it is not the lane's own
  /// (a google-beta input naming a `terradart_google` network).
  final String? package;

  /// The target wrapper's directory under `lib/src/`, for the import.
  final String outputDir;

  /// The attribute the input emits.
  final String attribute;

  /// Whether the input is a list of references (`TfArg<List<RefTo<C>>>`).
  final bool list;

  bool get principal => principalTypes.containsKey(className);

  /// The Dart parameter / field type, before nullability.
  String get dartType => principal
      ? (list ? 'TfArg<List<$className>>' : className)
      : (list ? 'TfArg<List<RefTo<$className>>>' : 'RefTo<$className>');

  /// What follows the value to make it the argument's `TfArg`: nothing for a
  /// principal, which is one.
  String get encode => principal ? '' : ".encodeAs('$attribute')";

  /// The import that brings [className] into a wrapper under `lib/src/`.
  String get import => "import '../$outputDir/$target.dart' show $className;";
}
