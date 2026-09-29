// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';
import '../ses/aws_ses_email_identity.dart';

/// Sensitive field paths for `aws_ses_email_identity`.
const Set<String> _awsSesEmailIdentitySensitive = <String>{};

/// Factory wrapper for `aws_ses_email_identity`.
final class DataAwsSesEmailIdentity extends Data {
  static const String tfType = 'aws_ses_email_identity';

  DataAwsSesEmailIdentity({
    required super.localName,
    required TfArg<String> email,
    TfArg<String>? region,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {'email': email, if (region != null) 'region': region},
       );

  @override
  Set<String> get sensitiveFields => _awsSesEmailIdentitySensitive;

  /// A reference to the `aws_ses_email_identity` this data source reads, for
  /// arguments typed `RefTo<AwsSesEmailIdentity>`.
  // ignore: invalid_use_of_internal_member
  RefTo<AwsSesEmailIdentity> get ref => RefTo.read(this);

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `arn` attribute.
  TfRef<String> get arn => TfRef.attribute<String>(this, 'arn');
}
