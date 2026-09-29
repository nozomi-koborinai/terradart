// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `google_chronicle_soar_domain`.
const Set<String> _googleChronicleSoarDomainSensitive = <String>{};

/// Factory wrapper for `google_chronicle_soar_domain`.
///
/// A SOAR domain designate a domain as internal, ensuring that entities
/// associated with it are treated as organizational assets rather than external
/// threats during ingestion.
final class GoogleChronicleSoarDomain extends Resource {
  static const String tfType = 'google_chronicle_soar_domain';

  GoogleChronicleSoarDomain({
    required super.localName,
    TfArg<String>? deletionPolicy,
    required TfArg<String> displayName,
    required TfArg<String> environmentsJson,
    required TfArg<String> instance,
    required TfArg<String> location,
    TfArg<String>? project,
    super.lifecycle,
    super.dependsOn,
    String? provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         provider: provider ?? 'google-beta',
         argMap: {
           if (deletionPolicy != null) 'deletion_policy': deletionPolicy,
           'display_name': displayName,
           'environments_json': environmentsJson,
           'instance': instance,
           'location': location,
           if (project != null) 'project': project,
         },
       );

  @override
  Set<String> get sensitiveFields => _googleChronicleSoarDomainSensitive;

  /// Reference to `name` attribute.
  TfRef<String> get nameRef => TfRef.attribute<String>(this, 'name');

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `soar_domain_id` attribute.
  TfRef<String> get soarDomainId =>
      TfRef.attribute<String>(this, 'soar_domain_id');
}
