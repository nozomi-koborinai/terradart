// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `aws_quicksight_account_subscription`.
const Set<String> _awsQuicksightAccountSubscriptionSensitive = <String>{};

/// Factory wrapper for `aws_quicksight_account_subscription`.
final class AwsQuicksightAccountSubscription extends Resource {
  static const String tfType = 'aws_quicksight_account_subscription';

  AwsQuicksightAccountSubscription({
    required super.localName,
    required TfArg<String> accountName,
    TfArg<String>? activeDirectoryName,
    TfArg<List<String>>? adminGroup,
    TfArg<List<String>>? adminProGroup,
    required TfArg<String> authenticationMethod,
    TfArg<List<String>>? authorGroup,
    TfArg<List<String>>? authorProGroup,
    TfArg<String>? awsAccountId,
    TfArg<String>? contactNumber,
    TfArg<String>? directoryId,
    required TfArg<String> edition,
    TfArg<String>? emailAddress,
    TfArg<String>? firstName,
    TfArg<String>? iamIdentityCenterInstanceArn,
    TfArg<String>? lastName,
    required TfArg<String> notificationEmail,
    TfArg<List<String>>? readerGroup,
    TfArg<List<String>>? readerProGroup,
    TfArg<String>? realm,
    TfArg<String>? region,
    super.lifecycle,
    super.dependsOn,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           'account_name': accountName,
           if (activeDirectoryName != null)
             'active_directory_name': activeDirectoryName,
           if (adminGroup != null) 'admin_group': adminGroup,
           if (adminProGroup != null) 'admin_pro_group': adminProGroup,
           'authentication_method': authenticationMethod,
           if (authorGroup != null) 'author_group': authorGroup,
           if (authorProGroup != null) 'author_pro_group': authorProGroup,
           if (awsAccountId != null) 'aws_account_id': awsAccountId,
           if (contactNumber != null) 'contact_number': contactNumber,
           if (directoryId != null) 'directory_id': directoryId,
           'edition': edition,
           if (emailAddress != null) 'email_address': emailAddress,
           if (firstName != null) 'first_name': firstName,
           if (iamIdentityCenterInstanceArn != null)
             'iam_identity_center_instance_arn': iamIdentityCenterInstanceArn,
           if (lastName != null) 'last_name': lastName,
           'notification_email': notificationEmail,
           if (readerGroup != null) 'reader_group': readerGroup,
           if (readerProGroup != null) 'reader_pro_group': readerProGroup,
           if (realm != null) 'realm': realm,
           if (region != null) 'region': region,
         },
       );

  @override
  Set<String> get sensitiveFields => _awsQuicksightAccountSubscriptionSensitive;

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `account_subscription_status` attribute.
  TfRef<String> get accountSubscriptionStatus =>
      TfRef.attribute<String>(this, 'account_subscription_status');
}
