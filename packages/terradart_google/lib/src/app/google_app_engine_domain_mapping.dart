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

  final TfArg<AppEngineDomainMappingSslSettingsSslManagementType>
  sslManagementType;

  Map<String, Object?> encode() => {
    if (certificateId != null) 'certificate_id': certificateId!.toTfJson(),
    'ssl_management_type': sslManagementType.toTfJson(),
  };
}

/// `ssl_management_type` — derived from the provider schema description.
enum AppEngineDomainMappingSslSettingsSslManagementType
    implements TerraformEnum {
  automatic('AUTOMATIC'),
  manual('MANUAL');

  const AppEngineDomainMappingSslSettingsSslManagementType(this.terraformValue);
  @override
  final String terraformValue;
}

/// Factory wrapper for `google_app_engine_domain_mapping`.
///
/// A domain serving an App Engine application.
final class GoogleAppEngineDomainMapping extends Resource {
  static const String tfType = 'google_app_engine_domain_mapping';

  GoogleAppEngineDomainMapping({
    required super.localName,
    required TfArg<String> domainName,
    TfArg<AppEngineDomainMappingOverrideStrategy>? overrideStrategy,
    AppEngineDomainMappingSslSettings? sslSettings,
    TfArg<String>? deletionPolicy,
    TfArg<String>? project,
    super.lifecycle,
    super.dependsOn,
  }) : super(
         terraformType: tfType,
         argMap: {
           'domain_name': domainName,
           if (overrideStrategy != null) 'override_strategy': overrideStrategy,
           if (sslSettings != null)
             'ssl_settings': TfArg.literal(sslSettings.encode()),
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
