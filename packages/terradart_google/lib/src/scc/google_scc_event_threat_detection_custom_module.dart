// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `google_scc_event_threat_detection_custom_module`.
const Set<String> _googleSccEventThreatDetectionCustomModuleSensitive =
    <String>{};

/// Scc Event Threat Detection Custom Module Enablement enum for `enablement_state`.
extension type const SccEventThreatDetectionCustomModuleEnablementState._(
  TfArg<String> _
) implements TfArg<String> {
  SccEventThreatDetectionCustomModuleEnablementState.variable(String name)
    : this._(TfArg.variable(name));
  SccEventThreatDetectionCustomModuleEnablementState.expression(String template)
    : this._(TfArg.expression(template));
  const SccEventThreatDetectionCustomModuleEnablementState.arg(
    TfArg<String> arg,
  ) : this._(arg);

  static const enabled = SccEventThreatDetectionCustomModuleEnablementState._(
    TfArgLiteral('ENABLED'),
  );
  static const disabled = SccEventThreatDetectionCustomModuleEnablementState._(
    TfArgLiteral('DISABLED'),
  );

  static const List<SccEventThreatDetectionCustomModuleEnablementState> values =
      [enabled, disabled];
}

/// Factory wrapper for `google_scc_event_threat_detection_custom_module`.
///
/// Represents an instance of an Event Threat Detection custom module, including
/// its full module name, display name, enablement state, andlast updated time.
/// You can create a custom module at the organization level only.
///
/// SCC Event Threat Detection custom module — leftover factory on the
/// apply-excluded path (synth + `terraform validate` only).
///
/// Needs an organization / folder / external artifact that
/// standalone terradart-validate cannot supply. Do not apply.
final class GoogleSccEventThreatDetectionCustomModule extends Resource {
  static const String tfType =
      'google_scc_event_threat_detection_custom_module';

  GoogleSccEventThreatDetectionCustomModule(
    super.localName, {
    required TfArg<String> config,
    TfArg<String>? deletionPolicy,
    TfArg<String>? displayName,
    required SccEventThreatDetectionCustomModuleEnablementState enablementState,
    required TfArg<String> organization,
    required TfArg<String> type,
    super.lifecycle,
    super.dependsOn,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           'config': config,
           'deletion_policy': ?deletionPolicy,
           'display_name': ?displayName,
           'enablement_state': enablementState,
           'organization': organization,
           'type': type,
         },
       );

  @override
  Set<String> get sensitiveFields =>
      _googleSccEventThreatDetectionCustomModuleSensitive;

  /// A reference to this resource, for arguments typed
  /// `RefTo<GoogleSccEventThreatDetectionCustomModule>`.
  RefTo<GoogleSccEventThreatDetectionCustomModule> get ref => RefTo.of(this);

  /// Reference to `name` attribute.
  TfRef<String> get name => TfRef.attribute<String>(this, 'name');

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `last_editor` attribute.
  TfRef<String> get lastEditor => TfRef.attribute<String>(this, 'last_editor');

  /// Reference to `update_time` attribute.
  TfRef<String> get updateTime => TfRef.attribute<String>(this, 'update_time');

  /// Reference to `config` attribute.
  TfRef<String> get config => TfRef.attribute<String>(this, 'config');

  /// Reference to `deletion_policy` attribute.
  TfRef<String> get deletionPolicy =>
      TfRef.attribute<String>(this, 'deletion_policy');

  /// Reference to `display_name` attribute.
  TfRef<String> get displayName =>
      TfRef.attribute<String>(this, 'display_name');

  /// Reference to `enablement_state` attribute.
  TfRef<String> get enablementState =>
      TfRef.attribute<String>(this, 'enablement_state');

  /// Reference to `organization` attribute.
  TfRef<String> get organization =>
      TfRef.attribute<String>(this, 'organization');

  /// Reference to `type` attribute.
  TfRef<String> get type => TfRef.attribute<String>(this, 'type');
}
