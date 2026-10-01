// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:meta/meta.dart';
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `google_ces_security_settings`.
const Set<String> _googleCesSecuritySettingsSensitive = <String>{};

/// Typed helper for the `endpoint_control_policy` block of
/// `google_ces_security_settings` (derived from provider schema).
@immutable
final class CesSecuritySettingsEndpointControlPolicy {
  const CesSecuritySettingsEndpointControlPolicy({
    this.allowedOrigins,
    this.enforcementScope,
  });

  final TfArg<List<String>>? allowedOrigins;

  final TfArg<CesSecuritySettingsEnforcementScope>? enforcementScope;

  Map<String, Object?> encode() => {
    'allowed_origins': ?allowedOrigins?.toTfJson(),
    'enforcement_scope': ?enforcementScope?.toTfJson(),
  };
}

/// `enforcement_scope` — derived from the provider schema description.
enum CesSecuritySettingsEnforcementScope implements TerraformEnum {
  enforcementScopeUnspecified('ENFORCEMENT_SCOPE_UNSPECIFIED'),
  vpcscOnly('VPCSC_ONLY'),
  always('ALWAYS');

  const CesSecuritySettingsEnforcementScope(this.terraformValue);
  @override
  final String terraformValue;
}

/// Factory wrapper for `google_ces_security_settings`.
///
/// Security settings for a location in Customer Engagement Suite.
final class GoogleCesSecuritySettings extends Resource {
  static const String tfType = 'google_ces_security_settings';

  GoogleCesSecuritySettings({
    required super.localName,
    required TfArg<String> location,
    TfArg<String>? project,
    CesSecuritySettingsEndpointControlPolicy? endpointControlPolicy,
    super.lifecycle,
    super.dependsOn,
    String? provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         provider: provider ?? 'google-beta',
         argMap: {
           'location': location,
           'project': ?project,
           if (endpointControlPolicy != null)
             'endpoint_control_policy': TfArg.literal(
               endpointControlPolicy.encode(),
             ),
         },
       );

  @override
  Set<String> get sensitiveFields => _googleCesSecuritySettingsSensitive;

  /// A reference to this resource, for arguments typed
  /// `RefTo<GoogleCesSecuritySettings>`.
  RefTo<GoogleCesSecuritySettings> get ref => RefTo.of(this);

  /// Reference to `name` attribute.
  TfRef<String> get name => TfRef.attribute<String>(this, 'name');

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `create_time` attribute.
  TfRef<String> get createTime => TfRef.attribute<String>(this, 'create_time');

  /// Reference to `etag` attribute.
  TfRef<String> get etag => TfRef.attribute<String>(this, 'etag');

  /// Reference to `update_time` attribute.
  TfRef<String> get updateTime => TfRef.attribute<String>(this, 'update_time');

  /// Reference to `location` attribute.
  TfRef<String> get location => TfRef.attribute<String>(this, 'location');

  /// Reference to `project` attribute.
  TfRef<String> get project => TfRef.attribute<String>(this, 'project');
}
