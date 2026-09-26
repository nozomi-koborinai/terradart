// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `aws_fms_admin_account`.
const Set<String> _awsFmsAdminAccountSensitive = <String>{};

/// Factory wrapper for `aws_fms_admin_account`.
final class AwsFmsAdminAccount extends Resource {
  static const String tfType = 'aws_fms_admin_account';

  AwsFmsAdminAccount({
    required super.localName,
    TfArg<String>? accountId,
    super.lifecycle,
    super.dependsOn,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {if (accountId != null) 'account_id': accountId},
       );

  @override
  Set<String> get sensitiveFields => _awsFmsAdminAccountSensitive;

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');
}
