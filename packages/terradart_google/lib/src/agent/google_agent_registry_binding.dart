// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:meta/meta.dart';
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `google_agent_registry_binding`.
const Set<String> _googleAgentRegistryBindingSensitive = <String>{};

/// Typed helper for the `auth_provider_binding` block of
/// `google_agent_registry_binding` (derived from provider schema).
@immutable
final class AgentRegistryBindingAuthProviderBinding {
  const AgentRegistryBindingAuthProviderBinding({
    required this.authProvider,
    this.continueUri,
    this.scopes,
  });

  final TfArg<String> authProvider;

  final TfArg<String>? continueUri;

  final TfArg<List<Object?>>? scopes;

  Map<String, Object?> encode() => {
    'auth_provider': authProvider.toTfJson(),
    if (continueUri != null) 'continue_uri': continueUri!.toTfJson(),
    if (scopes != null) 'scopes': scopes!.toTfJson(),
  };
}

/// Typed helper for the `source` block of
/// `google_agent_registry_binding` (derived from provider schema).
@immutable
final class AgentRegistryBindingSource {
  const AgentRegistryBindingSource({required this.identifier});

  final TfArg<String> identifier;

  Map<String, Object?> encode() => {'identifier': identifier.toTfJson()};
}

/// Typed helper for the `target` block of
/// `google_agent_registry_binding` (derived from provider schema).
@immutable
final class AgentRegistryBindingTarget {
  const AgentRegistryBindingTarget({required this.identifier});

  final TfArg<String> identifier;

  Map<String, Object?> encode() => {'identifier': identifier.toTfJson()};
}

/// Factory wrapper for `google_agent_registry_binding`.
///
/// Represents a user-defined Binding.
///
/// Agent Registry **binding** — links a source identity to a target
/// registry resource through an [authProviderBinding].
///
/// **Cost / apply:** gcp-cost: no Cloud Billing Catalog SKU after MCP
/// lookup (no Agent Identity / Agent Registry service in
/// `list_services`). billing-behavior: binding metadata — no
/// existence/hourly charge observed. Requires a sibling
/// [GoogleAgentIdentityAuthProvider]; not standalone-project applyable on
/// `terradart-validate`. **Never** wire into apply-smoke.
final class GoogleAgentRegistryBinding extends Resource {
  static const String tfType = 'google_agent_registry_binding';

  GoogleAgentRegistryBinding({
    required super.localName,
    required TfArg<String> location,
    required TfArg<String> bindingId,
    required AgentRegistryBindingAuthProviderBinding authProviderBinding,
    required AgentRegistryBindingSource source,
    required AgentRegistryBindingTarget target,
    TfArg<String>? displayName,
    TfArg<String>? description,
    TfArg<String>? deletionPolicy,
    TfArg<String>? project,
    super.lifecycle,
    super.dependsOn,
  }) : super(
         terraformType: tfType,
         argMap: {
           'location': location,
           'binding_id': bindingId,
           'auth_provider_binding': TfArg.literal(authProviderBinding.encode()),
           'source': TfArg.literal(source.encode()),
           'target': TfArg.literal(target.encode()),
           if (displayName != null) 'display_name': displayName,
           if (description != null) 'description': description,
           if (deletionPolicy != null) 'deletion_policy': deletionPolicy,
           if (project != null) 'project': project,
         },
       );

  @override
  Set<String> get sensitiveFields => _googleAgentRegistryBindingSensitive;

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `create_time` attribute.
  TfRef<String> get createTime => TfRef.attribute<String>(this, 'create_time');

  /// Reference to `update_time` attribute.
  TfRef<String> get updateTime => TfRef.attribute<String>(this, 'update_time');

  /// Reference to `id` attribute.
  TfRef<String> get idRef => TfRef.attribute<String>(this, 'id');

  /// Reference to `name` attribute.
  TfRef<String> get nameRef => TfRef.attribute<String>(this, 'name');
}
