// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:meta/meta.dart';
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `google_iam_workforce_pool`.
const Set<String> _googleIamWorkforcePoolSensitive = <String>{};

/// Typed helper for the `access_restrictions` block of
/// `google_iam_workforce_pool` (derived from provider schema).
@immutable
final class IamWorkforcePoolAccessRestrictions {
  const IamWorkforcePoolAccessRestrictions({
    this.disableProgrammaticSignin,
    this.allowedServices,
  });

  final TfArg<bool>? disableProgrammaticSignin;

  final List<IamWorkforcePoolAllowedServices>? allowedServices;

  @internal
  Map<String, Object?> encode() => {
    'disable_programmatic_signin': ?disableProgrammaticSignin?.toTfJson(),
    if (allowedServices != null)
      'allowed_services': [for (final e in allowedServices!) e.encode()],
  };
}

/// Typed helper for the `access_restrictions.allowed_services` block of
/// `google_iam_workforce_pool` (derived from provider schema).
@immutable
final class IamWorkforcePoolAllowedServices {
  const IamWorkforcePoolAllowedServices({this.domain});

  final TfArg<String>? domain;

  @internal
  Map<String, Object?> encode() => {'domain': ?domain?.toTfJson()};
}

/// Factory wrapper for `google_iam_workforce_pool`.
///
/// Represents a collection of external workforces. Provides namespaces for
/// federated users that can be referenced in IAM policies.
///
/// Organization-scoped IAM workforce pool — leftover factory on the
/// apply-excluded path (synth + `terraform validate` only).
///
/// Needs an organization / folder / external artifact that
/// standalone terradart-validate cannot supply. Do not apply.
final class GoogleIamWorkforcePool extends Resource {
  static const String tfType = 'google_iam_workforce_pool';

  GoogleIamWorkforcePool(
    super.localName, {
    TfArg<String>? deletionPolicy,
    TfArg<String>? description,
    TfArg<bool>? disabled,
    TfArg<String>? displayName,
    required TfArg<String> location,
    required TfArg<String> parent,
    TfArg<String>? sessionDuration,
    required TfArg<String> workforcePoolId,
    IamWorkforcePoolAccessRestrictions? accessRestrictions,
    super.lifecycle,
    super.dependsOn,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           'deletion_policy': ?deletionPolicy,
           'description': ?description,
           'disabled': ?disabled,
           'display_name': ?displayName,
           'location': location,
           'parent': parent,
           'session_duration': ?sessionDuration,
           'workforce_pool_id': workforcePoolId,
           if (accessRestrictions != null)
             'access_restrictions': TfArg.literal(accessRestrictions.encode()),
         },
       );

  @override
  Set<String> get sensitiveFields => _googleIamWorkforcePoolSensitive;

  /// A reference to this resource, for arguments typed
  /// `RefTo<GoogleIamWorkforcePool>`.
  RefTo<GoogleIamWorkforcePool> get ref => RefTo.of(this);

  /// Reference to `name` attribute.
  TfRef<String> get name => TfRef.attribute<String>(this, 'name');

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `state` attribute.
  TfRef<String> get state => TfRef.attribute<String>(this, 'state');

  /// Reference to `deletion_policy` attribute.
  TfRef<String> get deletionPolicy =>
      TfRef.attribute<String>(this, 'deletion_policy');

  /// Reference to `description` attribute.
  TfRef<String> get description => TfRef.attribute<String>(this, 'description');

  /// Reference to `disabled` attribute.
  TfRef<bool> get disabled => TfRef.attribute<bool>(this, 'disabled');

  /// Reference to `display_name` attribute.
  TfRef<String> get displayName =>
      TfRef.attribute<String>(this, 'display_name');

  /// Reference to `location` attribute.
  TfRef<String> get location => TfRef.attribute<String>(this, 'location');

  /// Reference to `parent` attribute.
  TfRef<String> get parent => TfRef.attribute<String>(this, 'parent');

  /// Reference to `session_duration` attribute.
  TfRef<String> get sessionDuration =>
      TfRef.attribute<String>(this, 'session_duration');

  /// Reference to `workforce_pool_id` attribute.
  TfRef<String> get workforcePoolId =>
      TfRef.attribute<String>(this, 'workforce_pool_id');
}
