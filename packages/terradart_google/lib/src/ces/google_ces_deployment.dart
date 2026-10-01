// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:meta/meta.dart';
import 'package:terradart_core/terradart_core.dart';

import '../ces/google_ces_app.dart' show GoogleCesApp;
import '../ces/google_ces_app_version.dart' show GoogleCesAppVersion;

/// Sensitive field paths for `google_ces_deployment`.
const Set<String> _googleCesDeploymentSensitive = <String>{
  'instagram_credentials.auth_code',
  'whatsapp_credentials.auth_code',
  'whatsapp_credentials.pin',
};

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
    this.whatsappConfig,
  });

  final TfArg<String>? channelType;

  final TfArg<bool>? disableBargeInControl;

  final TfArg<bool>? disableDtmf;

  final TfArg<String>? profileId;

  final CesDeploymentPersonaProperty? personaProperty;

  final CesDeploymentWebWidgetConfig? webWidgetConfig;

  final CesDeploymentWhatsappConfig? whatsappConfig;

  Map<String, Object?> encode() => {
    'channel_type': ?channelType?.toTfJson(),
    'disable_barge_in_control': ?disableBargeInControl?.toTfJson(),
    'disable_dtmf': ?disableDtmf?.toTfJson(),
    'profile_id': ?profileId?.toTfJson(),
    'persona_property': ?personaProperty?.encode(),
    'web_widget_config': ?webWidgetConfig?.encode(),
    'whatsapp_config': ?whatsappConfig?.encode(),
  };
}

/// Typed helper for the `channel_profile.persona_property` block of
/// `google_ces_deployment` (derived from provider schema).
@immutable
final class CesDeploymentPersonaProperty {
  const CesDeploymentPersonaProperty({this.persona});

  final TfArg<String>? persona;

  Map<String, Object?> encode() => {'persona': ?persona?.toTfJson()};
}

/// Typed helper for the `channel_profile.web_widget_config` block of
/// `google_ces_deployment` (derived from provider schema).
@immutable
final class CesDeploymentWebWidgetConfig {
  const CesDeploymentWebWidgetConfig({
    this.modality,
    this.theme,
    this.webWidgetTitle,
    this.securitySettings,
  });

  final TfArg<String>? modality;

  final TfArg<String>? theme;

  final TfArg<String>? webWidgetTitle;

  final CesDeploymentSecuritySettings? securitySettings;

  Map<String, Object?> encode() => {
    'modality': ?modality?.toTfJson(),
    'theme': ?theme?.toTfJson(),
    'web_widget_title': ?webWidgetTitle?.toTfJson(),
    'security_settings': ?securitySettings?.encode(),
  };
}

/// Typed helper for the `channel_profile.web_widget_config.security_settings` block of
/// `google_ces_deployment` (derived from provider schema).
@immutable
final class CesDeploymentSecuritySettings {
  const CesDeploymentSecuritySettings({
    this.allowedOrigins,
    this.enableOriginCheck,
    this.enablePublicAccess,
    this.enableRecaptcha,
  });

  final TfArg<List<String>>? allowedOrigins;

  final TfArg<bool>? enableOriginCheck;

  final TfArg<bool>? enablePublicAccess;

  final TfArg<bool>? enableRecaptcha;

  Map<String, Object?> encode() => {
    'allowed_origins': ?allowedOrigins?.toTfJson(),
    'enable_origin_check': ?enableOriginCheck?.toTfJson(),
    'enable_public_access': ?enablePublicAccess?.toTfJson(),
    'enable_recaptcha': ?enableRecaptcha?.toTfJson(),
  };
}

/// Typed helper for the `channel_profile.whatsapp_config` block of
/// `google_ces_deployment` (derived from provider schema).
@immutable
final class CesDeploymentWhatsappConfig {
  const CesDeploymentWhatsappConfig({
    this.phoneNumber,
    required this.phoneNumberId,
    required this.wabaId,
  });

  final TfArg<String>? phoneNumber;

  final TfArg<String> phoneNumberId;

  final TfArg<String> wabaId;

  Map<String, Object?> encode() => {
    'phone_number': ?phoneNumber?.toTfJson(),
    'phone_number_id': phoneNumberId.toTfJson(),
    'waba_id': wabaId.toTfJson(),
  };
}

/// Typed helper for the `instagram_credentials` block of
/// `google_ces_deployment` (derived from provider schema).
@immutable
final class CesDeploymentInstagramCredentials {
  const CesDeploymentInstagramCredentials({
    required this.authCode,
    this.authCodeWoVersion,
    this.conversationProfileId,
  });

  final CesDeploymentInstagramCredentialsAuthCode authCode;

  final TfArg<String>? authCodeWoVersion;

  final TfArg<String>? conversationProfileId;

  Map<String, Object?> encode() => {
    ...authCode.encode(),
    'auth_code_wo_version': ?authCodeWoVersion?.toTfJson(),
    'conversation_profile_id': ?conversationProfileId?.toTfJson(),
  };
}

/// Exactly one of `auth_code`, `auth_code_wo` on the `instagram_credentials` block of `google_ces_deployment`: the provider rejects
/// none and more than one, so each variant sets one of them.
///
/// Pick one with a dot shorthand: `.authCode(...)`.
sealed class CesDeploymentInstagramCredentialsAuthCode {
  const CesDeploymentInstagramCredentialsAuthCode();

  /// Sets `auth_code`.
  const factory CesDeploymentInstagramCredentialsAuthCode.authCode(
    TfArg<String> authCode,
  ) = CesDeploymentInstagramCredentialsAuthCodeChoice;

  /// Sets `auth_code_wo`.
  const factory CesDeploymentInstagramCredentialsAuthCode.authCodeWo(
    TfArg<String> authCodeWo,
  ) = CesDeploymentInstagramCredentialsAuthCodeWo;

  /// The Terraform argument this choice sets.
  String get blockKey;

  Map<String, Object?> encode();
}

/// The [CesDeploymentInstagramCredentialsAuthCode.authCode] choice: sets `auth_code`.
final class CesDeploymentInstagramCredentialsAuthCodeChoice
    extends CesDeploymentInstagramCredentialsAuthCode {
  const CesDeploymentInstagramCredentialsAuthCodeChoice(this.authCode);

  final TfArg<String> authCode;

  @override
  String get blockKey => 'auth_code';

  @override
  Map<String, Object?> encode() => {'auth_code': authCode.toTfJson()};
}

/// The [CesDeploymentInstagramCredentialsAuthCode.authCodeWo] choice: sets `auth_code_wo`.
final class CesDeploymentInstagramCredentialsAuthCodeWo
    extends CesDeploymentInstagramCredentialsAuthCode {
  const CesDeploymentInstagramCredentialsAuthCodeWo(this.authCodeWo);

  final TfArg<String> authCodeWo;

  @override
  String get blockKey => 'auth_code_wo';

  @override
  Map<String, Object?> encode() => {'auth_code_wo': authCodeWo.toTfJson()};
}

/// Typed helper for the `whatsapp_credentials` block of
/// `google_ces_deployment` (derived from provider schema).
@immutable
final class CesDeploymentWhatsappCredentials {
  const CesDeploymentWhatsappCredentials({
    required this.authCode,
    this.authCodeWoVersion,
    required this.businessAccountId,
    this.conversationProfileId,
    required this.phoneNumber,
    required this.pin,
    this.pinWoVersion,
    required this.wabaId,
  });

  final CesDeploymentWhatsappCredentialsAuthCode authCode;

  final TfArg<String>? authCodeWoVersion;

  final TfArg<String> businessAccountId;

  final TfArg<String>? conversationProfileId;

  final TfArg<String> phoneNumber;

  final CesDeploymentPin pin;

  final TfArg<String>? pinWoVersion;

  final TfArg<String> wabaId;

  Map<String, Object?> encode() => {
    ...authCode.encode(),
    'auth_code_wo_version': ?authCodeWoVersion?.toTfJson(),
    'business_account_id': businessAccountId.toTfJson(),
    'conversation_profile_id': ?conversationProfileId?.toTfJson(),
    'phone_number': phoneNumber.toTfJson(),
    ...pin.encode(),
    'pin_wo_version': ?pinWoVersion?.toTfJson(),
    'waba_id': wabaId.toTfJson(),
  };
}

/// Exactly one of `auth_code`, `auth_code_wo` on the `whatsapp_credentials` block of `google_ces_deployment`: the provider rejects
/// none and more than one, so each variant sets one of them.
///
/// Pick one with a dot shorthand: `.authCode(...)`.
sealed class CesDeploymentWhatsappCredentialsAuthCode {
  const CesDeploymentWhatsappCredentialsAuthCode();

  /// Sets `auth_code`.
  const factory CesDeploymentWhatsappCredentialsAuthCode.authCode(
    TfArg<String> authCode,
  ) = CesDeploymentWhatsappCredentialsAuthCodeChoice;

  /// Sets `auth_code_wo`.
  const factory CesDeploymentWhatsappCredentialsAuthCode.authCodeWo(
    TfArg<String> authCodeWo,
  ) = CesDeploymentWhatsappCredentialsAuthCodeWo;

  /// The Terraform argument this choice sets.
  String get blockKey;

  Map<String, Object?> encode();
}

/// The [CesDeploymentWhatsappCredentialsAuthCode.authCode] choice: sets `auth_code`.
final class CesDeploymentWhatsappCredentialsAuthCodeChoice
    extends CesDeploymentWhatsappCredentialsAuthCode {
  const CesDeploymentWhatsappCredentialsAuthCodeChoice(this.authCode);

  final TfArg<String> authCode;

  @override
  String get blockKey => 'auth_code';

  @override
  Map<String, Object?> encode() => {'auth_code': authCode.toTfJson()};
}

/// The [CesDeploymentWhatsappCredentialsAuthCode.authCodeWo] choice: sets `auth_code_wo`.
final class CesDeploymentWhatsappCredentialsAuthCodeWo
    extends CesDeploymentWhatsappCredentialsAuthCode {
  const CesDeploymentWhatsappCredentialsAuthCodeWo(this.authCodeWo);

  final TfArg<String> authCodeWo;

  @override
  String get blockKey => 'auth_code_wo';

  @override
  Map<String, Object?> encode() => {'auth_code_wo': authCodeWo.toTfJson()};
}

/// Exactly one of `pin`, `pin_wo` on the `whatsapp_credentials` block of `google_ces_deployment`: the provider rejects
/// none and more than one, so each variant sets one of them.
///
/// Pick one with a dot shorthand: `.pin(...)`.
sealed class CesDeploymentPin {
  const CesDeploymentPin();

  /// Sets `pin`.
  const factory CesDeploymentPin.pin(TfArg<String> pin) =
      CesDeploymentPinChoice;

  /// Sets `pin_wo`.
  const factory CesDeploymentPin.pinWo(TfArg<String> pinWo) =
      CesDeploymentPinWo;

  /// The Terraform argument this choice sets.
  String get blockKey;

  Map<String, Object?> encode();
}

/// The [CesDeploymentPin.pin] choice: sets `pin`.
final class CesDeploymentPinChoice extends CesDeploymentPin {
  const CesDeploymentPinChoice(this.pin);

  final TfArg<String> pin;

  @override
  String get blockKey => 'pin';

  @override
  Map<String, Object?> encode() => {'pin': pin.toTfJson()};
}

/// The [CesDeploymentPin.pinWo] choice: sets `pin_wo`.
final class CesDeploymentPinWo extends CesDeploymentPin {
  const CesDeploymentPinWo(this.pinWo);

  final TfArg<String> pinWo;

  @override
  String get blockKey => 'pin_wo';

  @override
  Map<String, Object?> encode() => {'pin_wo': pinWo.toTfJson()};
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
///   'api',
///   app: app.ref,
///   appVersion: version.ref,
///   displayName: TfArg.literal('terradart-ces-deploy'),
///   channelProfile: CesDeploymentChannelProfile(
///     channelType: TfArg.literal('API'),
///     profileId: TfArg.literal('terradart-ces-api'),
///   ),
/// );
/// ```
final class GoogleCesDeployment extends Resource {
  static const String tfType = 'google_ces_deployment';

  GoogleCesDeployment(
    super.localName, {
    TfArg<String>? location,
    required RefTo<GoogleCesApp> app,
    required RefTo<GoogleCesAppVersion> appVersion,
    required TfArg<String> displayName,
    required CesDeploymentChannelProfile channelProfile,
    TfArg<String>? deletionPolicy,
    TfArg<String>? project,
    CesDeploymentInstagramCredentials? instagramCredentials,
    CesDeploymentWhatsappCredentials? whatsappCredentials,
    super.lifecycle,
    super.dependsOn,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           'location': ?(location ?? app.alsoAs('location')),
           'app': app.encodeAs('app_id'),
           'app_version': appVersion.encodeAs('name'),
           'display_name': displayName,
           'channel_profile': TfArg.literal(channelProfile.encode()),
           'deletion_policy': ?deletionPolicy,
           'project': ?(project ?? app.alsoAs('project')),
           if (instagramCredentials != null)
             'instagram_credentials': TfArg.literal(
               instagramCredentials.encode(),
             ),
           if (whatsappCredentials != null)
             'whatsapp_credentials': TfArg.literal(
               whatsappCredentials.encode(),
             ),
         },
       );

  @override
  Set<String> get sensitiveFields => _googleCesDeploymentSensitive;

  /// A reference to this resource, for arguments typed
  /// `RefTo<GoogleCesDeployment>`.
  RefTo<GoogleCesDeployment> get ref => RefTo.of(this);

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

  /// Reference to `app` attribute.
  TfRef<String> get app => TfRef.attribute<String>(this, 'app');

  /// Reference to `app_version` attribute.
  TfRef<String> get appVersion => TfRef.attribute<String>(this, 'app_version');

  /// Reference to `deletion_policy` attribute.
  TfRef<String> get deletionPolicy =>
      TfRef.attribute<String>(this, 'deletion_policy');

  /// Reference to `display_name` attribute.
  TfRef<String> get displayName =>
      TfRef.attribute<String>(this, 'display_name');

  /// Reference to `location` attribute.
  TfRef<String> get location => TfRef.attribute<String>(this, 'location');

  /// Reference to `project` attribute.
  TfRef<String> get project => TfRef.attribute<String>(this, 'project');
}
