class SealedClassExtractor {
  const SealedClassExtractor();

  List<SealedClass> extract(String preludeText) {
    final sealedDecls = _sealedDeclPattern.allMatches(preludeText).toList();
    if (sealedDecls.isEmpty) return const [];
    return sealedDecls
        .map((sealedMatch) {
          final sealedName = sealedMatch.group(1)!;
          final members = <SealedClassMember>[];
          for (final memberMatch in _memberDeclPatternFor(
            sealedName,
          ).allMatches(preludeText)) {
            final memberName = memberMatch.group(1)!;
            final bodyStart = memberMatch.end;
            final body = _extractClassBody(preludeText, bodyStart);
            members.add(
              SealedClassMember(name: memberName, params: _extractParams(body)),
            );
          }
          return SealedClass(name: sealedName, members: members);
        })
        .toList(growable: false);
  }

  static final _sealedDeclPattern = RegExp(
    r'sealed\s+class\s+(\w+)\s*\{',
    multiLine: true,
  );

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

  String _extractClassBody(String source, int start) {
    var depth = 1;
    var i = start;
    while (i < source.length && depth > 0) {
      final ch = source[i];
      if (ch == '{') depth++;
      if (ch == '}') depth--;
      i++;
    }
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
      final required = trimmed.startsWith('required ');
      final afterRequired = required
          ? trimmed.substring('required '.length)
          : trimmed;
      if (!afterRequired.startsWith('this.')) continue;
      final name = afterRequired.substring('this.'.length).trim();
      if (name.isEmpty) continue;
      params.add(SealedClassParam(name: name, required: required));
    }
    return params;
  }
}

final class SealedClass {
  const SealedClass({required this.name, required this.members});
  final String name;
  final List<SealedClassMember> members;
}

final class SealedClassMember {
  const SealedClassMember({required this.name, required this.params});
  final String name;
  final List<SealedClassParam> params;
}

final class SealedClassParam {
  const SealedClassParam({required this.name, required this.required});
  final String name;
  final bool required;
}
