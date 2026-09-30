// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `aws_ses_email_identity`.
const Set<String> _awsSesEmailIdentitySensitive = <String>{};

/// Factory wrapper for `aws_ses_email_identity`.
final class AwsSesEmailIdentity extends Resource {
  static const String tfType = 'aws_ses_email_identity';

  AwsSesEmailIdentity({
    required super.localName,
    required TfArg<String> email,
    TfArg<String>? region,
    super.lifecycle,
    super.dependsOn,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {'email': email, 'region': ?region},
       );

  @override
  Set<String> get sensitiveFields => _awsSesEmailIdentitySensitive;

  /// A reference to this resource, for arguments typed
  /// `RefTo<AwsSesEmailIdentity>`.
  RefTo<AwsSesEmailIdentity> get ref => RefTo.of(this);

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `arn` attribute.
  TfRef<String> get arn => TfRef.attribute<String>(this, 'arn');

  /// Reference to `email` attribute.
  TfRef<String> get emailRef => TfRef.attribute<String>(this, 'email');

  /// Reference to `region` attribute.
  TfRef<String> get regionRef => TfRef.attribute<String>(this, 'region');
}
