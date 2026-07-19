// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `google_data_loss_prevention_inspect_template`.
const Set<String> _googleDataLossPreventionInspectTemplateSensitive =
    <String>{};

/// Factory wrapper for `google_data_loss_prevention_inspect_template`.
///
/// An inspect job template.
///
/// DLP inspect template — reusable configuration for finding sensitive
/// info types in content.
///
/// Enable `dlp.googleapis.com` via [GoogleProjectService] before apply.
/// [parent] is `projects/{project}` or
/// `projects/{project}/locations/{location}`.
final class GoogleDataLossPreventionInspectTemplate extends Resource {
  static const String tfType = 'google_data_loss_prevention_inspect_template';

  GoogleDataLossPreventionInspectTemplate({
    required super.localName,
    required TfArg<String> parent,
    TfArg<String>? templateId,
    TfArg<String>? displayName,
    TfArg<String>? description,
    TfArg<Map<String, dynamic>>? inspectConfig,
    TfArg<bool>? allowLimitedAvailabilityInfoTypes,
    TfArg<String>? deletionPolicy,
    super.lifecycle,
    super.dependsOn,
  }) : super(
         terraformType: tfType,
         argMap: {
           'parent': parent,
           if (templateId != null) 'template_id': templateId,
           if (displayName != null) 'display_name': displayName,
           if (description != null) 'description': description,
           if (inspectConfig != null) 'inspect_config': inspectConfig,
           if (allowLimitedAvailabilityInfoTypes != null)
             'allow_limited_availability_info_types':
                 allowLimitedAvailabilityInfoTypes,
           if (deletionPolicy != null) 'deletion_policy': deletionPolicy,
         },
       );

  @override
  Set<String> get sensitiveFields =>
      _googleDataLossPreventionInspectTemplateSensitive;

  /// Reference to `name` attribute.
  TfRef<String> get nameRef => TfRef.attribute<String>(this, 'name');

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');
}
