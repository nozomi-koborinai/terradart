// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `google_scc_management_organization_event_threat_detection_custom_module`.
const Set<String>
_googleSccManagementOrganizationEventThreatDetectionCustomModuleSensitive =
    <String>{};

/// Scc Management Organization Event Threat Detection Custom Module Enablement enum for `enablement_state`.
enum SccManagementOrganizationEventThreatDetectionCustomModuleEnablementState
    implements TerraformEnum {
  enabled('ENABLED'),
  disabled('DISABLED');

  const SccManagementOrganizationEventThreatDetectionCustomModuleEnablementState(
    this.terraformValue,
  );
  @override
  final String terraformValue;
}

/// Factory wrapper for `google_scc_management_organization_event_threat_detection_custom_module`.
///
/// Represents an instance of an Event Threat Detection custom module, including
/// its full module name, display name, enablement state, and last updated time.
/// You can create a custom module at the organization level only.
///
/// SCC Management org ETD custom module — leftover factory on the
/// apply-excluded path (synth + `terraform validate` only).
///
/// Needs an organization / folder / external artifact that
/// standalone terradart-validate cannot supply. Do not apply.
final class GoogleSccManagementOrganizationEventThreatDetectionCustomModule
    extends Resource {
  static const String tfType =
      'google_scc_management_organization_event_threat_detection_custom_module';

  GoogleSccManagementOrganizationEventThreatDetectionCustomModule({
    required super.localName,
    TfArg<String>? config,
    TfArg<String>? deletionPolicy,
    TfArg<String>? displayName,
    TfArg<
      SccManagementOrganizationEventThreatDetectionCustomModuleEnablementState
    >?
    enablementState,
    TfArg<String>? location,
    required TfArg<String> organization,
    TfArg<String>? type,
    super.lifecycle,
    super.dependsOn,
  }) : super(
         terraformType: tfType,
         argMap: {
           if (config != null) 'config': config,
           if (deletionPolicy != null) 'deletion_policy': deletionPolicy,
           if (displayName != null) 'display_name': displayName,
           if (enablementState != null) 'enablement_state': enablementState,
           if (location != null) 'location': location,
           'organization': organization,
           if (type != null) 'type': type,
         },
       );

  @override
  Set<String> get sensitiveFields =>
      _googleSccManagementOrganizationEventThreatDetectionCustomModuleSensitive;

  /// Reference to `name` attribute.
  TfRef<String> get nameRef => TfRef.attribute<String>(this, 'name');

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `last_editor` attribute.
  TfRef<String> get lastEditor => TfRef.attribute<String>(this, 'last_editor');

  /// Reference to `update_time` attribute.
  TfRef<String> get updateTime => TfRef.attribute<String>(this, 'update_time');
}
