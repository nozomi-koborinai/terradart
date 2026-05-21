// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:meta/meta.dart';
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `google_firebase_remote_config_remote_config`.
const Set<String> _googleFirebaseRemoteConfigRemoteConfigSensitive = <String>{};

// ===========================================================================
// Enums (sourced from schema "Possible values" prose)
// ===========================================================================

/// `conditions[].tag_color` -- display-only swatch attached to a
/// condition in the Firebase Console. The 11 values below come from the
/// schema's enumerated "Possible values" list. Leaving this null (the
/// schema-default) lets the Console pick a colour automatically.
enum RemoteConfigTagColor {
  blue('BLUE'),
  brown('BROWN'),
  cyan('CYAN'),
  deepOrange('DEEP_ORANGE'),
  green('GREEN'),
  indigo('INDIGO'),
  lime('LIME'),
  orange('ORANGE'),
  pink('PINK'),
  purple('PURPLE'),
  teal('TEAL');

  const RemoteConfigTagColor(this.terraformValue);
  final String terraformValue;
}

/// `parameters[].value_type` (and `parameter_groups[].parameters[].value_type`)
/// -- the data type interpretation of [FirebaseRemoteConfigRemoteConfigRemoteConfigDefaultValue.value] /
/// [FirebaseRemoteConfigRemoteConfigRemoteConfigConditionalValue.value]. `string` is the schema default.
/// `jsonValue` covers any structured payload (the wire format is still a
/// string -- the client is expected to JSON-parse it).
enum RemoteConfigValueType {
  string('STRING'),
  boolean('BOOLEAN'),
  number('NUMBER'),
  jsonValue('JSON');

  const RemoteConfigValueType(this.terraformValue);
  final String terraformValue;
}

// ===========================================================================
// conditions[] helper
// ===========================================================================

/// One entry in `conditions` (nesting=list, ordered). Per the schema
/// description, the list is in descending priority order: the first
/// condition that evaluates to `true` for a given client wins for any
/// parameter that references it by [name].
///
/// See
/// https://firebase.google.com/docs/remote-config/condition-reference
/// for the expected syntax of [expression].
@immutable
class FirebaseRemoteConfigRemoteConfigRemoteConfigCondition {
  const FirebaseRemoteConfigRemoteConfigRemoteConfigCondition({
    required this.name,
    required this.expression,
    this.tagColor,
  });

  /// Unique condition name. Referenced verbatim by
  /// [FirebaseRemoteConfigRemoteConfigRemoteConfigConditionalValue.conditionName].
  TfArg<String> name;

  /// Condition expression (see the link in the class doc).
  TfArg<String> expression;

  /// Display swatch for the Firebase Console. Null lets the Console
  /// auto-assign.
  final RemoteConfigTagColor? tagColor;

  Map<String, Object?> toArgMap() => {
    'name': name.toTfJson(),
    'expression': expression.toTfJson(),
    if (tagColor != null) 'tag_color': tagColor!.terraformValue,
  };
}

// ===========================================================================
// parameter value helpers
// ===========================================================================

/// `default_value` block (max_items=1). Per the schema's own constraint
/// ("Only one of use_in_app_default or value may be specified"), exactly
/// one of [useInAppDefault] / [value] should be set; setting both is a
/// server-side error.
///
/// Use [useInAppDefault]=true to mark "no template-side default; fall
/// back to whatever the client SDK was compiled with"; use [value] to
/// supply a literal string (interpreted per the parent parameter's
/// [FirebaseRemoteConfigRemoteConfigRemoteConfigParameter.valueType]).
@immutable
class FirebaseRemoteConfigRemoteConfigRemoteConfigDefaultValue {
  const FirebaseRemoteConfigRemoteConfigRemoteConfigDefaultValue({
    this.useInAppDefault,
    this.value,
  }) : assert(
         useInAppDefault == null || value == null,
         'FirebaseRemoteConfigRemoteConfigRemoteConfigDefaultValue: pass at most one of `useInAppDefault` '
         'or `value` -- the schema rejects both being set.',
       );

  /// When true, the parameter is omitted from values returned to the
  /// client (the client falls back to its in-app default).
  TfArg<bool>? useInAppDefault;

  /// String value (interpreted per the parent parameter's `valueType`).
  TfArg<String>? value;

  Map<String, Object?> toArgMap() => {
    if (useInAppDefault != null)
      'use_in_app_default': useInAppDefault!.toTfJson(),
    if (value != null) 'value': value!.toTfJson(),
  };
}

/// One entry in a parameter's `conditional_values` (nesting=set). Pairs
/// a [conditionName] (referencing a [FirebaseRemoteConfigRemoteConfigRemoteConfigCondition.name] in the
/// template's [conditions] list) with either an in-app-default flag or
/// a literal [value]. Per the schema's own constraint, only one of
/// [useInAppDefault] / [value] may be specified.
///
/// The condition_name of the highest priority (i.e. the one listed
/// first in the template's [conditions]) that evaluates to true
/// determines this parameter's value for a given client.
@immutable
class FirebaseRemoteConfigRemoteConfigRemoteConfigConditionalValue {
  const FirebaseRemoteConfigRemoteConfigRemoteConfigConditionalValue({
    required this.conditionName,
    this.useInAppDefault,
    this.value,
  }) : assert(
         useInAppDefault == null || value == null,
         'FirebaseRemoteConfigRemoteConfigRemoteConfigConditionalValue: pass at most one of '
         '`useInAppDefault` or `value` -- the schema rejects both being '
         'set.',
       );

  /// Must match a [FirebaseRemoteConfigRemoteConfigRemoteConfigCondition.name] in the parent template's
  /// [conditions] list. Mismatches are not caught at compile time;
  /// Terraform apply surfaces the error from the Remote Config API.
  TfArg<String> conditionName;

  /// When true, the parameter is omitted from values returned to the
  /// client (the client falls back to its in-app default) when this
  /// condition matches.
  TfArg<bool>? useInAppDefault;

  /// String value (interpreted per the parent parameter's `valueType`).
  TfArg<String>? value;

  Map<String, Object?> toArgMap() => {
    'condition_name': conditionName.toTfJson(),
    if (useInAppDefault != null)
      'use_in_app_default': useInAppDefault!.toTfJson(),
    if (value != null) 'value': value!.toTfJson(),
  };
}

// ===========================================================================
// parameter helper (shared between top-level [parameters] and
// [FirebaseRemoteConfigRemoteConfigRemoteConfigParameterGroup.parameters])
// ===========================================================================

/// One entry in `parameters` (top-level set) or in a
/// [FirebaseRemoteConfigRemoteConfigRemoteConfigParameterGroup.parameters] (nested set). Carries the
/// parameter's identity (`parameter_name`), optional metadata
/// (`description`, `value_type`), and the default / conditional value
/// payload (each modelled by a dedicated helper).
///
/// A given parameter only appears once per template -- either at the
/// top level OR within exactly one group. The wrapper does not enforce
/// this; the Remote Config API does.
@immutable
class FirebaseRemoteConfigRemoteConfigRemoteConfigParameter {
  const FirebaseRemoteConfigRemoteConfigRemoteConfigParameter({
    required this.parameterName,
    this.description,
    this.valueType,
    this.defaultValue,
    this.conditionalValues,
  });

  /// Parameter key (referenced by client SDKs via
  /// `RemoteConfig.getValue('<parameter_name>')`).
  TfArg<String> parameterName;

  /// Free-form description (<= 256 Unicode chars). Surfaced in the
  /// Firebase Console.
  TfArg<String>? description;

  /// Data type for [defaultValue.value] / [conditionalValues[].value].
  /// Null falls through to the provider default
  /// ([RemoteConfigValueType.string]).
  final RemoteConfigValueType? valueType;

  /// Optional default value (used when none of the [conditionalValues]
  /// match).
  final FirebaseRemoteConfigRemoteConfigRemoteConfigDefaultValue? defaultValue;

  /// Optional list of per-condition overrides. Empty list and null both
  /// mean "no overrides".
  final List<FirebaseRemoteConfigRemoteConfigRemoteConfigConditionalValue>?
  conditionalValues;

  Map<String, Object?> toArgMap() => {
    'parameter_name': parameterName.toTfJson(),
    if (description != null) 'description': description!.toTfJson(),
    if (valueType != null) 'value_type': valueType!.terraformValue,
    if (defaultValue != null) 'default_value': [defaultValue!.toArgMap()],
    if (conditionalValues != null)
      'conditional_values': conditionalValues!
          .map((c) => c.toArgMap())
          .toList(),
  };
}

// ===========================================================================
// parameter_groups[] helper
// ===========================================================================

/// One entry in `parameter_groups` (nesting=set). A group is a named
/// bucket of [parameters] -- the Firebase Console renders them grouped
/// under the [parameterGroupName] / [description] heading.
///
/// Group names are mutable but must be unique within a template; the
/// wrapper does not de-duplicate them, the Remote Config API does.
@immutable
class FirebaseRemoteConfigRemoteConfigRemoteConfigParameterGroup {
  const FirebaseRemoteConfigRemoteConfigRemoteConfigParameterGroup({
    required this.parameterGroupName,
    this.description,
    this.parameters,
  });

  /// Human-readable group identifier (<= 256 Unicode chars). Unique
  /// within the template.
  TfArg<String> parameterGroupName;

  /// Free-form description (<= 256 Unicode chars). Surfaced in the
  /// Firebase Console.
  TfArg<String>? description;

  /// Parameters belonging to this group. Each parameter appears exactly
  /// once in the entire template -- either at the top level OR within
  /// one specific group, never both.
  final List<FirebaseRemoteConfigRemoteConfigRemoteConfigParameter>? parameters;

  Map<String, Object?> toArgMap() => {
    'parameter_group_name': parameterGroupName.toTfJson(),
    if (description != null) 'description': description!.toTfJson(),
    if (parameters != null)
      'parameters': parameters!.map((p) => p.toArgMap()).toList(),
  };
}

/// Factory wrapper for `google_firebase_remote_config_remote_config`
/// (provider `hashicorp/google ~> 7.0`).
///
/// Required identity:
/// - [localName]: Terraform local name (the address segment after
///   `google_firebase_remote_config_remote_config.`).
/// - `project`: optional override of the provider's default project
///   (Remote Config templates are scoped to a single Firebase project).
///
/// All three composition surfaces ([parameters], [parameterGroups],
/// [conditions]) are individually optional, but in practice at least one
/// of [parameters] or [parameterGroups] is what makes a template useful;
/// the resource is the project-level container for the entire template.
/// Only one Remote Config template exists per Firebase project (the
/// `name` is server-fixed as
/// `projects/{project}/namespaces/{namespace}/remoteConfig`), so this
/// resource is effectively a singleton.
///
/// Example (one boolean parameter, one staged condition):
/// ```dart
/// final cfg = GoogleFirebaseRemoteConfigRemoteConfig(
///   localName: 'default',
///   conditions: const [
///     FirebaseRemoteConfigRemoteConfigRemoteConfigCondition(
///       name: 'staging_only',
///       expression: "app.id == 'com.example.app.staging'",
///       tagColor: RemoteConfigTagColor.orange,
///     ),
///   ],
///   parameters: const [
///     FirebaseRemoteConfigRemoteConfigRemoteConfigParameter(
///       parameterName: 'feature_x_enabled',
///       valueType: RemoteConfigValueType.boolean,
///       description: 'Gates the feature X rollout.',
///       defaultValue: FirebaseRemoteConfigRemoteConfigRemoteConfigDefaultValue(value: 'false'),
///       conditionalValues: [
///         FirebaseRemoteConfigRemoteConfigRemoteConfigConditionalValue(
///           conditionName: 'staging_only',
///           value: 'true',
///         ),
///       ],
///     ),
///   ],
/// );
/// ```
///
/// Example (one parameter group):
/// ```dart
/// final cfg = GoogleFirebaseRemoteConfigRemoteConfig(
///   localName: 'default',
///   parameterGroups: const [
///     FirebaseRemoteConfigRemoteConfigRemoteConfigParameterGroup(
///       parameterGroupName: 'search_v2',
///       description: 'New mobile search view.',
///       parameters: [
///         FirebaseRemoteConfigRemoteConfigRemoteConfigParameter(
///           parameterName: 'search_layout',
///           valueType: RemoteConfigValueType.string,
///           defaultValue: FirebaseRemoteConfigRemoteConfigRemoteConfigDefaultValue(value: 'grid'),
///         ),
///       ],
///     ),
///   ],
/// );
/// ```
///
/// Manages the project-level Firebase Remote Config template. The
/// template's payload is composed of three orthogonal collections:
/// [conditions] (boolean predicates evaluated at client fetch time),
/// [parameters] (top-level parameter map, keyed by [FirebaseRemoteConfigRemoteConfigRemoteConfigParameter.parameterName]),
/// and [parameterGroups] (named buckets of parameters, see
/// [FirebaseRemoteConfigRemoteConfigRemoteConfigParameterGroup]). Conditional values inside each
/// parameter reference conditions by name -- the wrapper does not (and
/// cannot) cross-validate these references at compile time; mismatches
/// surface at apply time from the Remote Config API.
final class GoogleFirebaseRemoteConfigRemoteConfig extends Resource {
  // ignore: constant_identifier_names
  static const String $tfType = 'google_firebase_remote_config_remote_config';

  GoogleFirebaseRemoteConfigRemoteConfig({
    required super.localName,
    List<FirebaseRemoteConfigRemoteConfigRemoteConfigParameter>? parameters,
    List<FirebaseRemoteConfigRemoteConfigRemoteConfigParameterGroup>?
    parameterGroups,
    List<FirebaseRemoteConfigRemoteConfigRemoteConfigCondition>? conditions,
    TfArg<String>? project,
    super.lifecycle,
    super.dependsOn,
  }) : super(
         terraformType: $tfType,
         argMap: {
           if (parameters != null)
             'parameters': TfArg.literal(
               parameters.map((p) => p.toArgMap()).toList(),
             ),
           if (parameterGroups != null)
             'parameter_groups': TfArg.literal(
               parameterGroups.map((g) => g.toArgMap()).toList(),
             ),
           if (conditions != null)
             'conditions': TfArg.literal(
               conditions.map((c) => c.toArgMap()).toList(),
             ),
           if (project != null) 'project': project,
         },
       );

  @override
  // ignore: non_constant_identifier_names
  Set<String> get $sensitiveFields =>
      _googleFirebaseRemoteConfigRemoteConfigSensitive;

  /// Reference to `name` attribute (full resource path, of the shape
  /// `projects/{project}/namespaces/{namespace}/remoteConfig`).
  TfRef<String> get nameRef => TfRef.attribute<String>(this, 'name');

  /// Reference to `id` attribute. Same shape as [nameRef] for this
  /// resource.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');
}
