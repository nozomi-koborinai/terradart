// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `google_app_engine_firewall_rule`.
const Set<String> _googleAppEngineFirewallRuleSensitive = <String>{};

/// App Engine Firewall Rule enum for `action`.
extension type const AppEngineFirewallRuleAction._(TfArg<String> _)
    implements TfArg<String> {
  AppEngineFirewallRuleAction.variable(String name)
    : this._(TfArg.variable(name));
  AppEngineFirewallRuleAction.expression(String template)
    : this._(TfArg.expression(template));
  const AppEngineFirewallRuleAction.arg(TfArg<String> arg) : this._(arg);

  static const unspecifiedAction = AppEngineFirewallRuleAction._(
    TfArgLiteral('UNSPECIFIED_ACTION'),
  );
  static const allow = AppEngineFirewallRuleAction._(TfArgLiteral('ALLOW'));
  static const deny = AppEngineFirewallRuleAction._(TfArgLiteral('DENY'));

  static const List<AppEngineFirewallRuleAction> values = [
    unspecifiedAction,
    allow,
    deny,
  ];
}

/// Factory wrapper for `google_app_engine_firewall_rule`.
///
/// A single firewall rule that is evaluated against incoming traffic and
/// provides an action to take on matched requests.
final class GoogleAppEngineFirewallRule extends Resource {
  static const String tfType = 'google_app_engine_firewall_rule';

  GoogleAppEngineFirewallRule(
    super.localName, {
    TfArg<num>? priority,
    required AppEngineFirewallRuleAction action,
    required TfArg<String> sourceRange,
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
           'priority': ?priority,
           'action': action,
           'source_range': sourceRange,
           'description': ?description,
           'deletion_policy': ?deletionPolicy,
           'project': ?project,
         },
       );

  @override
  Set<String> get sensitiveFields => _googleAppEngineFirewallRuleSensitive;

  /// A reference to this resource, for arguments typed
  /// `RefTo<GoogleAppEngineFirewallRule>`.
  RefTo<GoogleAppEngineFirewallRule> get ref => RefTo.of(this);

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `action` attribute.
  TfRef<String> get action => TfRef.attribute<String>(this, 'action');

  /// Reference to `deletion_policy` attribute.
  TfRef<String> get deletionPolicy =>
      TfRef.attribute<String>(this, 'deletion_policy');

  /// Reference to `description` attribute.
  TfRef<String> get description => TfRef.attribute<String>(this, 'description');

  /// Reference to `priority` attribute.
  TfRef<num> get priority => TfRef.attribute<num>(this, 'priority');

  /// Reference to `project` attribute.
  TfRef<String> get project => TfRef.attribute<String>(this, 'project');

  /// Reference to `source_range` attribute.
  TfRef<String> get sourceRange =>
      TfRef.attribute<String>(this, 'source_range');
}
