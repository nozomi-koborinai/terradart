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

  /// Reference to `account_name` attribute.
  TfRef<String> get accountName =>
      TfRef.attribute<String>(this, 'account_name');

  /// Reference to `active_directory_name` attribute.
  TfRef<String> get activeDirectoryName =>
      TfRef.attribute<String>(this, 'active_directory_name');

  /// Reference to `admin_group` attribute.
  TfRef<List<String>> get adminGroup =>
      TfRef.attribute<List<String>>(this, 'admin_group');

  /// Reference to `admin_pro_group` attribute.
  TfRef<List<String>> get adminProGroup =>
      TfRef.attribute<List<String>>(this, 'admin_pro_group');

  /// Reference to `authentication_method` attribute.
  TfRef<String> get authenticationMethod =>
      TfRef.attribute<String>(this, 'authentication_method');

  /// Reference to `author_group` attribute.
  TfRef<List<String>> get authorGroup =>
      TfRef.attribute<List<String>>(this, 'author_group');

  /// Reference to `author_pro_group` attribute.
  TfRef<List<String>> get authorProGroup =>
      TfRef.attribute<List<String>>(this, 'author_pro_group');

  /// Reference to `aws_account_id` attribute.
  TfRef<String> get awsAccountId =>
      TfRef.attribute<String>(this, 'aws_account_id');

  /// Reference to `contact_number` attribute.
  TfRef<String> get contactNumber =>
      TfRef.attribute<String>(this, 'contact_number');

  /// Reference to `directory_id` attribute.
  TfRef<String> get directoryId =>
      TfRef.attribute<String>(this, 'directory_id');

  /// Reference to `edition` attribute.
  TfRef<String> get edition => TfRef.attribute<String>(this, 'edition');

  /// Reference to `email_address` attribute.
  TfRef<String> get emailAddress =>
      TfRef.attribute<String>(this, 'email_address');

  /// Reference to `first_name` attribute.
  TfRef<String> get firstName => TfRef.attribute<String>(this, 'first_name');

  /// Reference to `iam_identity_center_instance_arn` attribute.
  TfRef<String> get iamIdentityCenterInstanceArn =>
      TfRef.attribute<String>(this, 'iam_identity_center_instance_arn');

  /// Reference to `last_name` attribute.
  TfRef<String> get lastName => TfRef.attribute<String>(this, 'last_name');

  /// Reference to `notification_email` attribute.
  TfRef<String> get notificationEmail =>
      TfRef.attribute<String>(this, 'notification_email');

  /// Reference to `reader_group` attribute.
  TfRef<List<String>> get readerGroup =>
      TfRef.attribute<List<String>>(this, 'reader_group');

  /// Reference to `reader_pro_group` attribute.
  TfRef<List<String>> get readerProGroup =>
      TfRef.attribute<List<String>>(this, 'reader_pro_group');

  /// Reference to `realm` attribute.
  TfRef<String> get realm => TfRef.attribute<String>(this, 'realm');

  /// Reference to `region` attribute.
  TfRef<String> get region => TfRef.attribute<String>(this, 'region');
}
