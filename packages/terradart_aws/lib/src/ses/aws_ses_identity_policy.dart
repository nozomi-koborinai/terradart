// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `aws_ses_identity_policy`.
const Set<String> _awsSesIdentityPolicySensitive = <String>{};

/// Factory wrapper for `aws_ses_identity_policy`.
final class AwsSesIdentityPolicy extends Resource {
  static const String tfType = 'aws_ses_identity_policy';

  AwsSesIdentityPolicy({
    required super.localName,
    required TfArg<String> identity,
    required TfArg<String> name,
    required TfArg<String> policy,
    TfArg<String>? region,
    super.lifecycle,
    super.dependsOn,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           'identity': identity,
           'name': name,
           'policy': policy,
           'region': ?region,
         },
       );

  @override
  Set<String> get sensitiveFields => _awsSesIdentityPolicySensitive;

  /// A reference to this resource, for arguments typed
  /// `RefTo<AwsSesIdentityPolicy>`.
  RefTo<AwsSesIdentityPolicy> get ref => RefTo.of(this);

  /// Reference to `name` attribute.
  TfRef<String> get nameRef => TfRef.attribute<String>(this, 'name');

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `identity` attribute.
  TfRef<String> get identityRef => TfRef.attribute<String>(this, 'identity');

  /// Reference to `policy` attribute.
  TfRef<String> get policyRef => TfRef.attribute<String>(this, 'policy');

  /// Reference to `region` attribute.
  TfRef<String> get regionRef => TfRef.attribute<String>(this, 'region');
}
