// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:meta/meta.dart';
import 'package:terradart_core/terradart_core.dart';

import '../iam/iam_principal.dart' show IamPrincipal;

/// Sensitive field paths for `google_billing_account_iam_member`.
const Set<String> _googleBillingAccountIamMemberSensitive = <String>{};

/// Typed helper for the `condition` block of
/// `google_billing_account_iam_member` (derived from provider schema).
@immutable
final class BillingAccountIamMemberCondition {
  const BillingAccountIamMemberCondition({
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

/// Factory wrapper for `google_billing_account_iam_member`.
final class GoogleBillingAccountIamMember extends Resource {
  static const String tfType = 'google_billing_account_iam_member';

  GoogleBillingAccountIamMember({
    required super.localName,
    required TfArg<String> billingAccountId,
    required TfArg<String> role,
    required IamPrincipal member,
    BillingAccountIamMemberCondition? condition,
    super.lifecycle,
    super.dependsOn,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           'billing_account_id': billingAccountId,
           'role': role,
           'member': member,
           if (condition != null)
             'condition': TfArg.literal(condition.encode()),
         },
       );

  @override
  Set<String> get sensitiveFields => _googleBillingAccountIamMemberSensitive;

  /// A reference to this resource, for arguments typed
  /// `RefTo<GoogleBillingAccountIamMember>`.
  RefTo<GoogleBillingAccountIamMember> get ref => RefTo.of(this);

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `etag` attribute.
  TfRef<String> get etag => TfRef.attribute<String>(this, 'etag');

  /// Reference to `billing_account_id` attribute.
  TfRef<String> get billingAccountIdRef =>
      TfRef.attribute<String>(this, 'billing_account_id');

  /// Reference to `member` attribute.
  TfRef<String> get memberRef => TfRef.attribute<String>(this, 'member');

  /// Reference to `role` attribute.
  TfRef<String> get roleRef => TfRef.attribute<String>(this, 'role');
}
