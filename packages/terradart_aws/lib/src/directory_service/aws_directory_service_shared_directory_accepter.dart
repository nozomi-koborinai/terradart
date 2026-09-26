// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `aws_directory_service_shared_directory_accepter`.
const Set<String> _awsDirectoryServiceSharedDirectoryAccepterSensitive =
    <String>{};

/// Factory wrapper for `aws_directory_service_shared_directory_accepter`.
final class AwsDirectoryServiceSharedDirectoryAccepter extends Resource {
  static const String tfType =
      'aws_directory_service_shared_directory_accepter';

  AwsDirectoryServiceSharedDirectoryAccepter({
    required super.localName,
    TfArg<String>? region,
    required TfArg<String> sharedDirectoryId,
    super.lifecycle,
    super.dependsOn,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           if (region != null) 'region': region,
           'shared_directory_id': sharedDirectoryId,
         },
       );

  @override
  Set<String> get sensitiveFields =>
      _awsDirectoryServiceSharedDirectoryAccepterSensitive;

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `method` attribute.
  TfRef<String> get method => TfRef.attribute<String>(this, 'method');

  /// Reference to `notes` attribute.
  TfRef<String> get notes => TfRef.attribute<String>(this, 'notes');

  /// Reference to `owner_account_id` attribute.
  TfRef<String> get ownerAccountId =>
      TfRef.attribute<String>(this, 'owner_account_id');

  /// Reference to `owner_directory_id` attribute.
  TfRef<String> get ownerDirectoryId =>
      TfRef.attribute<String>(this, 'owner_directory_id');
}
