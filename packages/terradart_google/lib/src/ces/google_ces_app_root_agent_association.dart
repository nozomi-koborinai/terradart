// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `google_ces_app_root_agent_association`.
const Set<String> _googleCesAppRootAgentAssociationSensitive = <String>{};

/// Factory wrapper for `google_ces_app_root_agent_association`.
///
/// Sets the root agent of a CES App after both the app and the agent have been
/// created.
///
/// Because a CES Agent must reference its parent app at creation time, the app
/// must exist before any agent can be created. This means the root agent cannot
/// be set on the app at creation time — use this resource to set it afterwards.
///
/// ~> **Note:** This resource modifies the `root_agent` field on the parent
/// `google_ces_app`. Add `lifecycle { ignore_changes = [root_agent] }` to your
/// `google_ces_app` resource to prevent Terraform from detecting drift and
/// clearing the field on every plan.
///
/// Customer Engagement Suite **root-agent association** — PATCHes
/// `root_agent` on a [GoogleCesApp] after the agent exists.
///
/// A CES agent must reference its parent app at create time, so the app
/// cannot set `root_agent` on first apply. Use this resource afterwards.
/// Add `lifecycle: LifecycleOptions(ignoreChanges: ['root_agent'])` on
/// the parent [GoogleCesApp] so Terraform does not clear the field.
///
/// **Cost:** gcp-cost: Customer Engagement Suite `383B-7930-9BC4` Chat
/// sessions for CX Agent Studio `40A1-7B02-5EF6` **$0.50/count** (Voice
/// sessions `AC3D-5A20-CF66` **$0.50/count**; Voice overages
/// `9B47-D9B2-C9CB`). billing-behavior: association is a PATCH on app
/// metadata — session SKUs fire only on CX Agent Studio chat/voice
/// sessions. Enable `ces.googleapis.com` via [Apis.enable] before apply.
///
/// Example:
/// ```dart
/// GoogleCesAppRootAgentAssociation(
///   localName: 'root',
///   location: TfArg.ref(app.locationRef),
///   appId: TfArg.ref(app.appIdRef),
///   agentId: TfArg.ref(agent.agentIdRef),
/// );
/// ```
final class GoogleCesAppRootAgentAssociation extends Resource {
  static const String tfType = 'google_ces_app_root_agent_association';

  GoogleCesAppRootAgentAssociation({
    required super.localName,
    required TfArg<String> location,
    required TfArg<String> appId,
    required TfArg<String> agentId,
    TfArg<String>? deletionPolicy,
    TfArg<String>? project,
    super.lifecycle,
    super.dependsOn,
  }) : super(
         terraformType: tfType,
         argMap: {
           'location': location,
           'app_id': appId,
           'agent_id': agentId,
           if (deletionPolicy != null) 'deletion_policy': deletionPolicy,
           if (project != null) 'project': project,
         },
       );

  @override
  Set<String> get sensitiveFields => _googleCesAppRootAgentAssociationSensitive;

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');
}
