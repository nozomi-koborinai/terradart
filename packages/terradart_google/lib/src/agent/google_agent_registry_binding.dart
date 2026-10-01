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

  final TfArg<List<String>>? scopes;

  Map<String, Object?> encode() => {
    'auth_provider': authProvider.toTfJson(),
    'continue_uri': ?continueUri?.toTfJson(),
    'scopes': ?scopes?.toTfJson(),
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
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           'location': location,
           'binding_id': bindingId,
           'auth_provider_binding': TfArg.literal(authProviderBinding.encode()),
           'source': TfArg.literal(source.encode()),
           'target': TfArg.literal(target.encode()),
           'display_name': ?displayName,
           'description': ?description,
           'deletion_policy': ?deletionPolicy,
           'project': ?project,
         },
       );

  @override
  Set<String> get sensitiveFields => _googleAgentRegistryBindingSensitive;

  /// A reference to this resource, for arguments typed
  /// `RefTo<GoogleAgentRegistryBinding>`.
  RefTo<GoogleAgentRegistryBinding> get ref => RefTo.of(this);

  /// Reference to `name` attribute.
  TfRef<String> get name => TfRef.attribute<String>(this, 'name');

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `create_time` attribute.
  TfRef<String> get createTime => TfRef.attribute<String>(this, 'create_time');

  /// Reference to `update_time` attribute.
  TfRef<String> get updateTime => TfRef.attribute<String>(this, 'update_time');

  /// Reference to `binding_id` attribute.
  TfRef<String> get bindingId => TfRef.attribute<String>(this, 'binding_id');

  /// Reference to `deletion_policy` attribute.
  TfRef<String> get deletionPolicy =>
      TfRef.attribute<String>(this, 'deletion_policy');

  /// Reference to `description` attribute.
  TfRef<String> get description => TfRef.attribute<String>(this, 'description');

  /// Reference to `display_name` attribute.
  TfRef<String> get displayName =>
      TfRef.attribute<String>(this, 'display_name');

  /// Reference to `location` attribute.
  TfRef<String> get location => TfRef.attribute<String>(this, 'location');

  /// Reference to `project` attribute.
  TfRef<String> get project => TfRef.attribute<String>(this, 'project');
}
