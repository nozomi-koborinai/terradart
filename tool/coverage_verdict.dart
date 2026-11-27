sealed class CoverageVerdict {
  const CoverageVerdict(this.slug);

  final String slug;
}

final class CoverageGreen extends CoverageVerdict {
  const CoverageGreen({
    required String slug,
    required this.engine,
    required this.providers,
    required this.learned,
    required this.excluded,
    required this.pruned,
  }) : super(slug);

  final String engine;
  final Map<String, String> providers;
  final List<LearnedEntry> learned;
  final List<ExcludedFactory> excluded;
  final List<String> pruned;
}

final class CoverageBroken extends CoverageVerdict {
  const CoverageBroken({
    required String slug,
    required this.stage,
    required this.logExcerpt,
  }) : super(slug);

  final OracleStage stage;
  final String logExcerpt;
}

enum OracleStage { render, synth, fmt, init, validate, analyze }

final class LearnedEntry {
  const LearnedEntry({
    required this.key,
    required this.value,
    required this.source,
    required this.rejected,
    required this.at,
    required this.detail,
  });

  final String key;
  final Object value;
  final String source;
  final Object rejected;
  final String at;
  final String detail;
}

final class ExcludedFactory {
  const ExcludedFactory({
    required this.className,
    required this.tfType,
    required this.kind,
    required this.cause,
  });

  final String className;
  final String tfType;
  final FactoryKind kind;
  final ExclusionCause cause;

  String get typeKey => '${kind.name}:$tfType';
}

enum FactoryKind { resource, dataSource }

sealed class ExclusionCause {
  const ExclusionCause();
}

final class ProviderRejected extends ExclusionCause {
  const ProviderRejected(this.at, this.rejected, this.detail);

  final String at;
  final Object? rejected;
  final String detail;
}

final class GeneratorCannotPlace extends ExclusionCause {
  const GeneratorCannotPlace(this.reason);

  final String reason;
}

Map<String, Object?> encodeVerdict(CoverageVerdict verdict) =>
    switch (verdict) {
      CoverageGreen() => {
        'verdict': 'green',
        'slug': verdict.slug,
        'engine': verdict.engine,
        'providers': verdict.providers,
        'learned': [
          for (final l in verdict.learned)
            {
              'key': l.key,
              'value': l.value,
              'source': l.source,
              'rejected': l.rejected,
              'at': l.at,
              'detail': l.detail,
            },
        ],
        'excluded': [
          for (final f in verdict.excluded)
            {
              'class_name': f.className,
              'tf_type': f.tfType,
              'kind': f.kind.name,
              'cause': switch (f.cause) {
                ProviderRejected(:final at, :final rejected, :final detail) => {
                  'kind': 'provider_rejected',
                  'at': at,
                  'rejected': rejected,
                  'detail': detail,
                },
                GeneratorCannotPlace(:final reason) => {
                  'kind': 'generator_cannot_place',
                  'reason': reason,
                },
              },
            },
        ],
        'pruned': verdict.pruned,
      },
      CoverageBroken() => {
        'verdict': 'broken',
        'slug': verdict.slug,
        'stage': verdict.stage.name,
        'log': verdict.logExcerpt,
      },
    };

CoverageVerdict decodeVerdict(Object? json) {
  final m = _map(json, 'verdict');
  final slug = _string(m, 'slug');
  return switch (m['verdict']) {
    'green' => CoverageGreen(
      slug: slug,
      engine: _string(m, 'engine'),
      providers: {
        for (final MapEntry(:key, :value) in _map(
          m['providers'],
          'providers',
        ).entries)
          key: value is String
              ? value
              : throw FormatException('providers.$key is not text'),
      },
      learned: [
        for (final e in _list(m, 'learned'))
          LearnedEntry(
            key: _string(_map(e, 'learned'), 'key'),
            value: _jsonValue(_map(e, 'learned'), 'value'),
            source: _string(_map(e, 'learned'), 'source'),
            rejected: _jsonValue(_map(e, 'learned'), 'rejected'),
            at: _string(_map(e, 'learned'), 'at'),
            detail: _string(_map(e, 'learned'), 'detail'),
          ),
      ],
      excluded: [for (final e in _list(m, 'excluded')) _excluded(e)],
      pruned: [
        for (final p in _list(m, 'pruned'))
          p is String ? p : throw const FormatException('pruned: not text'),
      ],
    ),
    'broken' => CoverageBroken(
      slug: slug,
      stage:
          OracleStage.values.where((s) => s.name == m['stage']).firstOrNull ??
          (throw FormatException('unknown stage ${m['stage']}')),
      logExcerpt: _string(m, 'log'),
    ),
    final other => throw FormatException('unknown verdict $other'),
  };
}

ExcludedFactory _excluded(Object? json) {
  final m = _map(json, 'excluded');
  final cause = _map(m['cause'], 'cause');
  return ExcludedFactory(
    className: _string(m, 'class_name'),
    tfType: _string(m, 'tf_type'),
    kind:
        FactoryKind.values.where((k) => k.name == m['kind']).firstOrNull ??
        (throw FormatException('unknown kind ${m['kind']}')),
    cause: switch (cause['kind']) {
      'provider_rejected' => ProviderRejected(
        _string(cause, 'at'),
        cause['rejected'],
        _string(cause, 'detail'),
      ),
      'generator_cannot_place' => GeneratorCannotPlace(
        _string(cause, 'reason'),
      ),
      final other => throw FormatException('unknown cause $other'),
    },
  );
}

Map<String, Object?> _map(Object? json, String what) => json is Map
    ? json.cast<String, Object?>()
    : throw FormatException('$what: expected an object');

List<Object?> _list(Map<String, Object?> m, String key) => m[key] is List
    ? (m[key] as List).cast<Object?>()
    : throw FormatException('$key: expected a list');

String _string(Map<String, Object?> m, String key) => m[key] is String
    ? m[key] as String
    : throw FormatException('$key: expected text');

Object _jsonValue(Map<String, Object?> m, String key) =>
    m[key] ?? (throw FormatException('$key: missing'));
