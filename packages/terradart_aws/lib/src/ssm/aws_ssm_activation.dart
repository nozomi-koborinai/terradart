// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `aws_ssm_activation`.
const Set<String> _awsSsmActivationSensitive = <String>{};

/// Factory wrapper for `aws_ssm_activation`.
final class AwsSsmActivation extends Resource {
  static const String tfType = 'aws_ssm_activation';

  AwsSsmActivation({
    required super.localName,
    TfArg<String>? description,
    TfArg<String>? expirationDate,
    required TfArg<String> iamRole,
    TfArg<String>? name,
    TfArg<String>? region,
    TfArg<num>? registrationLimit,
    TfArg<Map<String, String>>? tags,
    super.lifecycle,
    super.dependsOn,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           'description': ?description,
           'expiration_date': ?expirationDate,
           'iam_role': iamRole,
           'name': ?name,
           'region': ?region,
           'registration_limit': ?registrationLimit,
           'tags': ?tags,
         },
       );

  @override
  Set<String> get sensitiveFields => _awsSsmActivationSensitive;

  /// A reference to this resource, for arguments typed
  /// `RefTo<AwsSsmActivation>`.
  RefTo<AwsSsmActivation> get ref => RefTo.of(this);

  /// Reference to `name` attribute.
  TfRef<String> get nameRef => TfRef.attribute<String>(this, 'name');

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `activation_code` attribute.
  TfRef<String> get activationCode =>
      TfRef.attribute<String>(this, 'activation_code');

  /// Reference to `expired` attribute.
  TfRef<bool> get expired => TfRef.attribute<bool>(this, 'expired');

  /// Reference to `registration_count` attribute.
  TfRef<num> get registrationCount =>
      TfRef.attribute<num>(this, 'registration_count');

  /// Reference to `description` attribute.
  TfRef<String> get descriptionRef =>
      TfRef.attribute<String>(this, 'description');

  /// Reference to `expiration_date` attribute.
  TfRef<String> get expirationDateRef =>
      TfRef.attribute<String>(this, 'expiration_date');

  /// Reference to `iam_role` attribute.
  TfRef<String> get iamRoleRef => TfRef.attribute<String>(this, 'iam_role');

  /// Reference to `region` attribute.
  TfRef<String> get regionRef => TfRef.attribute<String>(this, 'region');

  /// Reference to `registration_limit` attribute.
  TfRef<num> get registrationLimitRef =>
      TfRef.attribute<num>(this, 'registration_limit');

  /// Reference to `tags` attribute.
  TfRef<Map<String, String>> get tagsRef =>
      TfRef.attribute<Map<String, String>>(this, 'tags');
}
