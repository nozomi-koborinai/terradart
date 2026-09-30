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
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           'parent': parent,
           'template_id': ?templateId,
           'display_name': ?displayName,
           'description': ?description,
           'inspect_config': ?inspectConfig,
           'allow_limited_availability_info_types':
               ?allowLimitedAvailabilityInfoTypes,
           'deletion_policy': ?deletionPolicy,
         },
       );

  @override
  Set<String> get sensitiveFields =>
      _googleDataLossPreventionInspectTemplateSensitive;

  /// A reference to this resource, for arguments typed
  /// `RefTo<GoogleDataLossPreventionInspectTemplate>`.
  RefTo<GoogleDataLossPreventionInspectTemplate> get ref => RefTo.of(this);

  /// Reference to `name` attribute.
  TfRef<String> get nameRef => TfRef.attribute<String>(this, 'name');

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `allow_limited_availability_info_types` attribute.
  TfRef<bool> get allowLimitedAvailabilityInfoTypesRef =>
      TfRef.attribute<bool>(this, 'allow_limited_availability_info_types');

  /// Reference to `deletion_policy` attribute.
  TfRef<String> get deletionPolicyRef =>
      TfRef.attribute<String>(this, 'deletion_policy');

  /// Reference to `description` attribute.
  TfRef<String> get descriptionRef =>
      TfRef.attribute<String>(this, 'description');

  /// Reference to `display_name` attribute.
  TfRef<String> get displayNameRef =>
      TfRef.attribute<String>(this, 'display_name');

  /// Reference to `parent` attribute.
  TfRef<String> get parentRef => TfRef.attribute<String>(this, 'parent');

  /// Reference to `template_id` attribute.
  TfRef<String> get templateIdRef =>
      TfRef.attribute<String>(this, 'template_id');
}
