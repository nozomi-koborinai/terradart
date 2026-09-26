// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `aws_ram_resource_share_accepter`.
const Set<String> _awsRamResourceShareAccepterSensitive = <String>{};

/// Factory wrapper for `aws_ram_resource_share_accepter`.
final class AwsRamResourceShareAccepter extends Resource {
  static const String tfType = 'aws_ram_resource_share_accepter';

  AwsRamResourceShareAccepter({
    required super.localName,
    TfArg<String>? region,
    required TfArg<String> shareArn,
    super.lifecycle,
    super.dependsOn,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {if (region != null) 'region': region, 'share_arn': shareArn},
       );

  @override
  Set<String> get sensitiveFields => _awsRamResourceShareAccepterSensitive;

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `invitation_arn` attribute.
  TfRef<String> get invitationArn =>
      TfRef.attribute<String>(this, 'invitation_arn');

  /// Reference to `receiver_account_id` attribute.
  TfRef<String> get receiverAccountId =>
      TfRef.attribute<String>(this, 'receiver_account_id');

  /// Reference to `resources` attribute.
  TfRef<List<String>> get resources =>
      TfRef.attribute<List<String>>(this, 'resources');

  /// Reference to `sender_account_id` attribute.
  TfRef<String> get senderAccountId =>
      TfRef.attribute<String>(this, 'sender_account_id');

  /// Reference to `share_id` attribute.
  TfRef<String> get shareId => TfRef.attribute<String>(this, 'share_id');

  /// Reference to `share_name` attribute.
  TfRef<String> get shareName => TfRef.attribute<String>(this, 'share_name');

  /// Reference to `status` attribute.
  TfRef<String> get status => TfRef.attribute<String>(this, 'status');
}
