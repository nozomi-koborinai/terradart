// Pure-function extractor that finds sealed-class declarations and their
// `final class` members inside a yaml override's `prelude:` Dart-source text.
//
// Implementation note: this uses focused regex rather than `package:analyzer`.
// Trade-off documented in Plan 5.D PR 2: production yaml preludes follow
// curator-disciplined patterns (the 12 shipped sealed-class members all share
// constructor / field declaration shapes), and regex avoids widening the
// codegen dep graph. If Wave 5+ patterns break the regex, migrate to analyzer
// as a follow-up — see docs/superpowers/specs/2026-05-16-plan5d-codegen-correctness-design.md
// section "Open decisions deferred to plan".

class SealedClassExtractor {
  const SealedClassExtractor();

  /// Returns one [SealedClass] entry per `sealed class ... { ... }` block
  /// discovered in [preludeText], with members populated from the surrounding
  /// `final class <Name> extends <Sealed> { ... }` declarations.
  List<SealedClass> extract(String preludeText) {
    final sealedDecls = _sealedDeclPattern.allMatches(preludeText).toList();
    if (sealedDecls.isEmpty) return const [];
    return sealedDecls.map((sealedMatch) {
      final sealedName = sealedMatch.group(1)!;
      final members = <SealedClassMember>[];
      for (final memberMatch
          in _memberDeclPatternFor(sealedName).allMatches(preludeText)) {
        final memberName = memberMatch.group(1)!;
        final bodyStart = memberMatch.end;
        final body = _extractClassBody(preludeText, bodyStart);
        members.add(SealedClassMember(
          name: memberName,
          params: _extractParams(body),
        ));
      }
      return SealedClass(name: sealedName, members: members);
    }).toList(growable: false);
  }

  static final _sealedDeclPattern =
      RegExp(r'sealed\s+class\s+(\w+)\s*\{', multiLine: true);

  static RegExp _memberDeclPatternFor(String sealedName) => RegExp(
        r'final\s+class\s+(\w+)\s+extends\s+' +
            RegExp.escape(sealedName) +
            r'\s*\{',
        multiLine: true,
      );

  static final _ctorParamPattern = RegExp(
    r'const\s+\w+\s*\(\s*\{([^}]*)\}\s*\)\s*[;:]',
    multiLine: true,
    dotAll: true,
  );

  /// Walks [source] starting at [start] balancing `{` and `}` and returns the
  /// substring containing the class body (between the opening and matching
  /// closing braces — minus the braces themselves).
  String _extractClassBody(String source, int start) {
    var depth = 1;
    var i = start;
    while (i < source.length && depth > 0) {
      final ch = source[i];
      if (ch == '{') depth++;
      if (ch == '}') depth--;
      i++;
    }
    // i now sits one past the matching '}'. Return body without braces.
    return source.substring(start, i - 1);
  }

  List<SealedClassParam> _extractParams(String classBody) {
    final ctorMatch = _ctorParamPattern.firstMatch(classBody);
    if (ctorMatch == null) return const [];
    final paramsBlock = ctorMatch.group(1)!;
    final params = <SealedClassParam>[];
    for (final raw in paramsBlock.split(',')) {
      final trimmed = raw.trim();
      if (trimmed.isEmpty) continue;
      // Forms expected:
      //   required this.splits
      //   this.codebaseBranch
      final required = trimmed.startsWith('required ');
      final afterRequired =
          required ? trimmed.substring('required '.length) : trimmed;
      if (!afterRequired.startsWith('this.')) continue;
      final name = afterRequired.substring('this.'.length).trim();
      if (name.isEmpty) continue;
      params.add(SealedClassParam(name: name, required: required));
    }
    return params;
  }
}

class SealedClass {
  const SealedClass({required this.name, required this.members});
  final String name;
  final List<SealedClassMember> members;
}

class SealedClassMember {
  const SealedClassMember({required this.name, required this.params});
  final String name;
  final List<SealedClassParam> params;
}

class SealedClassParam {
  const SealedClassParam({required this.name, required this.required});
  final String name;
  final bool required;
}
