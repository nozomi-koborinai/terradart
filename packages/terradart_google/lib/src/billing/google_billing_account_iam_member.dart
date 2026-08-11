// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `google_billing_account_iam_member`.
const Set<String> _googleBillingAccountIamMemberSensitive = <String>{};

/// Factory wrapper for `google_billing_account_iam_member`.
final class GoogleBillingAccountIamMember extends Resource {
  static const String tfType = 'google_billing_account_iam_member';

  GoogleBillingAccountIamMember({
    required super.localName,
    required TfArg<String> billingAccountId,
    required TfArg<String> role,
    required TfArg<String> member,
    TfArg<Map<String, dynamic>>? condition,
    super.lifecycle,
    super.dependsOn,
  }) : super(
         terraformType: tfType,
         argMap: {
           'billing_account_id': billingAccountId,
           'role': role,
           'member': member,
           if (condition != null) 'condition': condition,
         },
       );

  @override
  Set<String> get sensitiveFields => _googleBillingAccountIamMemberSensitive;

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `etag` attribute.
  TfRef<String> get etag => TfRef.attribute<String>(this, 'etag');
}
