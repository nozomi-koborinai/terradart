// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:meta/meta.dart';
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `google_scc_folder_custom_module`.
const Set<String> _googleSccFolderCustomModuleSensitive = <String>{};

/// Scc Folder Custom Module Enablement enum for `enablement_state`.
enum SccFolderCustomModuleEnablementState implements TerraformEnum {
  enabled('ENABLED'),
  disabled('DISABLED');

  const SccFolderCustomModuleEnablementState(this.terraformValue);
  @override
  final String terraformValue;
}

/// Typed helper for the `custom_config` block of
/// `google_scc_folder_custom_module` (derived from provider schema).
@immutable
final class SccFolderCustomModuleCustomConfig {
  const SccFolderCustomModuleCustomConfig({
    this.description,
    required this.recommendation,
    required this.severity,
    this.customOutput,
    required this.predicate,
    required this.resourceSelector,
  });

  final TfArg<String>? description;

  final TfArg<String> recommendation;

  final TfArg<SccFolderCustomModuleCustomConfigSeverity> severity;

  final SccFolderCustomModuleCustomConfigCustomOutput? customOutput;

  final SccFolderCustomModuleCustomConfigPredicate predicate;

  final SccFolderCustomModuleCustomConfigResourceSelector resourceSelector;

  Map<String, Object?> encode() => {
    if (description != null) 'description': description!.toTfJson(),
    'recommendation': recommendation.toTfJson(),
    'severity': severity.toTfJson(),
    if (customOutput != null) 'custom_output': customOutput!.encode(),
    'predicate': predicate.encode(),
    'resource_selector': resourceSelector.encode(),
  };
}

/// `severity` — derived from the provider schema description.
enum SccFolderCustomModuleCustomConfigSeverity implements TerraformEnum {
  critical('CRITICAL'),
  high('HIGH'),
  medium('MEDIUM'),
  low('LOW');

  const SccFolderCustomModuleCustomConfigSeverity(this.terraformValue);
  @override
  final String terraformValue;
}

/// Typed helper for the `custom_config.custom_output` block of
/// `google_scc_folder_custom_module` (derived from provider schema).
@immutable
final class SccFolderCustomModuleCustomConfigCustomOutput {
  const SccFolderCustomModuleCustomConfigCustomOutput({this.properties});

  final List<SccFolderCustomModuleCustomConfigCustomOutputProperties>?
  properties;

  Map<String, Object?> encode() => {
    if (properties != null)
      'properties': [for (final e in properties!) e.encode()],
  };
}

/// Typed helper for the `custom_config.custom_output.properties` block of
/// `google_scc_folder_custom_module` (derived from provider schema).
@immutable
final class SccFolderCustomModuleCustomConfigCustomOutputProperties {
  const SccFolderCustomModuleCustomConfigCustomOutputProperties({
    this.name,
    this.valueExpression,
  });

  final TfArg<String>? name;

  final SccFolderCustomModuleCustomConfigCustomOutputPropertiesValueExpression?
  valueExpression;

  Map<String, Object?> encode() => {
    if (name != null) 'name': name!.toTfJson(),
    if (valueExpression != null) 'value_expression': valueExpression!.encode(),
  };
}

/// Typed helper for the `custom_config.custom_output.properties.value_expression` block of
/// `google_scc_folder_custom_module` (derived from provider schema).
@immutable
final class SccFolderCustomModuleCustomConfigCustomOutputPropertiesValueExpression {
  const SccFolderCustomModuleCustomConfigCustomOutputPropertiesValueExpression({
    this.description,
    required this.expression,
    this.location,
    this.title,
  });

  final TfArg<String>? description;

  final TfArg<String> expression;

  final TfArg<String>? location;

  final TfArg<String>? title;

  Map<String, Object?> encode() => {
    if (description != null) 'description': description!.toTfJson(),
    'expression': expression.toTfJson(),
    if (location != null) 'location': location!.toTfJson(),
    if (title != null) 'title': title!.toTfJson(),
  };
}

/// Typed helper for the `custom_config.predicate` block of
/// `google_scc_folder_custom_module` (derived from provider schema).
@immutable
final class SccFolderCustomModuleCustomConfigPredicate {
  const SccFolderCustomModuleCustomConfigPredicate({
    this.description,
    required this.expression,
    this.location,
    this.title,
  });

  final TfArg<String>? description;

  final TfArg<String> expression;

  final TfArg<String>? location;

  final TfArg<String>? title;

  Map<String, Object?> encode() => {
    if (description != null) 'description': description!.toTfJson(),
    'expression': expression.toTfJson(),
    if (location != null) 'location': location!.toTfJson(),
    if (title != null) 'title': title!.toTfJson(),
  };
}

/// Typed helper for the `custom_config.resource_selector` block of
/// `google_scc_folder_custom_module` (derived from provider schema).
@immutable
final class SccFolderCustomModuleCustomConfigResourceSelector {
  const SccFolderCustomModuleCustomConfigResourceSelector({
    required this.resourceTypes,
  });

  final TfArg<List<Object?>> resourceTypes;

  Map<String, Object?> encode() => {'resource_types': resourceTypes.toTfJson()};
}

/// Factory wrapper for `google_scc_folder_custom_module`.
///
/// Represents an instance of a Security Health Analytics custom module,
/// including its full module name, display name, enablement state, and last
/// updated time. You can create a custom module at the organization, folder, or
/// project level. Custom modules that you create at the organization or folder
/// level are inherited by the child folders and projects.
///
/// SCC folder SHA custom module — leftover factory on the
/// apply-excluded path (synth + `terraform validate` only).
///
/// Needs an organization / folder / external artifact that
/// standalone terradart-validate cannot supply. Do not apply.
final class GoogleSccFolderCustomModule extends Resource {
  static const String tfType = 'google_scc_folder_custom_module';

  GoogleSccFolderCustomModule({
    required super.localName,
    TfArg<String>? deletionPolicy,
    required TfArg<String> displayName,
    required TfArg<SccFolderCustomModuleEnablementState> enablementState,
    required TfArg<String> folder,
    required SccFolderCustomModuleCustomConfig customConfig,
    super.lifecycle,
    super.dependsOn,
  }) : super(
         terraformType: tfType,
         argMap: {
           if (deletionPolicy != null) 'deletion_policy': deletionPolicy,
           'display_name': displayName,
           'enablement_state': enablementState,
           'folder': folder,
           'custom_config': TfArg.literal(customConfig.encode()),
         },
       );

  @override
  Set<String> get sensitiveFields => _googleSccFolderCustomModuleSensitive;

  /// Reference to `name` attribute.
  TfRef<String> get nameRef => TfRef.attribute<String>(this, 'name');

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `ancestor_module` attribute.
  TfRef<String> get ancestorModule =>
      TfRef.attribute<String>(this, 'ancestor_module');

  /// Reference to `last_editor` attribute.
  TfRef<String> get lastEditor => TfRef.attribute<String>(this, 'last_editor');

  /// Reference to `update_time` attribute.
  TfRef<String> get updateTime => TfRef.attribute<String>(this, 'update_time');
}
