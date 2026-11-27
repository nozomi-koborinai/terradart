import 'package:yaml/yaml.dart';

import 'naming.dart';

const googleApiSuffix = '.googleapis.com';

typedef GoogleApiConstant = ({String dartName, String service});

/// The ledger of `tool/required_apis.yaml`: the Google API each Terraform
/// type prefix needs, and one `GoogleApi` constant per API it names.
final class RequiredApis {
  const RequiredApis._(this.rules, this.apis);

  /// Terraform type prefix → service, in ledger order. A null service carves
  /// a type out of a broader prefix.
  final Map<String, String?> rules;

  /// The distinct services of [rules], sorted, each with its constant name.
  final List<GoogleApiConstant> apis;
}

final _typePrefix = RegExp(r'^google_[a-z0-9_]+$');
final _service = RegExp(r'^[a-z0-9]([a-z0-9.-]*[a-z0-9])?\.googleapis\.com$');

/// Parses the ledger, throwing a [FormatException] on a key that is not a
/// `google_` type prefix or a value that is neither null nor a lowercase
/// `<name>.googleapis.com`.
RequiredApis parseRequiredApis(String source) {
  final doc = loadYaml(source);
  if (doc is! YamlMap || doc.keys.any((k) => k != 'apis')) {
    throw const FormatException('expected a map with one key, apis.');
  }
  final apis = doc['apis'];
  if (apis is! YamlMap) {
    throw const FormatException('apis: expected a map of type prefixes.');
  }
  final rules = <String, String?>{};
  for (final MapEntry(:key, :value) in apis.entries) {
    if (key is! String || !_typePrefix.hasMatch(key)) {
      throw FormatException('apis: "$key" is not a google_ type prefix.');
    }
    if (value != null && (value is! String || !_service.hasMatch(value))) {
      throw FormatException(
        'apis: $key: "$value" is not a Google API (<name>$googleApiSuffix).',
      );
    }
    rules[key] = value as String?;
  }
  final services = {...rules.values.nonNulls}.toList()..sort();
  final names = googleApiMemberNames(services);
  return RequiredApis._(rules, [
    for (var i = 0; i < services.length; i++)
      (dartName: names[i], service: services[i]),
  ]);
}

/// The `GoogleApi` constant name of each of [services]: the enum member name
/// of its label (the service before `.googleapis.com`), with `Case` after
/// `custom`, which names the `GoogleApi.custom` constructor.
List<String> googleApiMemberNames(List<String> services) {
  final names = [
    for (final name in enumMemberNames([
      for (final s in services)
        s.substring(0, s.length - googleApiSuffix.length),
    ]))
      name == 'custom' ? 'customCase' : name,
  ];
  if (names.toSet().length != names.length) {
    throw FormatException('apis: two services name one constant: $names');
  }
  return names;
}

/// The Dart library of `GoogleApi`, its constants, and
/// `requiredApiForTerraformType` over the rules of [ledger].
String googleApiSource(RequiredApis ledger) {
  final dartName = {for (final a in ledger.apis) a.service: a.dartName};
  final buf = StringBuffer()
    ..writeln("import 'package:terradart_core/terradart_core.dart';")
    ..writeln()
    ..write(_classDoc)
    ..writeln(
      'extension type const GoogleApi._(TfArg<String> _) '
      'implements TfArg<String> {',
    )
    ..write(_constructors);
  for (final a in ledger.apis) {
    final literal = dartSingleQuotedBody(a.service);
    buf
      ..writeln('  /// `$literal`')
      ..writeln(
        "  static const ${a.dartName} = GoogleApi._(TfArgLiteral('$literal'));",
      )
      ..writeln();
  }
  buf
    ..writeln(
      '  static const List<GoogleApi> values = '
      '[${ledger.apis.map((a) => a.dartName).join(', ')}];',
    )
    ..writeln('}')
    ..writeln()
    ..writeln(
      '// tool/required_apis.yaml: the longest matching prefix wins, and a '
      'null',
    )
    ..writeln('// value carves a type out of a broader prefix.')
    ..writeln('const Map<String, GoogleApi?> _apiByTypePrefix = {');
  for (final MapEntry(key: prefix, value: service) in ledger.rules.entries) {
    final api = service == null ? 'null' : 'GoogleApi.${dartName[service]}';
    buf.writeln("  '${dartSingleQuotedBody(prefix)}': $api,");
  }
  buf
    ..writeln('};')
    ..writeln()
    ..write(_lookup);
  return buf.toString();
}

const _classDoc = '''
/// A Google API: the `service` of a `GoogleProjectService`, and what
/// [requiredApiForTerraformType] returns.
///
/// ```dart
/// add(GoogleProjectService('compute', service: .compute));
/// add(
///   GoogleProjectService(
///     'generative_language',
///     service: .custom('generativelanguage.googleapis.com'),
///   ),
/// );
/// add(
///   GoogleProjectService(
///     'endpoints',
///     service: .arg(.literal('orders.endpoints.my-project.cloud.goog')),
///   ),
/// );
/// ```
///
/// There is one constant per API a wrapped resource type needs, named after
/// the label before `.googleapis.com` as an enum member is
/// (`compute.googleapis.com` is `compute`). `.custom` takes any other Google
/// API. `.arg` takes any string argument unchecked: a Terraform variable,
/// another block's attribute, or a service that is not a Google API, such as
/// a Cloud Endpoints service.
''';

const _constructors = r'''
  /// The Google API [service] (`<name>.googleapis.com`) no constant names.
  ///
  /// Throws an [ArgumentError] when [service] is not such a name. The check
  /// is why this constructor is not `const`.
  factory GoogleApi.custom(String service) {
    if (!service.endsWith('.googleapis.com') ||
        service.length == '.googleapis.com'.length) {
      throw ArgumentError.value(
        service,
        'service',
        'is not a Google API (<name>.googleapis.com); pass another service '
            'through GoogleApi.arg',
      );
    }
    return GoogleApi._(TfArg.literal(service));
  }

  GoogleApi.variable(String name) : this._(TfArg.variable(name));
  GoogleApi.expression(String template) : this._(TfArg.expression(template));
  const GoogleApi.arg(TfArg<String> arg) : this._(arg);

''';

const _lookup = r'''
final _iamAdjunct = RegExp(r'_iam_(member|binding|policy)$');

/// The Google API a resource of [terraformType] needs enabled, such as
/// `GoogleApi.redis` for `google_redis_instance`.
///
/// An IAM adjunct (`*_iam_member`, `*_iam_binding`, `*_iam_policy`) needs the
/// API of the resource it grants on: `google_iap_tunnel_instance_iam_member`
/// needs `GoogleApi.iap`. Returns null for `google_project`,
/// `google_project_service` and their adjuncts, and for a type no rule covers.
///
/// The lookup only reads: enabling the API stays a `GoogleProjectService`
/// the stack adds.
///
/// ```dart
/// import 'package:terradart_google/project.dart';
/// import 'package:terradart_google/redis.dart';
///
/// final api = requiredApiForTerraformType(GoogleRedisInstance.tfType);
/// // api == GoogleApi.redis
/// ```
GoogleApi? requiredApiForTerraformType(String terraformType) {
  final type = terraformType.replaceFirst(_iamAdjunct, '');
  if (type == 'google_project_service' || type == 'google_project') {
    return null;
  }
  String? match;
  for (final prefix in _apiByTypePrefix.keys) {
    if (type.startsWith(prefix) && prefix.length > (match?.length ?? 0)) {
      match = prefix;
    }
  }
  return match == null ? null : _apiByTypePrefix[match];
}
''';
