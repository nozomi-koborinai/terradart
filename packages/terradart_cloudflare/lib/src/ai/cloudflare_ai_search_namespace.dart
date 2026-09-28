// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:meta/meta.dart';
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `cloudflare_ai_search_namespace`.
const Set<String> _cloudflareAiSearchNamespaceSensitive = <String>{};

/// Typed helper for the `public_endpoint_params` block of
/// `cloudflare_ai_search_namespace` (derived from provider schema).
@immutable
final class AiSearchNamespacePublicEndpointParams {
  const AiSearchNamespacePublicEndpointParams({
    this.authorizedHosts,
    this.customDomains,
    this.defaultDomainEnabled,
    this.enabled,
    this.instancesAllowed,
    this.chatCompletionsEndpoint,
    this.mcp,
    this.rateLimit,
    this.searchEndpoint,
  });

  final TfArg<List<Object?>>? authorizedHosts;

  final TfArg<List<Object?>>? customDomains;

  final TfArg<bool>? defaultDomainEnabled;

  final TfArg<bool>? enabled;

  final TfArg<List<Object?>>? instancesAllowed;

  final AiSearchNamespacePublicEndpointParamsChatCompletionsEndpoint?
  chatCompletionsEndpoint;

  final AiSearchNamespacePublicEndpointParamsMcp? mcp;

  final AiSearchNamespacePublicEndpointParamsRateLimit? rateLimit;

  final AiSearchNamespacePublicEndpointParamsSearchEndpoint? searchEndpoint;

  Map<String, Object?> encode() => {
    if (authorizedHosts != null)
      'authorized_hosts': authorizedHosts!.toTfJson(),
    if (customDomains != null) 'custom_domains': customDomains!.toTfJson(),
    if (defaultDomainEnabled != null)
      'default_domain_enabled': defaultDomainEnabled!.toTfJson(),
    if (enabled != null) 'enabled': enabled!.toTfJson(),
    if (instancesAllowed != null)
      'instances_allowed': instancesAllowed!.toTfJson(),
    if (chatCompletionsEndpoint != null)
      'chat_completions_endpoint': chatCompletionsEndpoint!.encode(),
    if (mcp != null) 'mcp': mcp!.encode(),
    if (rateLimit != null) 'rate_limit': rateLimit!.encode(),
    if (searchEndpoint != null) 'search_endpoint': searchEndpoint!.encode(),
  };
}

/// Typed helper for the `public_endpoint_params.chat_completions_endpoint` block of
/// `cloudflare_ai_search_namespace` (derived from provider schema).
@immutable
final class AiSearchNamespacePublicEndpointParamsChatCompletionsEndpoint {
  const AiSearchNamespacePublicEndpointParamsChatCompletionsEndpoint({
    this.disabled,
  });

  final TfArg<bool>? disabled;

  Map<String, Object?> encode() => {
    if (disabled != null) 'disabled': disabled!.toTfJson(),
  };
}

/// Typed helper for the `public_endpoint_params.mcp` block of
/// `cloudflare_ai_search_namespace` (derived from provider schema).
@immutable
final class AiSearchNamespacePublicEndpointParamsMcp {
  const AiSearchNamespacePublicEndpointParamsMcp({
    this.description,
    this.disabled,
  });

  final TfArg<String>? description;

  final TfArg<bool>? disabled;

  Map<String, Object?> encode() => {
    if (description != null) 'description': description!.toTfJson(),
    if (disabled != null) 'disabled': disabled!.toTfJson(),
  };
}

/// Typed helper for the `public_endpoint_params.rate_limit` block of
/// `cloudflare_ai_search_namespace` (derived from provider schema).
@immutable
final class AiSearchNamespacePublicEndpointParamsRateLimit {
  const AiSearchNamespacePublicEndpointParamsRateLimit({
    this.periodMs,
    this.requests,
    this.technique,
  });

  final TfArg<num>? periodMs;

  final TfArg<num>? requests;

  final TfArg<String>? technique;

  Map<String, Object?> encode() => {
    if (periodMs != null) 'period_ms': periodMs!.toTfJson(),
    if (requests != null) 'requests': requests!.toTfJson(),
    if (technique != null) 'technique': technique!.toTfJson(),
  };
}

/// Typed helper for the `public_endpoint_params.search_endpoint` block of
/// `cloudflare_ai_search_namespace` (derived from provider schema).
@immutable
final class AiSearchNamespacePublicEndpointParamsSearchEndpoint {
  const AiSearchNamespacePublicEndpointParamsSearchEndpoint({this.disabled});

  final TfArg<bool>? disabled;

  Map<String, Object?> encode() => {
    if (disabled != null) 'disabled': disabled!.toTfJson(),
  };
}

/// Factory wrapper for `cloudflare_ai_search_namespace`.
final class CloudflareAiSearchNamespace extends Resource {
  static const String tfType = 'cloudflare_ai_search_namespace';

  CloudflareAiSearchNamespace({
    required super.localName,
    required TfArg<String> accountId,
    TfArg<String>? description,
    required TfArg<String> name,
    AiSearchNamespacePublicEndpointParams? publicEndpointParams,
    super.lifecycle,
    super.dependsOn,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           'account_id': accountId,
           if (description != null) 'description': description,
           'name': name,
           if (publicEndpointParams != null)
             'public_endpoint_params': TfArg.literal(
               publicEndpointParams.encode(),
             ),
         },
       );

  @override
  Set<String> get sensitiveFields => _cloudflareAiSearchNamespaceSensitive;

  /// Reference to `name` attribute.
  TfRef<String> get nameRef => TfRef.attribute<String>(this, 'name');

  /// Reference to `created_at` attribute.
  TfRef<String> get createdAt => TfRef.attribute<String>(this, 'created_at');

  /// Reference to `public_endpoint_id` attribute.
  TfRef<String> get publicEndpointId =>
      TfRef.attribute<String>(this, 'public_endpoint_id');
}
