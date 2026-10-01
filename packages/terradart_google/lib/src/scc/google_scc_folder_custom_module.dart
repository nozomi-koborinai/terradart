// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:meta/meta.dart';
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `google_scc_folder_custom_module`.
const Set<String> _googleSccFolderCustomModuleSensitive = <String>{};

/// Scc Folder Custom Module Enablement enum for `enablement_state`.
extension type const SccFolderCustomModuleEnablementState._(TfArg<String> _)
    implements TfArg<String> {
  SccFolderCustomModuleEnablementState.variable(String name)
    : this._(TfArg.variable(name));
  SccFolderCustomModuleEnablementState.expression(String template)
    : this._(TfArg.expression(template));
  const SccFolderCustomModuleEnablementState.arg(TfArg<String> arg)
    : this._(arg);

  static const enabled = SccFolderCustomModuleEnablementState._(
    TfArgLiteral('ENABLED'),
  );
  static const disabled = SccFolderCustomModuleEnablementState._(
    TfArgLiteral('DISABLED'),
  );

  static const List<SccFolderCustomModuleEnablementState> values = [
    enabled,
    disabled,
  ];
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

  final SccFolderCustomModuleSeverity severity;

  final SccFolderCustomModuleCustomOutput? customOutput;

  final SccFolderCustomModulePredicate predicate;

  final SccFolderCustomModuleResourceSelector resourceSelector;

  Map<String, Object?> encode() => {
    'description': ?description?.toTfJson(),
    'recommendation': recommendation.toTfJson(),
    'severity': severity.toTfJson(),
    'custom_output': ?customOutput?.encode(),
    'predicate': predicate.encode(),
    'resource_selector': resourceSelector.encode(),
  };
}

/// `severity` — derived from the provider schema description.
extension type const SccFolderCustomModuleSeverity._(TfArg<String> _)
    implements TfArg<String> {
  SccFolderCustomModuleSeverity.variable(String name)
    : this._(TfArg.variable(name));
  SccFolderCustomModuleSeverity.expression(String template)
    : this._(TfArg.expression(template));
  const SccFolderCustomModuleSeverity.arg(TfArg<String> arg) : this._(arg);

  static const critical = SccFolderCustomModuleSeverity._(
    TfArgLiteral('CRITICAL'),
  );
  static const high = SccFolderCustomModuleSeverity._(TfArgLiteral('HIGH'));
  static const medium = SccFolderCustomModuleSeverity._(TfArgLiteral('MEDIUM'));
  static const low = SccFolderCustomModuleSeverity._(TfArgLiteral('LOW'));

  static const List<SccFolderCustomModuleSeverity> values = [
    critical,
    high,
    medium,
    low,
  ];
}

/// Typed helper for the `custom_config.custom_output` block of
/// `google_scc_folder_custom_module` (derived from provider schema).
@immutable
final class SccFolderCustomModuleCustomOutput {
  const SccFolderCustomModuleCustomOutput({this.properties});

  final List<SccFolderCustomModuleProperties>? properties;

  Map<String, Object?> encode() => {
    if (properties != null)
      'properties': [for (final e in properties!) e.encode()],
  };
}

/// Typed helper for the `custom_config.custom_output.properties` block of
/// `google_scc_folder_custom_module` (derived from provider schema).
@immutable
final class SccFolderCustomModuleProperties {
  const SccFolderCustomModuleProperties({this.name, this.valueExpression});

  final TfArg<String>? name;

  final SccFolderCustomModuleValueExpression? valueExpression;

  Map<String, Object?> encode() => {
    'name': ?name?.toTfJson(),
    'value_expression': ?valueExpression?.encode(),
  };
}

/// Typed helper for the `custom_config.custom_output.properties.value_expression` block of
/// `google_scc_folder_custom_module` (derived from provider schema).
@immutable
final class SccFolderCustomModuleValueExpression {
  const SccFolderCustomModuleValueExpression({
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
    'description': ?description?.toTfJson(),
    'expression': expression.toTfJson(),
    'location': ?location?.toTfJson(),
    'title': ?title?.toTfJson(),
  };
}

/// Typed helper for the `custom_config.predicate` block of
/// `google_scc_folder_custom_module` (derived from provider schema).
@immutable
final class SccFolderCustomModulePredicate {
  const SccFolderCustomModulePredicate({
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
    'description': ?description?.toTfJson(),
    'expression': expression.toTfJson(),
    'location': ?location?.toTfJson(),
    'title': ?title?.toTfJson(),
  };
}

/// Typed helper for the `custom_config.resource_selector` block of
/// `google_scc_folder_custom_module` (derived from provider schema).
@immutable
final class SccFolderCustomModuleResourceSelector {
  const SccFolderCustomModuleResourceSelector({required this.resourceTypes});

  final TfArg<List<String>> resourceTypes;

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

  GoogleSccFolderCustomModule(
    super.localName, {
    TfArg<String>? deletionPolicy,
    required TfArg<String> displayName,
    required SccFolderCustomModuleEnablementState enablementState,
    required TfArg<String> folder,
    required SccFolderCustomModuleCustomConfig customConfig,
    super.lifecycle,
    super.dependsOn,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           'deletion_policy': ?deletionPolicy,
           'display_name': displayName,
           'enablement_state': enablementState,
           'folder': folder,
           'custom_config': TfArg.literal(customConfig.encode()),
         },
       );

  @override
  Set<String> get sensitiveFields => _googleSccFolderCustomModuleSensitive;

  /// A reference to this resource, for arguments typed
  /// `RefTo<GoogleSccFolderCustomModule>`.
  RefTo<GoogleSccFolderCustomModule> get ref => RefTo.of(this);

  /// Reference to `name` attribute.
  TfRef<String> get name => TfRef.attribute<String>(this, 'name');

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `ancestor_module` attribute.
  TfRef<String> get ancestorModule =>
      TfRef.attribute<String>(this, 'ancestor_module');

  /// Reference to `last_editor` attribute.
  TfRef<String> get lastEditor => TfRef.attribute<String>(this, 'last_editor');

  /// Reference to `update_time` attribute.
  TfRef<String> get updateTime => TfRef.attribute<String>(this, 'update_time');

  /// Reference to `deletion_policy` attribute.
  TfRef<String> get deletionPolicy =>
      TfRef.attribute<String>(this, 'deletion_policy');

  /// Reference to `display_name` attribute.
  TfRef<String> get displayName =>
      TfRef.attribute<String>(this, 'display_name');

  /// Reference to `enablement_state` attribute.
  TfRef<String> get enablementState =>
      TfRef.attribute<String>(this, 'enablement_state');

  /// Reference to `folder` attribute.
  TfRef<String> get folder => TfRef.attribute<String>(this, 'folder');
}
