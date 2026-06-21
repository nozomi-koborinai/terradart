// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `google_app_engine_domain_mapping`.
const Set<String> _googleAppEngineDomainMappingSensitive = <String>{};

/// Factory wrapper for `google_app_engine_domain_mapping`.
///
/// A domain serving an App Engine application.
final class GoogleAppEngineDomainMapping extends Resource {
  static const String tfType = 'google_app_engine_domain_mapping';

  GoogleAppEngineDomainMapping({
    required super.localName,
    required TfArg<String> domainName,
    TfArg<String>? overrideStrategy,
    TfArg<Map<String, dynamic>>? sslSettings,
    TfArg<String>? deletionPolicy,
    TfArg<String>? project,
    super.lifecycle,
    super.dependsOn,
  }) : super(
         terraformType: tfType,
         argMap: {
           'domain_name': domainName,
           if (overrideStrategy != null) 'override_strategy': overrideStrategy,
           if (sslSettings != null) 'ssl_settings': sslSettings,
           if (deletionPolicy != null) 'deletion_policy': deletionPolicy,
           if (project != null) 'project': project,
         },
       );

  @override
  Set<String> get sensitiveFields => _googleAppEngineDomainMappingSensitive;

  /// Reference to `name` attribute.
  TfRef<String> get nameRef => TfRef.attribute<String>(this, 'name');

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `resource_records` attribute.
  TfRef<List<Map<String, Object?>>> get resourceRecords =>
      TfRef.attribute<List<Map<String, Object?>>>(this, 'resource_records');
}
