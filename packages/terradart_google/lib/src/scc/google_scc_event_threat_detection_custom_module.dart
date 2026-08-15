// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `google_scc_event_threat_detection_custom_module`.
const Set<String> _googleSccEventThreatDetectionCustomModuleSensitive =
    <String>{};

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

  GoogleSccEventThreatDetectionCustomModule({
    required super.localName,
    required TfArg<String> config,
    TfArg<String>? deletionPolicy,
    TfArg<String>? displayName,
    required TfArg<String> enablementState,
    required TfArg<String> organization,
    required TfArg<String> type,
    super.lifecycle,
    super.dependsOn,
  }) : super(
         terraformType: tfType,
         argMap: {
           'config': config,
           if (deletionPolicy != null) 'deletion_policy': deletionPolicy,
           if (displayName != null) 'display_name': displayName,
           'enablement_state': enablementState,
           'organization': organization,
           'type': type,
         },
       );

  @override
  Set<String> get sensitiveFields =>
      _googleSccEventThreatDetectionCustomModuleSensitive;

  /// Reference to `name` attribute.
  TfRef<String> get nameRef => TfRef.attribute<String>(this, 'name');

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `last_editor` attribute.
  TfRef<String> get lastEditor => TfRef.attribute<String>(this, 'last_editor');

  /// Reference to `update_time` attribute.
  TfRef<String> get updateTime => TfRef.attribute<String>(this, 'update_time');
}
