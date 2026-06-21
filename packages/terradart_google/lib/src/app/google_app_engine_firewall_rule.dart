// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `google_app_engine_firewall_rule`.
const Set<String> _googleAppEngineFirewallRuleSensitive = <String>{};

/// Factory wrapper for `google_app_engine_firewall_rule`.
///
/// A single firewall rule that is evaluated against incoming traffic and
/// provides an action to take on matched requests.
final class GoogleAppEngineFirewallRule extends Resource {
  static const String tfType = 'google_app_engine_firewall_rule';

  GoogleAppEngineFirewallRule({
    required super.localName,
    TfArg<num>? priority,
    required TfArg<String> action,
    required TfArg<String> sourceRange,
    TfArg<String>? description,
    TfArg<String>? deletionPolicy,
    TfArg<String>? project,
    super.lifecycle,
    super.dependsOn,
  }) : super(
         terraformType: tfType,
         argMap: {
           if (priority != null) 'priority': priority,
           'action': action,
           'source_range': sourceRange,
           if (description != null) 'description': description,
           if (deletionPolicy != null) 'deletion_policy': deletionPolicy,
           if (project != null) 'project': project,
         },
       );

  @override
  Set<String> get sensitiveFields => _googleAppEngineFirewallRuleSensitive;

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');
}
