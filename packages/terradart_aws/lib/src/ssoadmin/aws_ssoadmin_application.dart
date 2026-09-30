// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:meta/meta.dart';
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `aws_ssoadmin_application`.
const Set<String> _awsSsoadminApplicationSensitive = <String>{};

/// Ssoadmin Application enum for `status`.
enum SsoadminApplicationStatus implements TerraformEnum {
  enabled('ENABLED'),
  disabled('DISABLED');

  const SsoadminApplicationStatus(this.terraformValue);
  @override
  final String terraformValue;
}

/// Typed helper for the `portal_options` block of
/// `aws_ssoadmin_application` (derived from provider schema).
@immutable
final class SsoadminApplicationPortalOptions {
  const SsoadminApplicationPortalOptions({this.visibility, this.signInOptions});

  final TfArg<SsoadminApplicationPortalOptionsVisibility>? visibility;

  final List<SsoadminApplicationPortalOptionsSignInOptions>? signInOptions;

  Map<String, Object?> encode() => {
    'visibility': ?visibility?.toTfJson(),
    if (signInOptions != null)
      'sign_in_options': [for (final e in signInOptions!) e.encode()],
  };
}

/// `visibility` — derived from the provider schema description.
enum SsoadminApplicationPortalOptionsVisibility implements TerraformEnum {
  enabled('ENABLED'),
  disabled('DISABLED');

  const SsoadminApplicationPortalOptionsVisibility(this.terraformValue);
  @override
  final String terraformValue;
}

/// Typed helper for the `portal_options.sign_in_options` block of
/// `aws_ssoadmin_application` (derived from provider schema).
@immutable
final class SsoadminApplicationPortalOptionsSignInOptions {
  const SsoadminApplicationPortalOptionsSignInOptions({
    this.applicationUrl,
    required this.origin,
  });

  final TfArg<String>? applicationUrl;

  final TfArg<SsoadminApplicationPortalOptionsSignInOptionsOrigin> origin;

  Map<String, Object?> encode() => {
    'application_url': ?applicationUrl?.toTfJson(),
    'origin': origin.toTfJson(),
  };
}

/// `origin` — derived from the provider schema description.
enum SsoadminApplicationPortalOptionsSignInOptionsOrigin
    implements TerraformEnum {
  identityCenter('IDENTITY_CENTER'),
  application('APPLICATION');

  const SsoadminApplicationPortalOptionsSignInOptionsOrigin(
    this.terraformValue,
  );
  @override
  final String terraformValue;
}

/// Factory wrapper for `aws_ssoadmin_application`.
final class AwsSsoadminApplication extends Resource {
  static const String tfType = 'aws_ssoadmin_application';

  AwsSsoadminApplication({
    required super.localName,
    required TfArg<String> applicationProviderArn,
    TfArg<String>? clientToken,
    TfArg<String>? description,
    required TfArg<String> instanceArn,
    required TfArg<String> name,
    TfArg<String>? region,
    TfArg<SsoadminApplicationStatus>? status,
    TfArg<Map<String, String>>? tags,
    List<SsoadminApplicationPortalOptions>? portalOptions,
    super.lifecycle,
    super.dependsOn,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           'application_provider_arn': applicationProviderArn,
           'client_token': ?clientToken,
           'description': ?description,
           'instance_arn': instanceArn,
           'name': name,
           'region': ?region,
           'status': ?status,
           'tags': ?tags,
           if (portalOptions != null)
             'portal_options': TfArg.literal([
               for (final e in portalOptions) e.encode(),
             ]),
         },
       );

  @override
  Set<String> get sensitiveFields => _awsSsoadminApplicationSensitive;

  /// A reference to this resource, for arguments typed
  /// `RefTo<AwsSsoadminApplication>`.
  RefTo<AwsSsoadminApplication> get ref => RefTo.of(this);

  /// Reference to `name` attribute.
  TfRef<String> get nameRef => TfRef.attribute<String>(this, 'name');

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `application_account` attribute.
  TfRef<String> get applicationAccount =>
      TfRef.attribute<String>(this, 'application_account');

  /// Reference to `application_arn` attribute.
  TfRef<String> get applicationArn =>
      TfRef.attribute<String>(this, 'application_arn');

  /// Reference to `arn` attribute.
  TfRef<String> get arn => TfRef.attribute<String>(this, 'arn');

  /// Reference to `tags_all` attribute.
  TfRef<Map<String, String>> get tagsAll =>
      TfRef.attribute<Map<String, String>>(this, 'tags_all');

  /// Reference to `application_provider_arn` attribute.
  TfRef<String> get applicationProviderArnRef =>
      TfRef.attribute<String>(this, 'application_provider_arn');

  /// Reference to `client_token` attribute.
  TfRef<String> get clientTokenRef =>
      TfRef.attribute<String>(this, 'client_token');

  /// Reference to `description` attribute.
  TfRef<String> get descriptionRef =>
      TfRef.attribute<String>(this, 'description');

  /// Reference to `instance_arn` attribute.
  TfRef<String> get instanceArnRef =>
      TfRef.attribute<String>(this, 'instance_arn');

  /// Reference to `region` attribute.
  TfRef<String> get regionRef => TfRef.attribute<String>(this, 'region');

  /// Reference to `status` attribute.
  TfRef<String> get statusRef => TfRef.attribute<String>(this, 'status');

  /// Reference to `tags` attribute.
  TfRef<Map<String, String>> get tagsRef =>
      TfRef.attribute<Map<String, String>>(this, 'tags');
}
