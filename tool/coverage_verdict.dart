/// What one run of `tool/coverage_stack.dart` concluded, and the one codec of
/// the `coverage_stack.json` it writes. `tool/bump_new_factories.dart record`
/// and `tool/generate_drift_report.dart` only read it.
library;

/// One lane's coverage stack after a run.
sealed class CoverageVerdict {
  const CoverageVerdict(this.slug);

  /// `aws_leftover`: the stack is `examples/<slug>_quickstart`.
  final String slug;
}

/// The stack on disk passes what required CI runs on it.
final class CoverageGreen extends CoverageVerdict {
  const CoverageGreen({
    required String slug,
    required this.engine,
    required this.providers,
    required this.learned,
    required this.excluded,
    required this.pruned,
  }) : super(slug);

  /// `tofu 1.13.1`.
  final String engine;

  /// Provider source to the version `init` selected: `hashicorp/aws` →
  /// `6.68.0`.
  final Map<String, String> providers;

  /// Values the provider asked for, now in the lane's ledger.
  final List<LearnedEntry> learned;

  /// Factories this run left out of the stack.
  final List<ExcludedFactory> excluded;

  /// Ledger keys removed because the manifest no longer has their slot.
  final List<String> pruned;
}

/// No green stack could be produced; the driver restored the stack and the
/// ledger to what it found.
final class CoverageBroken extends CoverageVerdict {
  const CoverageBroken({
    required String slug,
    required this.stage,
    required this.logExcerpt,
  }) : super(slug);

  final OracleStage stage;
  final String logExcerpt;
}

/// The step of a coverage run that failed.
enum OracleStage { render, synth, fmt, init, validate, analyze }

/// A value the run learned from a provider diagnostic.
final class LearnedEntry {
  const LearnedEntry({
    required this.key,
    required this.value,
    required this.source,
    required this.rejected,
    required this.at,
    required this.detail,
  });

  /// `DataGoogleIamWorkloadIdentityPoolJwks.resourceName`.
  final String key;

  /// The JSON value now in the ledger.
  final Object value;

  /// `family url-host`, `sibling AwsDirectoryServiceTrust.directoryId`.
  final String source;

  /// The value the provider rejected.
  final Object rejected;

  /// `data.google_iam_workload_identity_pool_jwks.jwks.resource_name`.
  final String at;

  /// The provider's message.
  final String detail;
}

/// A factory the coverage stack does not instantiate after this run.
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

  /// `resource:aws_foo` or `dataSource:aws_foo`, the key `schema_diff.json`
  /// and `tool/curation_backlog.yaml` use.
  String get typeKey => '${kind.name}:$tfType';
}

enum FactoryKind { resource, dataSource }

/// Why a factory is out of the stack.
sealed class ExclusionCause {
  const ExclusionCause();
}

/// The provider rejected a value or block no candidate fixed.
final class ProviderRejected extends ExclusionCause {
  const ProviderRejected(this.at, this.rejected, this.detail);

  /// `aws_foo_bar.foo_bar.mode`, or the block address.
  final String at;

  /// The rejected value; null when the provider rejected the block.
  final Object? rejected;

  final String detail;
}

/// The generator could not construct the factory's call.
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

/// Parses `coverage_stack.json` at the reader's boundary. Throws a
/// [FormatException] on a malformed file.
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
