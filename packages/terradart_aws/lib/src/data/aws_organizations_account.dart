// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `aws_organizations_account`.
const Set<String> _awsOrganizationsAccountSensitive = <String>{};

/// Factory wrapper for `aws_organizations_account`.
final class DataAwsOrganizationsAccount extends Data {
  static const String tfType = 'aws_organizations_account';

  DataAwsOrganizationsAccount({
    required super.localName,
    required TfArg<String> accountId,
    TfArg<Map<String, String>>? tags,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {'account_id': accountId, if (tags != null) 'tags': tags},
       );

  @override
  Set<String> get sensitiveFields => _awsOrganizationsAccountSensitive;

  /// Reference to `name` attribute.
  TfRef<String> get nameRef => TfRef.attribute<String>(this, 'name');

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `arn` attribute.
  TfRef<String> get arn => TfRef.attribute<String>(this, 'arn');

  /// Reference to `email` attribute.
  TfRef<String> get email => TfRef.attribute<String>(this, 'email');

  /// Reference to `joined_method` attribute.
  TfRef<String> get joinedMethod =>
      TfRef.attribute<String>(this, 'joined_method');

  /// Reference to `joined_timestamp` attribute.
  TfRef<String> get joinedTimestamp =>
      TfRef.attribute<String>(this, 'joined_timestamp');

  /// Reference to `parent_id` attribute.
  TfRef<String> get parentId => TfRef.attribute<String>(this, 'parent_id');

  /// Reference to `state` attribute.
  TfRef<String> get state => TfRef.attribute<String>(this, 'state');
}
