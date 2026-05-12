import 'wrap_init_draft.dart';
import 'wrap_init_templates.dart';

/// Pure YAML serializer for `WrapInitDraft`. No I/O.
///
/// Output is a hand-built `StringBuffer` because the production-overrides
/// YAML convention requires both inline comments and commented-out keys
/// (`# extraGetters: |2`, `# - <param>`), and `package:yaml_writer`
/// cannot preserve either.
class WrapInitEmitter {
  const WrapInitEmitter();

  String emit(WrapInitDraft draft) {
    final buf = StringBuffer();

    // Banner.
    final date = draft.bannerDate.toIso8601String().substring(0, 10);
    buf.write(wrapInitBannerTemplate.replaceAll('{date}', date));
    buf.writeln();

    for (var i = 0; i < draft.axes.length; i++) {
      final axis = draft.axes[i];
      _emitAxis(buf, axis);
      // Blank line between axes (mirrors the production yaml layout).
      if (i != draft.axes.length - 1) buf.writeln();
    }

    return buf.toString();
  }

  void _emitAxis(StringBuffer buf, WrapInitAxis axis) {
    switch (axis) {
      case FilledAxis(:final key, :final value):
        _emitFilled(buf, key, value);
      case CommentedAxis(:final key, :final value, :final banner):
        if (banner != null) {
          buf.writeln('# $banner');
        }
        _emitCommented(buf, key, value);
      case TodoAxis(
          :final key,
          :final todoMessage,
          :final seed,
          :final skeleton
        ):
        buf.writeln('# TODO(wrap-init): $todoMessage');
        _emitTodo(buf, key, seed: seed, skeleton: skeleton);
      case BannerOnlyAxis(:final key, :final banner):
        // Phase 4.3 territory; Phase 4.2 generator does not emit these,
        // but we handle the case so the sealed switch is exhaustive.
        buf.writeln('# $key:');
        buf.writeln('# $banner');
    }
  }

  void _emitFilled(StringBuffer buf, String key, Object value) {
    if (value is String) {
      buf.writeln('$key: $value');
    } else if (value is List<String>) {
      buf.writeln('$key:');
      for (final item in value) {
        buf.writeln('  - $item');
      }
    } else if (value is Map<String, String>) {
      buf.writeln('$key:');
      value.forEach((k, v) {
        buf.writeln('  $k: $v');
      });
    } else {
      throw StateError(
        'WrapInitEmitter: unsupported FilledAxis value type ${value.runtimeType} for key "$key"',
      );
    }
  }

  void _emitCommented(StringBuffer buf, String key, Object value) {
    if (value is List<String>) {
      buf.writeln('# $key:');
      for (final item in value) {
        buf.writeln('#   - $item');
      }
    } else {
      throw StateError(
        'WrapInitEmitter: unsupported CommentedAxis value type ${value.runtimeType} for key "$key"',
      );
    }
  }

  void _emitTodo(
    StringBuffer buf,
    String key, {
    Object? seed,
    Object? skeleton,
  }) {
    if (seed != null && seed is String) {
      // Active (uncommented) key with MM-seeded value.
      buf.writeln('$key: |-');
      for (final line in seed.split('\n')) {
        buf.writeln('  $line');
      }
      return;
    }
    if (skeleton != null && skeleton is List<String>) {
      // Commented-out `extraGetters: |2` block with each Dart line preceded by `# `.
      buf.writeln('# $key: |2');
      for (final line in skeleton) {
        buf.writeln('#     $line');
      }
      return;
    }
    if (skeleton != null && skeleton is Map<String, String>) {
      // Commented-out `deprecatedParams:` block.
      buf.writeln('# $key:');
      skeleton.forEach((k, v) {
        buf.writeln('#   $k: $v');
      });
      return;
    }
    // No seed, no skeleton — emit fully commented placeholder.
    buf.writeln('# $key:');
  }
}
