// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `aws_identitystore_groups`.
const Set<String> _awsIdentitystoreGroupsSensitive = <String>{};

/// Factory wrapper for `aws_identitystore_groups`.
final class DataAwsIdentitystoreGroups extends Data {
  static const String tfType = 'aws_identitystore_groups';

  DataAwsIdentitystoreGroups({
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
  Set<String> get sensitiveFields => _awsIdentitystoreGroupsSensitive;

  /// Reference to `groups` attribute.
  TfRef<List<Map<String, Object?>>> get groups =>
      TfRef.attribute<List<Map<String, Object?>>>(this, 'groups');
}
