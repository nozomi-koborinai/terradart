// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `aws_securityhub_member`.
const Set<String> _awsSecurityhubMemberSensitive = <String>{};

/// Factory wrapper for `aws_securityhub_member`.
final class AwsSecurityhubMember extends Resource {
  static const String tfType = 'aws_securityhub_member';

  AwsSecurityhubMember({
    required super.localName,
    required TfArg<String> accountId,
    TfArg<String>? email,
    TfArg<bool>? invite,
    TfArg<String>? region,
    super.lifecycle,
    super.dependsOn,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           'account_id': accountId,
           if (email != null) 'email': email,
           if (invite != null) 'invite': invite,
           if (region != null) 'region': region,
         },
       );

  @override
  Set<String> get sensitiveFields => _awsSecurityhubMemberSensitive;

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `master_id` attribute.
  TfRef<String> get masterId => TfRef.attribute<String>(this, 'master_id');

  /// Reference to `member_status` attribute.
  TfRef<String> get memberStatus =>
      TfRef.attribute<String>(this, 'member_status');
}
