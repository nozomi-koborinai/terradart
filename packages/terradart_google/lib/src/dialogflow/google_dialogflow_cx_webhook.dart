// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:meta/meta.dart';
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `google_dialogflow_cx_webhook`.
const Set<String> _googleDialogflowCxWebhookSensitive = <String>{};

/// Typed helper for the `generic_web_service` block of
/// `google_dialogflow_cx_webhook` (derived from provider schema).
@immutable
final class DialogflowCxWebhookGenericWebService {
  const DialogflowCxWebhookGenericWebService({
    this.allowedCaCerts,
    this.httpMethod,
    this.parameterMapping,
    this.requestBody,
    this.requestHeaders,
    this.secretVersionForUsernamePassword,
    this.serviceAgentAuth,
    required this.uri,
    this.webhookType,
    this.oauthConfig,
    this.secretVersionsForRequestHeaders,
    this.serviceAccountAuthConfig,
  });

  final TfArg<List<Object?>>? allowedCaCerts;

  final TfArg<DialogflowCxWebhookGenericWebServiceHttpMethod>? httpMethod;

  final TfArg<Map<String, String>>? parameterMapping;

  final TfArg<String>? requestBody;

  final TfArg<Map<String, String>>? requestHeaders;

  final TfArg<String>? secretVersionForUsernamePassword;

  final TfArg<DialogflowCxWebhookGenericWebServiceServiceAgentAuth>?
  serviceAgentAuth;

  final TfArg<String> uri;

  final TfArg<DialogflowCxWebhookGenericWebServiceWebhookType>? webhookType;

  final DialogflowCxWebhookGenericWebServiceOauthConfig? oauthConfig;

  final List<
    DialogflowCxWebhookGenericWebServiceSecretVersionsForRequestHeaders
  >?
  secretVersionsForRequestHeaders;

  final DialogflowCxWebhookGenericWebServiceServiceAccountAuthConfig?
  serviceAccountAuthConfig;

  Map<String, Object?> encode() => {
    if (allowedCaCerts != null) 'allowed_ca_certs': allowedCaCerts!.toTfJson(),
    if (httpMethod != null) 'http_method': httpMethod!.toTfJson(),
    if (parameterMapping != null)
      'parameter_mapping': parameterMapping!.toTfJson(),
    if (requestBody != null) 'request_body': requestBody!.toTfJson(),
    if (requestHeaders != null) 'request_headers': requestHeaders!.toTfJson(),
    if (secretVersionForUsernamePassword != null)
      'secret_version_for_username_password': secretVersionForUsernamePassword!
          .toTfJson(),
    if (serviceAgentAuth != null)
      'service_agent_auth': serviceAgentAuth!.toTfJson(),
    'uri': uri.toTfJson(),
    if (webhookType != null) 'webhook_type': webhookType!.toTfJson(),
    if (oauthConfig != null) 'oauth_config': oauthConfig!.encode(),
    if (secretVersionsForRequestHeaders != null)
      'secret_versions_for_request_headers': [
        for (final e in secretVersionsForRequestHeaders!) e.encode(),
      ],
    if (serviceAccountAuthConfig != null)
      'service_account_auth_config': serviceAccountAuthConfig!.encode(),
  };
}

/// `http_method` — derived from the provider schema description.
enum DialogflowCxWebhookGenericWebServiceHttpMethod implements TerraformEnum {
  post('POST'),
  get('GET'),
  head('HEAD'),
  put('PUT'),
  delete('DELETE'),
  patch('PATCH'),
  options('OPTIONS');

  const DialogflowCxWebhookGenericWebServiceHttpMethod(this.terraformValue);
  @override
  final String terraformValue;
}

/// `service_agent_auth` — derived from the provider schema description.
enum DialogflowCxWebhookGenericWebServiceServiceAgentAuth
    implements TerraformEnum {
  none('NONE'),
  idToken('ID_TOKEN'),
  accessToken('ACCESS_TOKEN');

  const DialogflowCxWebhookGenericWebServiceServiceAgentAuth(
    this.terraformValue,
  );
  @override
  final String terraformValue;
}

/// `webhook_type` — derived from the provider schema description.
enum DialogflowCxWebhookGenericWebServiceWebhookType implements TerraformEnum {
  standard('STANDARD'),
  flexible('FLEXIBLE');

  const DialogflowCxWebhookGenericWebServiceWebhookType(this.terraformValue);
  @override
  final String terraformValue;
}

/// Typed helper for the `generic_web_service.oauth_config` block of
/// `google_dialogflow_cx_webhook` (derived from provider schema).
@immutable
final class DialogflowCxWebhookGenericWebServiceOauthConfig {
  const DialogflowCxWebhookGenericWebServiceOauthConfig({
    required this.clientId,
    this.clientSecret,
    this.scopes,
    this.secretVersionForClientSecret,
    required this.tokenEndpoint,
  });

  final TfArg<String> clientId;

  final TfArg<String>? clientSecret;

  final TfArg<List<Object?>>? scopes;

  final TfArg<String>? secretVersionForClientSecret;

  final TfArg<String> tokenEndpoint;

  Map<String, Object?> encode() => {
    'client_id': clientId.toTfJson(),
    if (clientSecret != null) 'client_secret': clientSecret!.toTfJson(),
    if (scopes != null) 'scopes': scopes!.toTfJson(),
    if (secretVersionForClientSecret != null)
      'secret_version_for_client_secret': secretVersionForClientSecret!
          .toTfJson(),
    'token_endpoint': tokenEndpoint.toTfJson(),
  };
}

/// Typed helper for the `generic_web_service.secret_versions_for_request_headers` block of
/// `google_dialogflow_cx_webhook` (derived from provider schema).
@immutable
final class DialogflowCxWebhookGenericWebServiceSecretVersionsForRequestHeaders {
  const DialogflowCxWebhookGenericWebServiceSecretVersionsForRequestHeaders({
    required this.key,
    required this.secretVersion,
  });

  final TfArg<String> key;

  final TfArg<String> secretVersion;

  Map<String, Object?> encode() => {
    'key': key.toTfJson(),
    'secret_version': secretVersion.toTfJson(),
  };
}

/// Typed helper for the `generic_web_service.service_account_auth_config` block of
/// `google_dialogflow_cx_webhook` (derived from provider schema).
@immutable
final class DialogflowCxWebhookGenericWebServiceServiceAccountAuthConfig {
  const DialogflowCxWebhookGenericWebServiceServiceAccountAuthConfig({
    required this.serviceAccount,
  });

  final TfArg<String> serviceAccount;

  Map<String, Object?> encode() => {
    'service_account': serviceAccount.toTfJson(),
  };
}

/// Typed helper for the `service_directory` block of
/// `google_dialogflow_cx_webhook` (derived from provider schema).
@immutable
final class DialogflowCxWebhookServiceDirectory {
  const DialogflowCxWebhookServiceDirectory({
    required this.service,
    this.genericWebService,
  });

  final TfArg<String> service;

  final DialogflowCxWebhookServiceDirectoryGenericWebService? genericWebService;

  Map<String, Object?> encode() => {
    'service': service.toTfJson(),
    if (genericWebService != null)
      'generic_web_service': genericWebService!.encode(),
  };
}

/// Typed helper for the `service_directory.generic_web_service` block of
/// `google_dialogflow_cx_webhook` (derived from provider schema).
@immutable
final class DialogflowCxWebhookServiceDirectoryGenericWebService {
  const DialogflowCxWebhookServiceDirectoryGenericWebService({
    this.allowedCaCerts,
    this.httpMethod,
    this.parameterMapping,
    this.requestBody,
    this.requestHeaders,
    this.secretVersionForUsernamePassword,
    this.serviceAgentAuth,
    required this.uri,
    this.webhookType,
    this.oauthConfig,
    this.secretVersionsForRequestHeaders,
    this.serviceAccountAuthConfig,
  });

  final TfArg<List<Object?>>? allowedCaCerts;

  final TfArg<DialogflowCxWebhookServiceDirectoryGenericWebServiceHttpMethod>?
  httpMethod;

  final TfArg<Map<String, String>>? parameterMapping;

  final TfArg<String>? requestBody;

  final TfArg<Map<String, String>>? requestHeaders;

  final TfArg<String>? secretVersionForUsernamePassword;

  final TfArg<
    DialogflowCxWebhookServiceDirectoryGenericWebServiceServiceAgentAuth
  >?
  serviceAgentAuth;

  final TfArg<String> uri;

  final TfArg<DialogflowCxWebhookServiceDirectoryGenericWebServiceWebhookType>?
  webhookType;

  final DialogflowCxWebhookServiceDirectoryGenericWebServiceOauthConfig?
  oauthConfig;

  final List<
    DialogflowCxWebhookServiceDirectoryGenericWebServiceSecretVersionsForRequestHeaders
  >?
  secretVersionsForRequestHeaders;

  final DialogflowCxWebhookServiceDirectoryGenericWebServiceServiceAccountAuthConfig?
  serviceAccountAuthConfig;

  Map<String, Object?> encode() => {
    if (allowedCaCerts != null) 'allowed_ca_certs': allowedCaCerts!.toTfJson(),
    if (httpMethod != null) 'http_method': httpMethod!.toTfJson(),
    if (parameterMapping != null)
      'parameter_mapping': parameterMapping!.toTfJson(),
    if (requestBody != null) 'request_body': requestBody!.toTfJson(),
    if (requestHeaders != null) 'request_headers': requestHeaders!.toTfJson(),
    if (secretVersionForUsernamePassword != null)
      'secret_version_for_username_password': secretVersionForUsernamePassword!
          .toTfJson(),
    if (serviceAgentAuth != null)
      'service_agent_auth': serviceAgentAuth!.toTfJson(),
    'uri': uri.toTfJson(),
    if (webhookType != null) 'webhook_type': webhookType!.toTfJson(),
    if (oauthConfig != null) 'oauth_config': oauthConfig!.encode(),
    if (secretVersionsForRequestHeaders != null)
      'secret_versions_for_request_headers': [
        for (final e in secretVersionsForRequestHeaders!) e.encode(),
      ],
    if (serviceAccountAuthConfig != null)
      'service_account_auth_config': serviceAccountAuthConfig!.encode(),
  };
}

/// `http_method` — derived from the provider schema description.
enum DialogflowCxWebhookServiceDirectoryGenericWebServiceHttpMethod
    implements TerraformEnum {
  post('POST'),
  get('GET'),
  head('HEAD'),
  put('PUT'),
  delete('DELETE'),
  patch('PATCH'),
  options('OPTIONS');

  const DialogflowCxWebhookServiceDirectoryGenericWebServiceHttpMethod(
    this.terraformValue,
  );
  @override
  final String terraformValue;
}

/// `service_agent_auth` — derived from the provider schema description.
enum DialogflowCxWebhookServiceDirectoryGenericWebServiceServiceAgentAuth
    implements TerraformEnum {
  none('NONE'),
  idToken('ID_TOKEN'),
  accessToken('ACCESS_TOKEN');

  const DialogflowCxWebhookServiceDirectoryGenericWebServiceServiceAgentAuth(
    this.terraformValue,
  );
  @override
  final String terraformValue;
}

/// `webhook_type` — derived from the provider schema description.
enum DialogflowCxWebhookServiceDirectoryGenericWebServiceWebhookType
    implements TerraformEnum {
  standard('STANDARD'),
  flexible('FLEXIBLE');

  const DialogflowCxWebhookServiceDirectoryGenericWebServiceWebhookType(
    this.terraformValue,
  );
  @override
  final String terraformValue;
}

/// Typed helper for the `service_directory.generic_web_service.oauth_config` block of
/// `google_dialogflow_cx_webhook` (derived from provider schema).
@immutable
final class DialogflowCxWebhookServiceDirectoryGenericWebServiceOauthConfig {
  const DialogflowCxWebhookServiceDirectoryGenericWebServiceOauthConfig({
    required this.clientId,
    this.clientSecret,
    this.scopes,
    this.secretVersionForClientSecret,
    required this.tokenEndpoint,
  });

  final TfArg<String> clientId;

  final TfArg<String>? clientSecret;

  final TfArg<List<Object?>>? scopes;

  final TfArg<String>? secretVersionForClientSecret;

  final TfArg<String> tokenEndpoint;

  Map<String, Object?> encode() => {
    'client_id': clientId.toTfJson(),
    if (clientSecret != null) 'client_secret': clientSecret!.toTfJson(),
    if (scopes != null) 'scopes': scopes!.toTfJson(),
    if (secretVersionForClientSecret != null)
      'secret_version_for_client_secret': secretVersionForClientSecret!
          .toTfJson(),
    'token_endpoint': tokenEndpoint.toTfJson(),
  };
}

/// Typed helper for the `service_directory.generic_web_service.secret_versions_for_request_headers` block of
/// `google_dialogflow_cx_webhook` (derived from provider schema).
@immutable
final class DialogflowCxWebhookServiceDirectoryGenericWebServiceSecretVersionsForRequestHeaders {
  const DialogflowCxWebhookServiceDirectoryGenericWebServiceSecretVersionsForRequestHeaders({
    required this.key,
    required this.secretVersion,
  });

  final TfArg<String> key;

  final TfArg<String> secretVersion;

  Map<String, Object?> encode() => {
    'key': key.toTfJson(),
    'secret_version': secretVersion.toTfJson(),
  };
}

/// Typed helper for the `service_directory.generic_web_service.service_account_auth_config` block of
/// `google_dialogflow_cx_webhook` (derived from provider schema).
@immutable
final class DialogflowCxWebhookServiceDirectoryGenericWebServiceServiceAccountAuthConfig {
  const DialogflowCxWebhookServiceDirectoryGenericWebServiceServiceAccountAuthConfig({
    required this.serviceAccount,
  });

  final TfArg<String> serviceAccount;

  Map<String, Object?> encode() => {
    'service_account': serviceAccount.toTfJson(),
  };
}

/// Factory wrapper for `google_dialogflow_cx_webhook`.
///
/// Webhooks host the developer's business logic. During a session, webhooks
/// allow the developer to use the data extracted by Dialogflow's natural
/// language processing to generate dynamic responses, validate collected data,
/// or trigger actions on the backend.
///
/// Dialogflow CX **webhook** — generic web service / Service Directory
/// webhook for a CX agent.
///
/// **Cost / apply:** gcp-cost: Cloud Dialogflow `FBC0-AA4A-C89A` Text
/// session SKU `A1CC-751A-CDCC` **$0.20**/session (Audio `9496-0679-69BE`
/// **$0.45**/session). billing-behavior: webhooks sit on the never_apply
/// [GoogleDialogflowCxAgent] session path. **Never** wire into
/// apply-smoke.
final class GoogleDialogflowCxWebhook extends Resource {
  static const String tfType = 'google_dialogflow_cx_webhook';

  GoogleDialogflowCxWebhook({
    required super.localName,
    required TfArg<String> displayName,
    TfArg<String>? parent,
    TfArg<String>? timeout,
    TfArg<bool>? disabled,
    TfArg<bool>? enableStackdriverLogging,
    TfArg<bool>? enableSpellCorrection,
    TfArg<String>? securitySettings,
    DialogflowCxWebhookGenericWebService? genericWebService,
    DialogflowCxWebhookServiceDirectory? serviceDirectory,
    TfArg<String>? deletionPolicy,
    super.lifecycle,
    super.dependsOn,
  }) : super(
         terraformType: tfType,
         argMap: {
           'display_name': displayName,
           if (parent != null) 'parent': parent,
           if (timeout != null) 'timeout': timeout,
           if (disabled != null) 'disabled': disabled,
           if (enableStackdriverLogging != null)
             'enable_stackdriver_logging': enableStackdriverLogging,
           if (enableSpellCorrection != null)
             'enable_spell_correction': enableSpellCorrection,
           if (securitySettings != null) 'security_settings': securitySettings,
           if (genericWebService != null)
             'generic_web_service': TfArg.literal(genericWebService.encode()),
           if (serviceDirectory != null)
             'service_directory': TfArg.literal(serviceDirectory.encode()),
           if (deletionPolicy != null) 'deletion_policy': deletionPolicy,
         },
       );

  @override
  Set<String> get sensitiveFields => _googleDialogflowCxWebhookSensitive;

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `start_flow` attribute.
  TfRef<String> get startFlow => TfRef.attribute<String>(this, 'start_flow');

  /// Reference to `id` attribute.
  TfRef<String> get idRef => TfRef.attribute<String>(this, 'id');

  /// Reference to `name` attribute.
  TfRef<String> get nameRef => TfRef.attribute<String>(this, 'name');
}
