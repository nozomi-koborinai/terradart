// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `aws_identitystore_users`.
const Set<String> _awsIdentitystoreUsersSensitive = <String>{};

/// Factory wrapper for `aws_identitystore_users`.
final class DataAwsIdentitystoreUsers extends Data {
  static const String tfType = 'aws_identitystore_users';

  DataAwsIdentitystoreUsers({
    required super.localName,
    required TfArg<String> identityStoreId,
    TfArg<String>? region,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           'identity_store_id': identityStoreId,
           if (region != null) 'region': region,
         },
       );

  @override
  Set<String> get sensitiveFields => _awsIdentitystoreUsersSensitive;

  /// Reference to `users` attribute.
  TfRef<List<Map<String, Object?>>> get users =>
      TfRef.attribute<List<Map<String, Object?>>>(this, 'users');
}
