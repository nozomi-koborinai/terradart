// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:meta/meta.dart';
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `google_saas_runtime_release`.
const Set<String> _googleSaasRuntimeReleaseSensitive = <String>{};

/// Typed helper for the `blueprint` block of
/// `google_saas_runtime_release` (derived from provider schema).
@immutable
final class SaasRuntimeReleaseBlueprint {
  const SaasRuntimeReleaseBlueprint({this.package});

  final TfArg<String>? package;

  Map<String, Object?> encode() => {'package': ?package?.toTfJson()};
}

/// Typed helper for the `input_variable_defaults` block of
/// `google_saas_runtime_release` (derived from provider schema).
@immutable
final class SaasRuntimeReleaseInputVariableDefaults {
  const SaasRuntimeReleaseInputVariableDefaults({
    this.type,
    this.value,
    required this.variable,
  });

  final TfArg<SaasRuntimeReleaseInputVariableDefaultsType>? type;

  final TfArg<String>? value;

  final TfArg<String> variable;

  Map<String, Object?> encode() => {
    'type': ?type?.toTfJson(),
    'value': ?value?.toTfJson(),
    'variable': variable.toTfJson(),
  };
}

/// `type` — derived from the provider schema description.
enum SaasRuntimeReleaseInputVariableDefaultsType implements TerraformEnum {
  typeUnspecified('TYPE_UNSPECIFIED'),
  string('STRING'),
  int('INT'),
  bool('BOOL');

  const SaasRuntimeReleaseInputVariableDefaultsType(this.terraformValue);
  @override
  final String terraformValue;
}

/// Typed helper for the `release_requirements` block of
/// `google_saas_runtime_release` (derived from provider schema).
@immutable
final class SaasRuntimeReleaseReleaseRequirements {
  const SaasRuntimeReleaseReleaseRequirements({this.upgradeableFromReleases});

  final TfArg<List<String>>? upgradeableFromReleases;

  Map<String, Object?> encode() => {
    'upgradeable_from_releases': ?upgradeableFromReleases?.toTfJson(),
  };
}

/// Factory wrapper for `google_saas_runtime_release`.
///
/// A version to be propagated and deployed to Units. It points to a specific
/// version of a Blueprint that can be applied to Units, for example, via a
/// Rollout.
final class GoogleSaasRuntimeRelease extends Resource {
  static const String tfType = 'google_saas_runtime_release';

  GoogleSaasRuntimeRelease({
    required super.localName,
    TfArg<Map<String, String>>? annotations,
    TfArg<String>? deletionPolicy,
    TfArg<Map<String, String>>? labels,
    required TfArg<String> location,
    TfArg<String>? project,
    required TfArg<String> releaseId,
    required TfArg<String> unitKind,
    SaasRuntimeReleaseBlueprint? blueprint,
    List<SaasRuntimeReleaseInputVariableDefaults>? inputVariableDefaults,
    SaasRuntimeReleaseReleaseRequirements? releaseRequirements,
    super.lifecycle,
    super.dependsOn,
    String? provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         provider: provider ?? 'google-beta',
         argMap: {
           'annotations': ?annotations,
           'deletion_policy': ?deletionPolicy,
           'labels': ?labels,
           'location': location,
           'project': ?project,
           'release_id': releaseId,
           'unit_kind': unitKind,
           if (blueprint != null)
             'blueprint': TfArg.literal(blueprint.encode()),
           if (inputVariableDefaults != null)
             'input_variable_defaults': TfArg.literal([
               for (final e in inputVariableDefaults) e.encode(),
             ]),
           if (releaseRequirements != null)
             'release_requirements': TfArg.literal(
               releaseRequirements.encode(),
             ),
         },
       );

  @override
  Set<String> get sensitiveFields => _googleSaasRuntimeReleaseSensitive;

  /// A reference to this resource, for arguments typed
  /// `RefTo<GoogleSaasRuntimeRelease>`.
  RefTo<GoogleSaasRuntimeRelease> get ref => RefTo.of(this);

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

  /// Reference to `input_variables` attribute.
  TfRef<List<Map<String, Object?>>> get inputVariables =>
      TfRef.attribute<List<Map<String, Object?>>>(this, 'input_variables');

  /// Reference to `output_variables` attribute.
  TfRef<List<Map<String, Object?>>> get outputVariables =>
      TfRef.attribute<List<Map<String, Object?>>>(this, 'output_variables');

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

  /// Reference to `release_id` attribute.
  TfRef<String> get releaseIdRef => TfRef.attribute<String>(this, 'release_id');

  /// Reference to `unit_kind` attribute.
  TfRef<String> get unitKindRef => TfRef.attribute<String>(this, 'unit_kind');
}
