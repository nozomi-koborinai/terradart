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
  }) : super(terraformType: tfType, argMap: {'account_id': ?accountId});

  @override
  Set<String> get sensitiveFields => _awsFmsAdminAccountSensitive;

  /// A reference to this resource, for arguments typed
  /// `RefTo<AwsFmsAdminAccount>`.
  RefTo<AwsFmsAdminAccount> get ref => RefTo.of(this);

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `account_id` attribute.
  TfRef<String> get accountId => TfRef.attribute<String>(this, 'account_id');
}
