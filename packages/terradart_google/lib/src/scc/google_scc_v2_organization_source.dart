// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `google_scc_v2_organization_source`.
const Set<String> _googleSccV2OrganizationSourceSensitive = <String>{};

/// Factory wrapper for `google_scc_v2_organization_source`.
///
/// A Cloud Security Command Center's (Cloud SCC) finding source. A finding
/// source is an entity or a mechanism that can produce a finding. A source is
/// like a container of findings that come from the same scanner, logger,
/// monitor, etc.
///
/// SCC v2 organization source — leftover factory on the
/// apply-excluded path (synth + `terraform validate` only).
///
/// Needs an organization / folder / external artifact that
/// standalone terradart-validate cannot supply. Do not apply.
final class GoogleSccV2OrganizationSource extends Resource {
  static const String tfType = 'google_scc_v2_organization_source';

  GoogleSccV2OrganizationSource({
    required super.localName,
    TfArg<String>? description,
    required TfArg<String> displayName,
    required TfArg<String> organization,
    super.lifecycle,
    super.dependsOn,
  }) : super(
         terraformType: tfType,
         argMap: {
           if (description != null) 'description': description,
           'display_name': displayName,
           'organization': organization,
         },
       );

  @override
  Set<String> get sensitiveFields => _googleSccV2OrganizationSourceSensitive;

  /// Reference to `name` attribute.
  TfRef<String> get nameRef => TfRef.attribute<String>(this, 'name');

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');
}
