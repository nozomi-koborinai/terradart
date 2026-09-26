// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:meta/meta.dart';
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `aws_ssoadmin_application`.
const Set<String> _awsSsoadminApplicationSensitive = <String>{};

/// Typed helper for the `portal_options` block of
/// `aws_ssoadmin_application` (derived from provider schema).
@immutable
final class SsoadminApplicationPortalOptions {
  const SsoadminApplicationPortalOptions({this.visibility, this.signInOptions});

  final TfArg<String>? visibility;

  final List<SsoadminApplicationPortalOptionsSignInOptions>? signInOptions;

  Map<String, Object?> encode() => {
    if (visibility != null) 'visibility': visibility!.toTfJson(),
    if (signInOptions != null)
      'sign_in_options': [for (final e in signInOptions!) e.encode()],
  };
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

  final TfArg<String> origin;

  Map<String, Object?> encode() => {
    if (applicationUrl != null) 'application_url': applicationUrl!.toTfJson(),
    'origin': origin.toTfJson(),
  };
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
    TfArg<String>? status,
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
           if (clientToken != null) 'client_token': clientToken,
           if (description != null) 'description': description,
           'instance_arn': instanceArn,
           'name': name,
           if (region != null) 'region': region,
           if (status != null) 'status': status,
           if (tags != null) 'tags': tags,
           if (portalOptions != null)
             'portal_options': TfArg.literal([
               for (final e in portalOptions) e.encode(),
             ]),
         },
       );

  @override
  Set<String> get sensitiveFields => _awsSsoadminApplicationSensitive;

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
}
