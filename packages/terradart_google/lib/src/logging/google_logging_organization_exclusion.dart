// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `google_logging_organization_exclusion`.
const Set<String> _googleLoggingOrganizationExclusionSensitive = <String>{};

/// Factory wrapper for `google_logging_organization_exclusion`.
///
/// Leftover factory on the apply-excluded path
/// (synth + `terraform validate` only).
///
/// Needs an organization / folder / billing account /
/// external artifact that standalone terradart-validate
/// cannot supply. Do not apply.
final class GoogleLoggingOrganizationExclusion extends Resource {
  static const String tfType = 'google_logging_organization_exclusion';

  GoogleLoggingOrganizationExclusion({
    required super.localName,
    TfArg<String>? description,
    TfArg<bool>? disabled,
    required TfArg<String> filter,
    required TfArg<String> name,
    required TfArg<String> orgId,
    super.lifecycle,
    super.dependsOn,
  }) : super(
         terraformType: tfType,
         argMap: {
           if (description != null) 'description': description,
           if (disabled != null) 'disabled': disabled,
           'filter': filter,
           'name': name,
           'org_id': orgId,
         },
       );

  @override
  Set<String> get sensitiveFields =>
      _googleLoggingOrganizationExclusionSensitive;

  /// Reference to `name` attribute.
  TfRef<String> get nameRef => TfRef.attribute<String>(this, 'name');

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');
}
