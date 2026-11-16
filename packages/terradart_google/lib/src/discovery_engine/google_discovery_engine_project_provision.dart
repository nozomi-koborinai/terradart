// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:meta/meta.dart';
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `google_discovery_engine_project_provision`.
const Set<String> _googleDiscoveryEngineProjectProvisionSensitive = <String>{};

/// Typed helper for the `saas_params` block of
/// `google_discovery_engine_project_provision` (derived from provider schema).
@immutable
final class DiscoveryEngineProjectProvisionSaasParams {
  const DiscoveryEngineProjectProvisionSaasParams({
    this.acceptBizQos,
    this.isBiz,
  });

  final TfArg<bool>? acceptBizQos;

  final TfArg<bool>? isBiz;

  @internal
  Map<String, Object?> encode() => {
    'accept_biz_qos': ?acceptBizQos?.toTfJson(),
    'is_biz': ?isBiz?.toTfJson(),
  };
}

/// Factory wrapper for `google_discovery_engine_project_provision`.
///
/// Provisions a Google Cloud project for Discovery Engine and prepares and
/// initializes related systems.
final class GoogleDiscoveryEngineProjectProvision extends Resource {
  static const String tfType = 'google_discovery_engine_project_provision';

  GoogleDiscoveryEngineProjectProvision(
    super.localName, {
    TfArg<bool>? acceptDataUseTerms,
    TfArg<String>? dataUseTermsVersion,
    TfArg<String>? location,
    TfArg<String>? project,
    DiscoveryEngineProjectProvisionSaasParams? saasParams,
    super.lifecycle,
    super.dependsOn,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           'accept_data_use_terms': ?acceptDataUseTerms,
           'data_use_terms_version': ?dataUseTermsVersion,
           'location': ?location,
           'project': ?project,
           if (saasParams != null)
             'saas_params': TfArg.literal(saasParams.encode()),
         },
       );

  @override
  Set<String> get sensitiveFields =>
      _googleDiscoveryEngineProjectProvisionSensitive;

  /// A reference to this resource, for arguments typed
  /// `RefTo<GoogleDiscoveryEngineProjectProvision>`.
  RefTo<GoogleDiscoveryEngineProjectProvision> get ref => RefTo.of(this);

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `accept_data_use_terms` attribute.
  TfRef<bool> get acceptDataUseTerms =>
      TfRef.attribute<bool>(this, 'accept_data_use_terms');

  /// Reference to `data_use_terms_version` attribute.
  TfRef<String> get dataUseTermsVersion =>
      TfRef.attribute<String>(this, 'data_use_terms_version');

  /// Reference to `location` attribute.
  TfRef<String> get location => TfRef.attribute<String>(this, 'location');

  /// Reference to `project` attribute.
  TfRef<String> get project => TfRef.attribute<String>(this, 'project');
}
