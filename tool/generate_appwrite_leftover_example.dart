import 'dart:convert';
import 'dart:io';

import 'coverage_dummies.dart';
import 'coverage_stack.dart';
import 'dot_shorthands.dart';

const appwriteLeftoverStack = AppwriteLeftoverGenerator();

final class AppwriteLeftoverGenerator implements CoverageStackGenerator {
  const AppwriteLeftoverGenerator({
    this.omitConstructedIn = 'examples/appwrite_quickstart/lib',
  });

  final String omitConstructedIn;

  @override
  String get slug => 'appwrite_leftover';

  @override
  Set<String> get bindings => const {};

  @override
  RenderedStack render(
    CoverageDummies dummies, {
    required Set<String> exclude,
  }) {
    final enums = _parseEnums(_srcRoot);
    final all = _parseFactories(_srcRoot);
    final covered = _constructedIn(omitConstructedIn, {
      for (final factory in all) factory.className,
    });
    final todo =
        all
            .where(
              (factory) =>
                  !covered.contains(factory.className) &&
                  !exclude.contains(factory.className),
            )
            .toList()
          ..sort((a, b) {
            final kind = a.kind.index.compareTo(b.kind.index);
            if (kind != 0) return kind;
            return a.tfType.compareTo(b.tfType);
          });

    final placed = <(_Factory, List<(_Param, _Written)>)>[];
    final unplaceable = <String, String>{};
    for (final factory in todo) {
      final args = <(_Param, _Written)>[];
      var blocked = false;
      for (final param in factory.required) {
        switch (_argument(factory, param, dummies, enums)) {
          case final _Unplaceable arg:
            unplaceable[factory.className] = arg.reason;
            blocked = true;
          case final _Written arg:
            args.add((param, arg));
        }
        if (blocked) break;
      }
      if (!blocked) placed.add((factory, args));
    }
    return RenderedStack(
      dotShorthands(_source(placed), packageEnums(_srcRoot)),
      unplaceable: unplaceable,
    );
  }
}

const _srcRoot = 'packages/terradart_appwrite/lib/src';
const _typePrefix = 'appwrite_';

const _skipFiles = {
  '_catalog.g.dart',
  'catalog_entry.dart',
  '_provider_version.g.dart',
  'appwrite_provider.dart',
};

enum _Kind { resource, data }

final class _Factory {
  const _Factory({
    required this.className,
    required this.tfType,
    required this.kind,
    required this.required,
  });

  final String className;
  final String tfType;
  final _Kind kind;

  final List<_Param> required;
}

final class _Param {
  const _Param(this.name, this.type);

  final String name;

  final String type;
}

sealed class _Arg {
  const _Arg();
}

final class _Written extends _Arg {
  const _Written(this.dart);

  final String dart;
}

final class _Unplaceable extends _Arg {
  const _Unplaceable(this.reason);

  final String reason;
}

typedef _Enums = Map<String, List<(String member, String raw)>>;

final _enumDecl = RegExp(
  r'extension\s+type\s+const\s+(\w+)\._\([^)]*\)\s+implements\s+TfArg<String>\s*\{(.*?)static\s+const\s+List<',
  dotAll: true,
);
final _enumEntry = RegExp(
  r"static\s+const\s+(\w+)\s*=\s*\w+\._\(\s*TfArgLiteral\(\s*'((?:[^'\\]|\\.)*)'",
);

List<File> _dartFiles(String root) =>
    Directory(root)
        .listSync(recursive: true)
        .whereType<File>()
        .where((file) => file.path.endsWith('.dart'))
        .toList()
      ..sort((a, b) => a.path.compareTo(b.path));

String _basename(String path) {
  final slash = path.lastIndexOf('/');
  return slash < 0 ? path : path.substring(slash + 1);
}

List<_Factory> _parseFactories(String srcRoot) {
  final out = <_Factory>[];
  for (final file in _dartFiles(srcRoot)) {
    if (_skipFiles.contains(_basename(file.path))) continue;
    final src = file.readAsStringSync();
    final classes = RegExp(
      r'final class (\w+) extends (Resource|Data)\b',
    ).allMatches(src).toList();
    for (var i = 0; i < classes.length; i++) {
      final match = classes[i];
      final className = match.group(1)!;
      final end = i + 1 < classes.length ? classes[i + 1].start : src.length;
      final region = src.substring(match.start, end);
      final tfType = RegExp(
        r"static const String tfType = '([^']+)'",
      ).firstMatch(region);
      final ctor = RegExp(
        '${RegExp.escape(className)}\\(\\s*super\\.localName, \\{',
      ).firstMatch(region);
      if (tfType == null || ctor == null) {
        throw StateError('unparseable wrapper $className in ${file.path}');
      }
      final close = region.indexOf('})', ctor.end);
      if (close < 0) {
        throw StateError('no constructor end for $className in ${file.path}');
      }
      final params = region.substring(ctor.end, close);
      out.add(
        _Factory(
          className: className,
          tfType: tfType.group(1)!,
          kind: match.group(2) == 'Resource' ? _Kind.resource : _Kind.data,
          required: [
            for (final param in RegExp(
              r'required\s+(\S+)\s+(\w+)\s*,',
            ).allMatches(params))
              _Param(param.group(2)!, param.group(1)!),
          ],
        ),
      );
    }
  }
  return out;
}

_Enums _parseEnums(String srcRoot) {
  final enums = <String, List<(String, String)>>{};
  for (final file in _dartFiles(srcRoot)) {
    if (_skipFiles.contains(_basename(file.path))) continue;
    final src = file.readAsStringSync();
    for (final match in _enumDecl.allMatches(src)) {
      enums[match.group(1)!] = [
        for (final entry in _enumEntry.allMatches(match.group(2)!))
          (entry.group(1)!, entry.group(2)!.replaceAll(r'\', '')),
      ];
    }
  }
  return enums;
}

Set<String> _constructedIn(String dir, Set<String> classNames) {
  if (classNames.isEmpty) return const {};
  final pattern = RegExp(
    '\\b(?:${classNames.map(RegExp.escape).join('|')})\\(',
  );
  final found = <String>{};
  final root = Directory(dir);
  if (!root.existsSync()) return found;
  for (final file in root.listSync(recursive: true).whereType<File>()) {
    if (!file.path.endsWith('.dart')) continue;
    final src = _stripComments(file.readAsStringSync());
    for (final match in pattern.allMatches(src)) {
      final hit = match.group(0)!;
      found.add(hit.substring(0, hit.length - 1));
    }
  }
  return found;
}

_Arg _argument(
  _Factory factory,
  _Param param,
  CoverageDummies dummies,
  _Enums enums,
) {
  final value = dummies.valueFor(factory.className, param.name);
  final type = param.type;
  if (type == 'Sensitive<String>') {
    if (value is DartDummy) {
      return _Written('Sensitive.expression(${value.dart})');
    }
    final secret = value is LiteralDummy && value.json is String
        ? value.json as String
        : 'leftover';
    return _Written(_sensitiveExpression(secret));
  }
  if (enums[type] case final members?) {
    if (members.isEmpty) return _Unplaceable(_outside(param));
    final raw = value is LiteralDummy && value.json is String
        ? value.json as String
        : null;
    final member = members.firstWhere(
      (entry) => entry.$2 == raw,
      orElse: () => members.first,
    );
    return _Written('$type.${member.$1}');
  }
  final tfArg = RegExp(r'^TfArg<(.+)>$').firstMatch(type);
  if (tfArg != null) {
    return switch (tfArg.group(1)!) {
      'String' => _scalar(value, _Scalar.string, "TfArg.literal('leftover')"),
      'num' ||
      'int' ||
      'double' => _scalar(value, _Scalar.number, 'TfArg.literal(1)'),
      'bool' => _scalar(value, _Scalar.boolean, 'TfArg.literal(false)'),
      'List<String>' => _stringList(value),
      _ => _Unplaceable(_outside(param)),
    };
  }
  if (type.startsWith('RefTo<') && type.endsWith('>')) {
    if (value is DartDummy) return _Written('RefTo.literal(${value.dart})');
    if (value is LiteralDummy && value.json is String) {
      return _Written('RefTo.literal(${value.dart})');
    }
    return const _Written("RefTo.literal('leftover')");
  }
  return _Unplaceable(_outside(param));
}

enum _Scalar { string, number, boolean }

_Arg _scalar(DummyValue? value, _Scalar kind, String fallback) {
  if (value is DartDummy) return _Written('TfArg.literal(${value.dart})');
  if (value is LiteralDummy && _fits(value.json, kind)) {
    return _Written('TfArg.literal(${value.dart})');
  }
  return _Written(fallback);
}

bool _fits(Object json, _Scalar kind) => switch (kind) {
  _Scalar.string => json is String,
  _Scalar.number => json is num,
  _Scalar.boolean => json is bool,
};

_Arg _stringList(DummyValue? value) {
  if (value is DartDummy) return _Written('TfArg.literal(${value.dart})');
  if (value is LiteralDummy) {
    final json = value.json;
    if (json is String) return _Written('TfArg.literal([${value.dart}])');
    if (json is List && json.every((entry) => entry is String)) {
      return _Written('TfArg.literal(${value.dart})');
    }
  }
  return const _Written("TfArg.literal(['leftover'])");
}

// `sensitive()` passes `terraform validate` without a declared variable,
// the form the google data-source generator already writes.
String _sensitiveExpression(String secret) {
  final encoded = jsonEncode(secret);
  return "Sensitive.expression(r'\${sensitive($encoded)}')";
}

String _outside(_Param param) =>
    '${param.name}: required ${param.type} is outside the flat vocabulary';

String _local(_Factory factory) {
  if (!factory.tfType.startsWith(_typePrefix)) {
    throw StateError('${factory.tfType} does not start with $_typePrefix');
  }
  return factory.tfType.substring(_typePrefix.length);
}

String _source(List<(_Factory, List<(_Param, _Written)>)> placed) {
  final out = StringBuffer()
    ..writeln('// GENERATED — dart tool/coverage_stack.dart --lane appwrite')
    ..writeln()
    ..writeln('/// Coverage stack for the `terradart_appwrite` factories that')
    ..writeln(
      '/// `appwrite_quickstart` does not construct, at the current pin.',
    )
    ..writeln('/// Dummy constructor values; synth + terraform validate only.')
    ..writeln('/// Never apply.')
    ..writeln('library;')
    ..writeln()
    ..writeln("import 'package:terradart_appwrite/terradart_appwrite.dart';")
    ..writeln()
    ..writeln('final class AppwriteLeftoverStack extends Stack {');
  if (placed.isEmpty) {
    out.writeln(
      '  AppwriteLeftoverStack() : super(providers: [const AppwriteProvider()]);',
    );
  } else {
    out.writeln(
      '  AppwriteLeftoverStack() : super(providers: [const AppwriteProvider()]) {',
    );
    for (final (factory, args) in placed) {
      out
        ..writeln('    add(')
        ..writeln('      ${factory.className}(')
        ..writeln("        '${_local(factory)}',");
      for (final (param, written) in args) {
        out.writeln('        ${param.name}: ${written.dart},');
      }
      out
        ..writeln('      ),')
        ..writeln('    );');
    }
    out.writeln('  }');
  }
  out.writeln('}');
  return out.toString();
}

String _stripComments(String source) {
  final out = StringBuffer();
  var i = 0;
  while (i < source.length) {
    final c = source[i];
    final raw =
        c == 'r' &&
        i + 1 < source.length &&
        (source[i + 1] == "'" || source[i + 1] == '"') &&
        (i == 0 || !_ident.hasMatch(source[i - 1]));
    if (raw || c == "'" || c == '"') {
      final start = raw ? i + 1 : i;
      if (raw) out.write('r');
      i = _copyString(source, out, start, raw: raw);
      continue;
    }
    if (c == '/' && i + 1 < source.length) {
      final next = source[i + 1];
      if (next == '/') {
        i += 2;
        while (i < source.length && source[i] != '\n') {
          i++;
        }
        continue;
      }
      if (next == '*') {
        i += 2;
        while (i + 1 < source.length &&
            !(source[i] == '*' && source[i + 1] == '/')) {
          i++;
        }
        i = i + 2 <= source.length ? i + 2 : source.length;
        continue;
      }
    }
    out.write(c);
    i++;
  }
  return out.toString();
}

final _ident = RegExp(r'[A-Za-z0-9_]');

int _copyString(String source, StringBuffer out, int i, {required bool raw}) {
  final quote = source[i];
  final triple =
      i + 2 < source.length && source[i + 1] == quote && source[i + 2] == quote;
  final marker = quote * (triple ? 3 : 1);
  final start = i;
  i += marker.length;
  while (i < source.length) {
    if (!raw && source[i] == r'\') {
      i += i + 1 < source.length ? 2 : 1;
      continue;
    }
    if (source.startsWith(marker, i)) {
      i += marker.length;
      break;
    }
    i++;
  }
  out.write(source.substring(start, i));
  return i;
}
