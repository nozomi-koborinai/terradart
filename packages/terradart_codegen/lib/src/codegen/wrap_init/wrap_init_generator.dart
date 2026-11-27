import '../../ir/resource_def.dart';
import '../../parser/mm_yaml_parser.dart';
import '../constructor_params.dart';
import '../providers/provider_rules.dart';
import '../wrapper_overrides/wrapper_override.dart';
import 'clock.dart';
import 'output_dir_resolver.dart';
import 'wrap_init_draft.dart';
import 'wrap_init_templates.dart';

class WrapInitGenerator {
  WrapInitGenerator({
    required this.clock,
    required this.outputDirResolver,
    required this.providerRules,
  });

  final Clock clock;
  final OutputDirResolver outputDirResolver;
  final ProviderRules providerRules;

  WrapInitDraft generate({
    required String terraformType,
    required ResourceDef def,
    required WrapperOverrideKind kind,
    required MmResourceOverrides? mm,
    bool fillParamOrder = false,
  }) {
    final axes = <WrapInitAxis>[];

    if (kind == WrapperOverrideKind.dataSource) {
      axes.add(const FilledAxis('kind', 'data_source'));
    }

    final outputDir = outputDirResolver.resolve(
      terraformType: terraformType,
      mmProduct: mm?.product,
      kind: kind,
    );
    axes.add(FilledAxis('outputDir', outputDir));

    if (kind == WrapperOverrideKind.dataSource) {
      axes.add(const FilledAxis('schemaStubBodyMode', 'bare'));
    }

    axes.add(const FilledAxis('deriveClassDoc', 'true'));
    if (providerRules.typedNestedDefaults) {
      axes.add(const FilledAxis('deriveNestedTypes', 'true'));
      axes.add(const FilledAxis('deriveOutputGetters', 'true'));
    }
    if (providerRules.derivedEnumDefaults &&
        kind == WrapperOverrideKind.resource) {
      axes.add(const FilledAxis('deriveEnums', 'true'));
    }
    if (providerRules.exactlyOneDefaults &&
        kind == WrapperOverrideKind.resource) {
      axes.add(const FilledAxis('deriveExactlyOne', 'true'));
    }
    final authoritativeIam = kind == WrapperOverrideKind.resource
        ? authoritativeIamCuratedDoc(terraformType)
        : null;
    axes.add(
      authoritativeIam == null
          ? const TodoAxis('curatedDoc', todoMessage: todoCuratedDoc)
          : TodoAxis(
              'curatedDoc',
              todoMessage: todoCuratedDocAuthoritativeIam,
              seed: authoritativeIam,
            ),
    );

    if (fillParamOrder) {
      axes.add(
        FilledAxis(
          'paramOrder',
          kind == WrapperOverrideKind.dataSource
              ? orderedDataSourceConstructorParams(def, null)
              : orderedConstructorParams(def, null),
        ),
      );
    } else {
      final paramOrder = def.root.attributes.map((a) => a.name).toList();
      axes.add(
        CommentedAxis(
          'paramOrder',
          value: paramOrder,
          banner: paramOrderCommentedBanner,
        ),
      );
    }

    axes.add(_buildExtraGettersAxis(def));

    final depAxis = _buildDeprecatedParamsAxis(mm);
    if (depAxis != null) axes.add(depAxis);

    return WrapInitDraft(
      terraformType: terraformType,
      axes: axes,
      bannerDate: clock.now(),
    );
  }

  WrapInitAxis _buildExtraGettersAxis(ResourceDef def) {
    final lines = providerRules.universalGetters(def);
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
