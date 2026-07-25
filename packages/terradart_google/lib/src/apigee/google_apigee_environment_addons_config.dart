// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `google_apigee_environment_addons_config`.
const Set<String> _googleApigeeEnvironmentAddonsConfigSensitive = <String>{};

/// Factory wrapper for `google_apigee_environment_addons_config`.
///
/// Enable/Disable add-ons for an Apigee environment.
///
/// Apigee **environment add-ons config** (e.g. analytics) on an environment.
///
/// **Cost:** gcp-cost: no environment-addons SKU under Apigee
/// `1C2D-8C78-EC58` beyond parent environment usage hours.
/// billing-behavior: add-on toggles on a never_apply
/// [GoogleApigeeEnvironment]. Deferred with the org Wave.
final class GoogleApigeeEnvironmentAddonsConfig extends Resource {
  static const String tfType = 'google_apigee_environment_addons_config';

  GoogleApigeeEnvironmentAddonsConfig({
    required super.localName,
    required TfArg<String> envId,
    TfArg<bool>? analyticsEnabled,
    super.lifecycle,
    super.dependsOn,
  }) : super(
         terraformType: tfType,
         argMap: {
           'env_id': envId,
           if (analyticsEnabled != null) 'analytics_enabled': analyticsEnabled,
         },
       );

  @override
  Set<String> get sensitiveFields =>
      _googleApigeeEnvironmentAddonsConfigSensitive;

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `id` attribute.
  TfRef<String> get idRef => TfRef.attribute<String>(this, 'id');
}
