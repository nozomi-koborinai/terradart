// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `cloudflare_zero_trust_resource_library_application`.
const Set<String> _cloudflareZeroTrustResourceLibraryApplicationSensitive =
    <String>{};

/// Factory wrapper for `cloudflare_zero_trust_resource_library_application`.
final class CloudflareZeroTrustResourceLibraryApplication extends Resource {
  static const String tfType =
      'cloudflare_zero_trust_resource_library_application';

  CloudflareZeroTrustResourceLibraryApplication({
    required super.localName,
    required TfArg<String> accountId,
    TfArg<num>? categoryId,
    TfArg<List<String>>? hostnames,
    TfArg<String>? humanId,
    TfArg<List<String>>? ipSubnets,
    TfArg<String>? name,
    TfArg<List<String>>? portProtocols,
    TfArg<List<String>>? supportDomains,
    super.lifecycle,
    super.dependsOn,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           'account_id': accountId,
           if (categoryId != null) 'category_id': categoryId,
           if (hostnames != null) 'hostnames': hostnames,
           if (humanId != null) 'human_id': humanId,
           if (ipSubnets != null) 'ip_subnets': ipSubnets,
           if (name != null) 'name': name,
           if (portProtocols != null) 'port_protocols': portProtocols,
           if (supportDomains != null) 'support_domains': supportDomains,
         },
       );

  @override
  Set<String> get sensitiveFields =>
      _cloudflareZeroTrustResourceLibraryApplicationSensitive;

  /// Reference to `name` attribute.
  TfRef<String> get nameRef => TfRef.attribute<String>(this, 'name');

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `application_confidence_score` attribute.
  TfRef<num> get applicationConfidenceScore =>
      TfRef.attribute<num>(this, 'application_confidence_score');

  /// Reference to `application_score_composition` attribute.
  TfRef<String> get applicationScoreComposition =>
      TfRef.attribute<String>(this, 'application_score_composition');

  /// Reference to `application_source` attribute.
  TfRef<String> get applicationSource =>
      TfRef.attribute<String>(this, 'application_source');

  /// Reference to `application_type` attribute.
  TfRef<String> get applicationType =>
      TfRef.attribute<String>(this, 'application_type');

  /// Reference to `application_type_description` attribute.
  TfRef<String> get applicationTypeDescription =>
      TfRef.attribute<String>(this, 'application_type_description');

  /// Reference to `created_at` attribute.
  TfRef<String> get createdAt => TfRef.attribute<String>(this, 'created_at');

  /// Reference to `gen_ai_score` attribute.
  TfRef<num> get genAiScore => TfRef.attribute<num>(this, 'gen_ai_score');

  /// Reference to `supported` attribute.
  TfRef<List<String>> get supported =>
      TfRef.attribute<List<String>>(this, 'supported');

  /// Reference to `updated_at` attribute.
  TfRef<String> get updatedAt => TfRef.attribute<String>(this, 'updated_at');

  /// Reference to `version` attribute.
  TfRef<String> get version => TfRef.attribute<String>(this, 'version');
}
