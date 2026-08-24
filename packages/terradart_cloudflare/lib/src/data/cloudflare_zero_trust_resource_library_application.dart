// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `cloudflare_zero_trust_resource_library_application`.
const Set<String> _cloudflareZeroTrustResourceLibraryApplicationSensitive =
    <String>{};

/// Factory wrapper for `cloudflare_zero_trust_resource_library_application`.
final class DataCloudflareZeroTrustResourceLibraryApplication extends Data {
  static const String tfType =
      'cloudflare_zero_trust_resource_library_application';

  DataCloudflareZeroTrustResourceLibraryApplication({
    required super.localName,
    required TfArg<String> accountId,
    required TfArg<String> id,
  }) : super(
         terraformType: tfType,
         argMap: {'account_id': accountId, 'id': id},
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

  /// Reference to `hostnames` attribute.
  TfRef<List<String>> get hostnames =>
      TfRef.attribute<List<String>>(this, 'hostnames');

  /// Reference to `human_id` attribute.
  TfRef<String> get humanId => TfRef.attribute<String>(this, 'human_id');

  /// Reference to `intel_id` attribute.
  TfRef<num> get intelId => TfRef.attribute<num>(this, 'intel_id');

  /// Reference to `ip_subnets` attribute.
  TfRef<List<String>> get ipSubnets =>
      TfRef.attribute<List<String>>(this, 'ip_subnets');

  /// Reference to `port_protocols` attribute.
  TfRef<List<String>> get portProtocols =>
      TfRef.attribute<List<String>>(this, 'port_protocols');

  /// Reference to `support_domains` attribute.
  TfRef<List<String>> get supportDomains =>
      TfRef.attribute<List<String>>(this, 'support_domains');

  /// Reference to `supported` attribute.
  TfRef<List<String>> get supported =>
      TfRef.attribute<List<String>>(this, 'supported');

  /// Reference to `updated_at` attribute.
  TfRef<String> get updatedAt => TfRef.attribute<String>(this, 'updated_at');

  /// Reference to `version` attribute.
  TfRef<String> get version => TfRef.attribute<String>(this, 'version');
}
