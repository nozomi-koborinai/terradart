// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:meta/meta.dart';
import 'package:terradart_core/terradart_core.dart';

import '../iam/iam_principal.dart' show IamPrincipal;

/// Sensitive field paths for `google_iap_web_forwarding_rule_service_iam_member`.
const Set<String> _googleIapWebForwardingRuleServiceIamMemberSensitive =
    <String>{};

/// Typed helper for the `condition` block of
/// `google_iap_web_forwarding_rule_service_iam_member` (derived from provider schema).
@immutable
final class IapWebForwardingRuleServiceIamMemberCondition {
  const IapWebForwardingRuleServiceIamMemberCondition({
    this.description,
    required this.expression,
    required this.title,
  });

  final TfArg<String>? description;

  final TfArg<String> expression;

  final TfArg<String> title;

  Map<String, Object?> encode() => {
    'description': ?description?.toTfJson(),
    'expression': expression.toTfJson(),
    'title': title.toTfJson(),
  };
}

/// Factory wrapper for `google_iap_web_forwarding_rule_service_iam_member`.
final class GoogleIapWebForwardingRuleServiceIamMember extends Resource {
  static const String tfType =
      'google_iap_web_forwarding_rule_service_iam_member';

  GoogleIapWebForwardingRuleServiceIamMember({
    required super.localName,
    required TfArg<String> forwardingRuleServiceName,
    required TfArg<String> role,
    required IamPrincipal member,
    IapWebForwardingRuleServiceIamMemberCondition? condition,
    TfArg<String>? project,
    super.lifecycle,
    super.dependsOn,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           'forwarding_rule_service_name': forwardingRuleServiceName,
           'role': role,
           'member': member,
           if (condition != null)
             'condition': TfArg.literal(condition.encode()),
           'project': ?project,
         },
       );

  @override
  Set<String> get sensitiveFields =>
      _googleIapWebForwardingRuleServiceIamMemberSensitive;

  /// A reference to this resource, for arguments typed
  /// `RefTo<GoogleIapWebForwardingRuleServiceIamMember>`.
  RefTo<GoogleIapWebForwardingRuleServiceIamMember> get ref => RefTo.of(this);

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `etag` attribute.
  TfRef<String> get etag => TfRef.attribute<String>(this, 'etag');

  /// Reference to `forwarding_rule_service_name` attribute.
  TfRef<String> get forwardingRuleServiceName =>
      TfRef.attribute<String>(this, 'forwarding_rule_service_name');

  /// Reference to `member` attribute.
  TfRef<String> get member => TfRef.attribute<String>(this, 'member');

  /// Reference to `project` attribute.
  TfRef<String> get project => TfRef.attribute<String>(this, 'project');

  /// Reference to `role` attribute.
  TfRef<String> get role => TfRef.attribute<String>(this, 'role');
}
