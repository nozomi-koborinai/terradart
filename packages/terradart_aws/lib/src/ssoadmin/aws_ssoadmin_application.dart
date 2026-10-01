// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:meta/meta.dart';
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `aws_ssoadmin_application`.
const Set<String> _awsSsoadminApplicationSensitive = <String>{};

/// Ssoadmin Application enum for `status`.
extension type const SsoadminApplicationStatus._(TfArg<String> _)
    implements TfArg<String> {
  SsoadminApplicationStatus.variable(String name)
    : this._(TfArg.variable(name));
  SsoadminApplicationStatus.expression(String template)
    : this._(TfArg.expression(template));
  const SsoadminApplicationStatus.arg(TfArg<String> arg) : this._(arg);

  static const enabled = SsoadminApplicationStatus._(TfArgLiteral('ENABLED'));
  static const disabled = SsoadminApplicationStatus._(TfArgLiteral('DISABLED'));

  static const List<SsoadminApplicationStatus> values = [enabled, disabled];
}

/// Typed helper for the `portal_options` block of
/// `aws_ssoadmin_application` (derived from provider schema).
@immutable
final class SsoadminApplicationPortalOptions {
  const SsoadminApplicationPortalOptions({this.visibility, this.signInOptions});

  final SsoadminApplicationVisibility? visibility;

  final List<SsoadminApplicationSignInOptions>? signInOptions;

  Map<String, Object?> encode() => {
    'visibility': ?visibility?.toTfJson(),
    if (signInOptions != null)
      'sign_in_options': [for (final e in signInOptions!) e.encode()],
  };
}

/// `visibility` — derived from the provider schema description.
extension type const SsoadminApplicationVisibility._(TfArg<String> _)
    implements TfArg<String> {
  SsoadminApplicationVisibility.variable(String name)
    : this._(TfArg.variable(name));
  SsoadminApplicationVisibility.expression(String template)
    : this._(TfArg.expression(template));
  const SsoadminApplicationVisibility.arg(TfArg<String> arg) : this._(arg);

  static const enabled = SsoadminApplicationVisibility._(
    TfArgLiteral('ENABLED'),
  );
  static const disabled = SsoadminApplicationVisibility._(
    TfArgLiteral('DISABLED'),
  );

  static const List<SsoadminApplicationVisibility> values = [enabled, disabled];
}

/// Typed helper for the `portal_options.sign_in_options` block of
/// `aws_ssoadmin_application` (derived from provider schema).
@immutable
final class SsoadminApplicationSignInOptions {
  const SsoadminApplicationSignInOptions({
    this.applicationUrl,
    required this.origin,
  });

  final TfArg<String>? applicationUrl;

  final SsoadminApplicationOrigin origin;

  Map<String, Object?> encode() => {
    'application_url': ?applicationUrl?.toTfJson(),
    'origin': origin.toTfJson(),
  };
}

/// `origin` — derived from the provider schema description.
extension type const SsoadminApplicationOrigin._(TfArg<String> _)
    implements TfArg<String> {
  SsoadminApplicationOrigin.variable(String name)
    : this._(TfArg.variable(name));
  SsoadminApplicationOrigin.expression(String template)
    : this._(TfArg.expression(template));
  const SsoadminApplicationOrigin.arg(TfArg<String> arg) : this._(arg);

  static const identityCenter = SsoadminApplicationOrigin._(
    TfArgLiteral('IDENTITY_CENTER'),
  );
  static const application = SsoadminApplicationOrigin._(
    TfArgLiteral('APPLICATION'),
  );

  static const List<SsoadminApplicationOrigin> values = [
    identityCenter,
    application,
  ];
}

/// Factory wrapper for `aws_ssoadmin_application`.
final class AwsSsoadminApplication extends Resource {
  static const String tfType = 'aws_ssoadmin_application';

  AwsSsoadminApplication(
    super.localName, {
    required TfArg<String> applicationProviderArn,
    TfArg<String>? clientToken,
    TfArg<String>? description,
    required TfArg<String> instanceArn,
    required TfArg<String> name,
    TfArg<String>? region,
    SsoadminApplicationStatus? status,
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
  TfRef<String> get name => TfRef.attribute<String>(this, 'name');

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
  TfRef<String> get applicationProviderArn =>
      TfRef.attribute<String>(this, 'application_provider_arn');

  /// Reference to `client_token` attribute.
  TfRef<String> get clientToken =>
      TfRef.attribute<String>(this, 'client_token');

  /// Reference to `description` attribute.
  TfRef<String> get description => TfRef.attribute<String>(this, 'description');

  /// Reference to `instance_arn` attribute.
  TfRef<String> get instanceArn =>
      TfRef.attribute<String>(this, 'instance_arn');

  /// Reference to `region` attribute.
  TfRef<String> get region => TfRef.attribute<String>(this, 'region');

  /// Reference to `status` attribute.
  TfRef<String> get status => TfRef.attribute<String>(this, 'status');

  /// Reference to `tags` attribute.
  TfRef<Map<String, String>> get tags =>
      TfRef.attribute<Map<String, String>>(this, 'tags');
}
