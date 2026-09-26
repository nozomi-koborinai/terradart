// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `aws_inspector2_delegated_admin_account`.
const Set<String> _awsInspector2DelegatedAdminAccountSensitive = <String>{};

/// Factory wrapper for `aws_inspector2_delegated_admin_account`.
final class AwsInspector2DelegatedAdminAccount extends Resource {
  static const String tfType = 'aws_inspector2_delegated_admin_account';

  AwsInspector2DelegatedAdminAccount({
    required super.localName,
    required TfArg<String> accountId,
    TfArg<String>? region,
    super.lifecycle,
    super.dependsOn,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           'account_id': accountId,
           if (region != null) 'region': region,
         },
       );

  @override
  Set<String> get sensitiveFields =>
      _awsInspector2DelegatedAdminAccountSensitive;

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `relationship_status` attribute.
  TfRef<String> get relationshipStatus =>
      TfRef.attribute<String>(this, 'relationship_status');
}
