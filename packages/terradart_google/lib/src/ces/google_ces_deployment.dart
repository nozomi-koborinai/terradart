// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:meta/meta.dart';
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `google_ces_deployment`.
const Set<String> _googleCesDeploymentSensitive = <String>{};

/// Typed helper for the `channel_profile` block of
/// `google_ces_deployment` (derived from provider schema).
@immutable
final class CesDeploymentChannelProfile {
  const CesDeploymentChannelProfile({
    this.channelType,
    this.disableBargeInControl,
    this.disableDtmf,
    this.profileId,
    this.personaProperty,
    this.webWidgetConfig,
  });

  final TfArg<String>? channelType;

  final TfArg<bool>? disableBargeInControl;

  final TfArg<bool>? disableDtmf;

  final TfArg<String>? profileId;

  final CesDeploymentChannelProfilePersonaProperty? personaProperty;

  final CesDeploymentChannelProfileWebWidgetConfig? webWidgetConfig;

  Map<String, Object?> encode() => {
    if (channelType != null) 'channel_type': channelType!.toTfJson(),
    if (disableBargeInControl != null)
      'disable_barge_in_control': disableBargeInControl!.toTfJson(),
    if (disableDtmf != null) 'disable_dtmf': disableDtmf!.toTfJson(),
    if (profileId != null) 'profile_id': profileId!.toTfJson(),
    if (personaProperty != null) 'persona_property': personaProperty!.encode(),
    if (webWidgetConfig != null) 'web_widget_config': webWidgetConfig!.encode(),
  };
}

/// Typed helper for the `channel_profile.persona_property` block of
/// `google_ces_deployment` (derived from provider schema).
@immutable
final class CesDeploymentChannelProfilePersonaProperty {
  const CesDeploymentChannelProfilePersonaProperty({this.persona});

  final TfArg<String>? persona;

  Map<String, Object?> encode() => {
    if (persona != null) 'persona': persona!.toTfJson(),
  };
}

/// Typed helper for the `channel_profile.web_widget_config` block of
/// `google_ces_deployment` (derived from provider schema).
@immutable
final class CesDeploymentChannelProfileWebWidgetConfig {
  const CesDeploymentChannelProfileWebWidgetConfig({
    this.modality,
    this.theme,
    this.webWidgetTitle,
    this.securitySettings,
  });

  final TfArg<String>? modality;

  final TfArg<String>? theme;

  final TfArg<String>? webWidgetTitle;

  final CesDeploymentChannelProfileWebWidgetConfigSecuritySettings?
  securitySettings;

  Map<String, Object?> encode() => {
    if (modality != null) 'modality': modality!.toTfJson(),
    if (theme != null) 'theme': theme!.toTfJson(),
    if (webWidgetTitle != null) 'web_widget_title': webWidgetTitle!.toTfJson(),
    if (securitySettings != null)
      'security_settings': securitySettings!.encode(),
  };
}

/// Typed helper for the `channel_profile.web_widget_config.security_settings` block of
/// `google_ces_deployment` (derived from provider schema).
@immutable
final class CesDeploymentChannelProfileWebWidgetConfigSecuritySettings {
  const CesDeploymentChannelProfileWebWidgetConfigSecuritySettings({
    this.allowedOrigins,
    this.enableOriginCheck,
    this.enablePublicAccess,
    this.enableRecaptcha,
  });

  final TfArg<List<Object?>>? allowedOrigins;

  final TfArg<bool>? enableOriginCheck;

  final TfArg<bool>? enablePublicAccess;

  final TfArg<bool>? enableRecaptcha;

  Map<String, Object?> encode() => {
    if (allowedOrigins != null) 'allowed_origins': allowedOrigins!.toTfJson(),
    if (enableOriginCheck != null)
      'enable_origin_check': enableOriginCheck!.toTfJson(),
    if (enablePublicAccess != null)
      'enable_public_access': enablePublicAccess!.toTfJson(),
    if (enableRecaptcha != null)
      'enable_recaptcha': enableRecaptcha!.toTfJson(),
  };
}

/// Factory wrapper for `google_ces_deployment`.
///
/// Description
///
/// Customer Engagement Suite **deployment** — publishes a
/// [GoogleCesAppVersion] onto a channel (`channel_profile` is required).
/// Pass the parent app's `app_id` as [app] and the version's `name` as
/// [appVersion]. Session SKUs fire only when chat/voice traffic hits
/// the channel — creating the deployment does not send sessions.
///
/// **Cost:** gcp-cost: Customer Engagement Suite `383B-7930-9BC4` Chat
/// sessions for CX Agent Studio `40A1-7B02-5EF6` **$0.50/count** (Voice
/// sessions `AC3D-5A20-CF66` **$0.50/count**; Voice overages
/// `9B47-D9B2-C9CB` **$0.0025/s**). billing-behavior: a deployment is a
/// channel binding — session SKUs fire only on CX Agent Studio
/// chat/voice sessions. Enable `ces.googleapis.com` via [Apis.enable]
/// before apply.
///
/// Example:
/// ```dart
/// GoogleCesDeployment(
///   localName: 'api',
///   location: TfArg.ref(app.locationRef),
///   app: TfArg.ref(app.appIdRef),
///   appVersion: TfArg.ref(version.nameRef),
///   displayName: TfArg.literal('terradart-ces-deploy'),
///   channelProfile: CesDeploymentChannelProfile(
///     channelType: TfArg.literal('API'),
///     profileId: TfArg.literal('terradart-ces-api'),
///   ),
/// );
/// ```
final class GoogleCesDeployment extends Resource {
  static const String tfType = 'google_ces_deployment';

  GoogleCesDeployment({
    required super.localName,
    required TfArg<String> location,
    required TfArg<String> app,
    required TfArg<String> appVersion,
    required TfArg<String> displayName,
    required CesDeploymentChannelProfile channelProfile,
    TfArg<String>? deletionPolicy,
    TfArg<String>? project,
    super.lifecycle,
    super.dependsOn,
  }) : super(
         terraformType: tfType,
         argMap: {
           'location': location,
           'app': app,
           'app_version': appVersion,
           'display_name': displayName,
           'channel_profile': TfArg.literal(channelProfile.encode()),
           if (deletionPolicy != null) 'deletion_policy': deletionPolicy,
           if (project != null) 'project': project,
         },
       );

  @override
  Set<String> get sensitiveFields => _googleCesDeploymentSensitive;

  /// Reference to `name` attribute.
  TfRef<String> get nameRef => TfRef.attribute<String>(this, 'name');

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `create_time` attribute.
  TfRef<String> get createTime => TfRef.attribute<String>(this, 'create_time');

  /// Reference to `etag` attribute.
  TfRef<String> get etag => TfRef.attribute<String>(this, 'etag');

  /// Reference to `update_time` attribute.
  TfRef<String> get updateTime => TfRef.attribute<String>(this, 'update_time');
}
