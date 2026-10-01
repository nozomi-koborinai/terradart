// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:meta/meta.dart';
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `google_app_engine_domain_mapping`.
const Set<String> _googleAppEngineDomainMappingSensitive = <String>{};

/// `override_strategy` on `google_app_engine_domain_mapping`.
enum AppEngineDomainMappingOverrideStrategy implements TerraformEnum {
  strict('STRICT'),
  overrideStrategy('OVERRIDE');

  const AppEngineDomainMappingOverrideStrategy(this.terraformValue);
  @override
  final String terraformValue;
}

/// Typed helper for the `ssl_settings` block of
/// `google_app_engine_domain_mapping` (derived from provider schema).
@immutable
final class AppEngineDomainMappingSslSettings {
  const AppEngineDomainMappingSslSettings({
    this.certificateId,
    required this.sslManagementType,
  });

  final TfArg<String>? certificateId;

  final TfArg<AppEngineDomainMappingSslManagementType> sslManagementType;

  Map<String, Object?> encode() => {
    'certificate_id': ?certificateId?.toTfJson(),
    'ssl_management_type': sslManagementType.toTfJson(),
  };
}

/// `ssl_management_type` — derived from the provider schema description.
enum AppEngineDomainMappingSslManagementType implements TerraformEnum {
  automatic('AUTOMATIC'),
  manual('MANUAL');

  const AppEngineDomainMappingSslManagementType(this.terraformValue);
  @override
  final String terraformValue;
}

/// Factory wrapper for `google_app_engine_domain_mapping`.
///
/// A domain serving an App Engine application.
final class GoogleAppEngineDomainMapping extends Resource {
  static const String tfType = 'google_app_engine_domain_mapping';

  GoogleAppEngineDomainMapping(
    super.localName, {
    required TfArg<String> domainName,
    TfArg<AppEngineDomainMappingOverrideStrategy>? overrideStrategy,
    AppEngineDomainMappingSslSettings? sslSettings,
    TfArg<String>? deletionPolicy,
    TfArg<String>? project,
    super.lifecycle,
    super.dependsOn,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           'domain_name': domainName,
           'override_strategy': ?overrideStrategy,
           if (sslSettings != null)
             'ssl_settings': TfArg.literal(sslSettings.encode()),
           'deletion_policy': ?deletionPolicy,
           'project': ?project,
         },
       );

  @override
  Set<String> get sensitiveFields => _googleAppEngineDomainMappingSensitive;

  /// A reference to this resource, for arguments typed
  /// `RefTo<GoogleAppEngineDomainMapping>`.
  RefTo<GoogleAppEngineDomainMapping> get ref => RefTo.of(this);

  /// Reference to `name` attribute.
  TfRef<String> get name => TfRef.attribute<String>(this, 'name');

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `resource_records` attribute.
  TfRef<List<Map<String, Object?>>> get resourceRecords =>
      TfRef.attribute<List<Map<String, Object?>>>(this, 'resource_records');

  /// Reference to `deletion_policy` attribute.
  TfRef<String> get deletionPolicy =>
      TfRef.attribute<String>(this, 'deletion_policy');

  /// Reference to `domain_name` attribute.
  TfRef<String> get domainName => TfRef.attribute<String>(this, 'domain_name');

  /// Reference to `override_strategy` attribute.
  TfRef<String> get overrideStrategy =>
      TfRef.attribute<String>(this, 'override_strategy');

  /// Reference to `project` attribute.
  TfRef<String> get project => TfRef.attribute<String>(this, 'project');
}
