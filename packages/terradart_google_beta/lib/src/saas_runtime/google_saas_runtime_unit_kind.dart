// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:meta/meta.dart';
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `google_saas_runtime_unit_kind`.
const Set<String> _googleSaasRuntimeUnitKindSensitive = <String>{};

/// Typed helper for the `dependencies` block of
/// `google_saas_runtime_unit_kind` (derived from provider schema).
@immutable
final class SaasRuntimeUnitKindDependencies {
  const SaasRuntimeUnitKindDependencies({
    required this.alias,
    required this.unitKind,
  });

  final TfArg<String> alias;

  final TfArg<String> unitKind;

  Map<String, Object?> encode() => {
    'alias': alias.toTfJson(),
    'unit_kind': unitKind.toTfJson(),
  };
}

/// Typed helper for the `input_variable_mappings` block of
/// `google_saas_runtime_unit_kind` (derived from provider schema).
@immutable
final class SaasRuntimeUnitKindInputVariableMappings {
  const SaasRuntimeUnitKindInputVariableMappings({
    required this.variable,
    this.from,
    this.to,
  });

  final TfArg<String> variable;

  final SaasRuntimeUnitKindInputVariableMappingsFrom? from;

  final SaasRuntimeUnitKindInputVariableMappingsTo? to;

  Map<String, Object?> encode() => {
    'variable': variable.toTfJson(),
    'from': ?from?.encode(),
    'to': ?to?.encode(),
  };
}

/// Typed helper for the `input_variable_mappings.from` block of
/// `google_saas_runtime_unit_kind` (derived from provider schema).
@immutable
final class SaasRuntimeUnitKindInputVariableMappingsFrom {
  const SaasRuntimeUnitKindInputVariableMappingsFrom({
    required this.dependency,
    required this.outputVariable,
  });

  final TfArg<String> dependency;

  final TfArg<String> outputVariable;

  Map<String, Object?> encode() => {
    'dependency': dependency.toTfJson(),
    'output_variable': outputVariable.toTfJson(),
  };
}

/// Typed helper for the `input_variable_mappings.to` block of
/// `google_saas_runtime_unit_kind` (derived from provider schema).
@immutable
final class SaasRuntimeUnitKindInputVariableMappingsTo {
  const SaasRuntimeUnitKindInputVariableMappingsTo({
    required this.dependency,
    this.ignoreForLookup,
    required this.inputVariable,
  });

  final TfArg<String> dependency;

  final TfArg<bool>? ignoreForLookup;

  final TfArg<String> inputVariable;

  Map<String, Object?> encode() => {
    'dependency': dependency.toTfJson(),
    'ignore_for_lookup': ?ignoreForLookup?.toTfJson(),
    'input_variable': inputVariable.toTfJson(),
  };
}

/// Typed helper for the `output_variable_mappings` block of
/// `google_saas_runtime_unit_kind` (derived from provider schema).
@immutable
final class SaasRuntimeUnitKindOutputVariableMappings {
  const SaasRuntimeUnitKindOutputVariableMappings({
    required this.variable,
    this.from,
    this.to,
  });

  final TfArg<String> variable;

  final SaasRuntimeUnitKindOutputVariableMappingsFrom? from;

  final SaasRuntimeUnitKindOutputVariableMappingsTo? to;

  Map<String, Object?> encode() => {
    'variable': variable.toTfJson(),
    'from': ?from?.encode(),
    'to': ?to?.encode(),
  };
}

/// Typed helper for the `output_variable_mappings.from` block of
/// `google_saas_runtime_unit_kind` (derived from provider schema).
@immutable
final class SaasRuntimeUnitKindOutputVariableMappingsFrom {
  const SaasRuntimeUnitKindOutputVariableMappingsFrom({
    required this.dependency,
    required this.outputVariable,
  });

  final TfArg<String> dependency;

  final TfArg<String> outputVariable;

  Map<String, Object?> encode() => {
    'dependency': dependency.toTfJson(),
    'output_variable': outputVariable.toTfJson(),
  };
}

/// Typed helper for the `output_variable_mappings.to` block of
/// `google_saas_runtime_unit_kind` (derived from provider schema).
@immutable
final class SaasRuntimeUnitKindOutputVariableMappingsTo {
  const SaasRuntimeUnitKindOutputVariableMappingsTo({
    required this.dependency,
    this.ignoreForLookup,
    required this.inputVariable,
  });

  final TfArg<String> dependency;

  final TfArg<bool>? ignoreForLookup;

  final TfArg<String> inputVariable;

  Map<String, Object?> encode() => {
    'dependency': dependency.toTfJson(),
    'ignore_for_lookup': ?ignoreForLookup?.toTfJson(),
    'input_variable': inputVariable.toTfJson(),
  };
}

/// Factory wrapper for `google_saas_runtime_unit_kind`.
///
/// A UnitKind serves as a template or type definition for a group of Units.
/// Units that belong to the same UnitKind are managed together, follow the same
/// release model, and are typically updated together through rollouts.
final class GoogleSaasRuntimeUnitKind extends Resource {
  static const String tfType = 'google_saas_runtime_unit_kind';

  GoogleSaasRuntimeUnitKind({
    required super.localName,
    TfArg<Map<String, String>>? annotations,
    TfArg<String>? defaultRelease,
    TfArg<String>? deletionPolicy,
    TfArg<Map<String, String>>? labels,
    required TfArg<String> location,
    TfArg<String>? project,
    required TfArg<String> saas,
    required TfArg<String> unitKindId,
    List<SaasRuntimeUnitKindDependencies>? dependencies,
    List<SaasRuntimeUnitKindInputVariableMappings>? inputVariableMappings,
    List<SaasRuntimeUnitKindOutputVariableMappings>? outputVariableMappings,
    super.lifecycle,
    super.dependsOn,
    String? provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         provider: provider ?? 'google-beta',
         argMap: {
           'annotations': ?annotations,
           'default_release': ?defaultRelease,
           'deletion_policy': ?deletionPolicy,
           'labels': ?labels,
           'location': location,
           'project': ?project,
           'saas': saas,
           'unit_kind_id': unitKindId,
           if (dependencies != null)
             'dependencies': TfArg.literal([
               for (final e in dependencies) e.encode(),
             ]),
           if (inputVariableMappings != null)
             'input_variable_mappings': TfArg.literal([
               for (final e in inputVariableMappings) e.encode(),
             ]),
           if (outputVariableMappings != null)
             'output_variable_mappings': TfArg.literal([
               for (final e in outputVariableMappings) e.encode(),
             ]),
         },
       );

  @override
  Set<String> get sensitiveFields => _googleSaasRuntimeUnitKindSensitive;

  /// A reference to this resource, for arguments typed
  /// `RefTo<GoogleSaasRuntimeUnitKind>`.
  RefTo<GoogleSaasRuntimeUnitKind> get ref => RefTo.of(this);

  /// Reference to `name` attribute.
  TfRef<String> get nameRef => TfRef.attribute<String>(this, 'name');

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `create_time` attribute.
  TfRef<String> get createTime => TfRef.attribute<String>(this, 'create_time');

  /// Reference to `effective_annotations` attribute.
  TfRef<Map<String, String>> get effectiveAnnotations =>
      TfRef.attribute<Map<String, String>>(this, 'effective_annotations');

  /// Reference to `effective_labels` attribute.
  TfRef<Map<String, String>> get effectiveLabels =>
      TfRef.attribute<Map<String, String>>(this, 'effective_labels');

  /// Reference to `etag` attribute.
  TfRef<String> get etag => TfRef.attribute<String>(this, 'etag');

  /// Reference to `terraform_labels` attribute.
  TfRef<Map<String, String>> get terraformLabels =>
      TfRef.attribute<Map<String, String>>(this, 'terraform_labels');

  /// Reference to `uid` attribute.
  TfRef<String> get uid => TfRef.attribute<String>(this, 'uid');

  /// Reference to `update_time` attribute.
  TfRef<String> get updateTime => TfRef.attribute<String>(this, 'update_time');

  /// Reference to `annotations` attribute.
  TfRef<Map<String, String>> get annotationsRef =>
      TfRef.attribute<Map<String, String>>(this, 'annotations');

  /// Reference to `default_release` attribute.
  TfRef<String> get defaultReleaseRef =>
      TfRef.attribute<String>(this, 'default_release');

  /// Reference to `deletion_policy` attribute.
  TfRef<String> get deletionPolicyRef =>
      TfRef.attribute<String>(this, 'deletion_policy');

  /// Reference to `labels` attribute.
  TfRef<Map<String, String>> get labelsRef =>
      TfRef.attribute<Map<String, String>>(this, 'labels');

  /// Reference to `location` attribute.
  TfRef<String> get locationRef => TfRef.attribute<String>(this, 'location');

  /// Reference to `project` attribute.
  TfRef<String> get projectRef => TfRef.attribute<String>(this, 'project');

  /// Reference to `saas` attribute.
  TfRef<String> get saasRef => TfRef.attribute<String>(this, 'saas');

  /// Reference to `unit_kind_id` attribute.
  TfRef<String> get unitKindIdRef =>
      TfRef.attribute<String>(this, 'unit_kind_id');
}
