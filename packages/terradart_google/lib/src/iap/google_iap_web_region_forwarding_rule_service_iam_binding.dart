// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:meta/meta.dart';
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `google_iap_web_region_forwarding_rule_service_iam_binding`.
const Set<String> _googleIapWebRegionForwardingRuleServiceIamBindingSensitive =
    <String>{};

/// Typed helper for the `condition` block of
/// `google_iap_web_region_forwarding_rule_service_iam_binding` (derived from provider schema).
@immutable
final class IapWebRegionForwardingRuleServiceIamBindingCondition {
  const IapWebRegionForwardingRuleServiceIamBindingCondition({
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

/// Factory wrapper for `google_iap_web_region_forwarding_rule_service_iam_binding`.
///
/// Authoritative IAM binding for a single `role` on an IAP-protected
/// regional forwarding rule service.
///
/// Replaces the entire member list for that role, overwriting grants made
/// outside Terraform. Prefer [GoogleIapWebRegionForwardingRuleServiceIamMember] for additive grants.
final class GoogleIapWebRegionForwardingRuleServiceIamBinding extends Resource {
  static const String tfType =
      'google_iap_web_region_forwarding_rule_service_iam_binding';

  GoogleIapWebRegionForwardingRuleServiceIamBinding({
    required super.localName,
    required TfArg<String> forwardingRuleRegionServiceName,
    required TfArg<String> role,
    required TfArg<List<String>> members,
    IapWebRegionForwardingRuleServiceIamBindingCondition? condition,
    TfArg<String>? region,
    TfArg<String>? project,
    super.lifecycle,
    super.dependsOn,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           'forwarding_rule_region_service_name':
               forwardingRuleRegionServiceName,
           'role': role,
           'members': members,
           if (condition != null)
             'condition': TfArg.literal(condition.encode()),
           'region': ?region,
           'project': ?project,
         },
       );

  @override
  Set<String> get sensitiveFields =>
      _googleIapWebRegionForwardingRuleServiceIamBindingSensitive;

  /// A reference to this resource, for arguments typed
  /// `RefTo<GoogleIapWebRegionForwardingRuleServiceIamBinding>`.
  RefTo<GoogleIapWebRegionForwardingRuleServiceIamBinding> get ref =>
      RefTo.of(this);

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `etag` attribute.
  TfRef<String> get etag => TfRef.attribute<String>(this, 'etag');
}
