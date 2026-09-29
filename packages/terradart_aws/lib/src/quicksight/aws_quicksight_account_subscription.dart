// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `aws_quicksight_account_subscription`.
const Set<String> _awsQuicksightAccountSubscriptionSensitive = <String>{};

/// Quicksight Account Subscription Authentication enum for `authentication_method`.
enum QuicksightAccountSubscriptionAuthenticationMethod
    implements TerraformEnum {
  iamAndQuicksight('IAM_AND_QUICKSIGHT'),
  iamOnly('IAM_ONLY'),
  activeDirectory('ACTIVE_DIRECTORY'),
  iamIdentityCenter('IAM_IDENTITY_CENTER');

  const QuicksightAccountSubscriptionAuthenticationMethod(this.terraformValue);
  @override
  final String terraformValue;
}

/// Quicksight Account Subscription enum for `edition`.
enum QuicksightAccountSubscriptionEdition implements TerraformEnum {
  standard('STANDARD'),
  enterprise('ENTERPRISE'),
  enterpriseAndQ('ENTERPRISE_AND_Q');

  const QuicksightAccountSubscriptionEdition(this.terraformValue);
  @override
  final String terraformValue;
}

/// Factory wrapper for `aws_quicksight_account_subscription`.
final class AwsQuicksightAccountSubscription extends Resource {
  static const String tfType = 'aws_quicksight_account_subscription';

  AwsQuicksightAccountSubscription({
    required super.localName,
    required TfArg<String> accountName,
    TfArg<String>? activeDirectoryName,
    TfArg<List<String>>? adminGroup,
    TfArg<List<String>>? adminProGroup,
    required TfArg<QuicksightAccountSubscriptionAuthenticationMethod>
    authenticationMethod,
    TfArg<List<String>>? authorGroup,
    TfArg<List<String>>? authorProGroup,
    TfArg<String>? awsAccountId,
    TfArg<String>? contactNumber,
    TfArg<String>? directoryId,
    required TfArg<QuicksightAccountSubscriptionEdition> edition,
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
           'active_directory_name': ?activeDirectoryName,
           'admin_group': ?adminGroup,
           'admin_pro_group': ?adminProGroup,
           'authentication_method': authenticationMethod,
           'author_group': ?authorGroup,
           'author_pro_group': ?authorProGroup,
           'aws_account_id': ?awsAccountId,
           'contact_number': ?contactNumber,
           'directory_id': ?directoryId,
           'edition': edition,
           'email_address': ?emailAddress,
           'first_name': ?firstName,
           'iam_identity_center_instance_arn': ?iamIdentityCenterInstanceArn,
           'last_name': ?lastName,
           'notification_email': notificationEmail,
           'reader_group': ?readerGroup,
           'reader_pro_group': ?readerProGroup,
           'realm': ?realm,
           'region': ?region,
         },
       );

  @override
  Set<String> get sensitiveFields => _awsQuicksightAccountSubscriptionSensitive;

  /// A reference to this resource, for arguments typed
  /// `RefTo<AwsQuicksightAccountSubscription>`.
  RefTo<AwsQuicksightAccountSubscription> get ref => RefTo.of(this);

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `account_subscription_status` attribute.
  TfRef<String> get accountSubscriptionStatus =>
      TfRef.attribute<String>(this, 'account_subscription_status');
}
