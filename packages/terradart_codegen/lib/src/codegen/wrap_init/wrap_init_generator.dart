import '../../ir/resource_def.dart';
import '../../parser/mm_yaml_parser.dart';
import '../wrapper_overrides/wrapper_override.dart';
import 'clock.dart';
import 'output_dir_resolver.dart';
import 'wrap_init_draft.dart';
import 'wrap_init_templates.dart';

/// Pure axis-extraction orchestrator. No I/O.
///
/// `WrapInitCommand` parses inputs, then calls `generate(...)`. The
/// resulting `WrapInitDraft` is handed to `WrapInitEmitter` to render YAML.
class WrapInitGenerator {
  WrapInitGenerator({
    required this.clock,
    required this.outputDirResolver,
  });

  final Clock clock;
  final OutputDirResolver outputDirResolver;

  /// Returns a draft for one resource. Caller passes parsed inputs; this
  /// function does NOT touch the filesystem.
  WrapInitDraft generate({
    required String terraformType,
    required ResourceDef def,
    required WrapperOverrideKind kind,
    required MmResourceOverrides? mm,
  }) {
    final axes = <WrapInitAxis>[];

    // kind — explicit only for data sources (resource is the default).
    if (kind == WrapperOverrideKind.dataSource) {
      axes.add(const FilledAxis('kind', 'data_source'));
    }

    // outputDir — always FILL.
    final outputDir = outputDirResolver.resolve(
      terraformType: terraformType,
      mmProduct: mm?.product,
      kind: kind,
    );
    axes.add(FilledAxis('outputDir', outputDir));

    // schemaStubBodyMode — explicit only for data sources (`bare`).
    if (kind == WrapperOverrideKind.dataSource) {
      axes.add(const FilledAxis('schemaStubBodyMode', 'bare'));
    }

    // classDocComment — TODO + MM seed (or fully commented placeholder).
    axes.add(_buildClassDocCommentAxis(mm));

    // paramOrder — commented scaffold from schema natural order.
    final paramOrder = def.root.attributes.map((a) => a.name).toList();
    axes.add(CommentedAxis(
      'paramOrder',
      value: paramOrder,
      banner: paramOrderCommentedBanner,
    ));

    // extraGetters — TODO skeleton (commented YAML key + body).
    axes.add(_buildExtraGettersAxis(def));

    // deprecatedParams — TODO only when MM had deprecation_messages.
    final depAxis = _buildDeprecatedParamsAxis(mm);
    if (depAxis != null) axes.add(depAxis);

    return WrapInitDraft(
      terraformType: terraformType,
      axes: axes,
      bannerDate: clock.now(),
    );
  }

  WrapInitAxis _buildClassDocCommentAxis(MmResourceOverrides? mm) {
    final desc = mm?.description;
    if (desc != null && desc.isNotEmpty) {
      // Seed with the MM description, formatted as `/// <line>` per line.
      final seed = desc.split('\n').map((line) => '/// $line').join('\n');
      return TodoAxis(
        'classDocComment',
        todoMessage: todoClassDocCommentWithMm,
        seed: seed,
      );
    }
    return const TodoAxis(
      'classDocComment',
      todoMessage: todoClassDocCommentNoMm,
    );
  }

  WrapInitAxis _buildExtraGettersAxis(ResourceDef def) {
    final attrs = def.root.attributes.map((a) => a.name).toSet();
    final lines = <String>[];
    if (attrs.contains('id')) {
      lines.add("TfRef<String> get id => TfRef.attribute<String>(this, 'id');");
    }
    if (attrs.contains('name')) {
      lines.add(
          "TfRef<String> get nameRef => TfRef.attribute<String>(this, 'name');");
    }
    return TodoAxis(
      'extraGetters',
      todoMessage: todoExtraGetters,
      skeleton: lines.isEmpty ? null : lines,
    );
  }

  WrapInitAxis? _buildDeprecatedParamsAxis(MmResourceOverrides? mm) {
    if (mm == null) return null;
    final deprecated = <String, String>{};
    for (final entry in mm.fieldOverrides.entries) {
      final msg = entry.value.deprecationMessage;
      if (msg != null && msg.isNotEmpty) {
        deprecated[entry.key] = msg;
      }
    }
    if (deprecated.isEmpty) return null;
    return TodoAxis(
      'deprecatedParams',
      todoMessage: todoDeprecatedParams,
      skeleton: deprecated,
    );
  }
}
