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

  final List<IamWorkforcePoolAccessRestrictionsAllowedServices>?
  allowedServices;

  Map<String, Object?> encode() => {
    if (disableProgrammaticSignin != null)
      'disable_programmatic_signin': disableProgrammaticSignin!.toTfJson(),
    if (allowedServices != null)
      'allowed_services': [for (final e in allowedServices!) e.encode()],
  };
}

/// Typed helper for the `access_restrictions.allowed_services` block of
/// `google_iam_workforce_pool` (derived from provider schema).
@immutable
final class IamWorkforcePoolAccessRestrictionsAllowedServices {
  const IamWorkforcePoolAccessRestrictionsAllowedServices({this.domain});

  final TfArg<String>? domain;

  Map<String, Object?> encode() => {
    if (domain != null) 'domain': domain!.toTfJson(),
  };
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

  GoogleIamWorkforcePool({
    required super.localName,
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
  }) : super(
         terraformType: tfType,
         argMap: {
           if (deletionPolicy != null) 'deletion_policy': deletionPolicy,
           if (description != null) 'description': description,
           if (disabled != null) 'disabled': disabled,
           if (displayName != null) 'display_name': displayName,
           'location': location,
           'parent': parent,
           if (sessionDuration != null) 'session_duration': sessionDuration,
           'workforce_pool_id': workforcePoolId,
           if (accessRestrictions != null)
             'access_restrictions': TfArg.literal(accessRestrictions.encode()),
         },
       );

  @override
  Set<String> get sensitiveFields => _googleIamWorkforcePoolSensitive;

  /// Reference to `name` attribute.
  TfRef<String> get nameRef => TfRef.attribute<String>(this, 'name');

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `state` attribute.
  TfRef<String> get state => TfRef.attribute<String>(this, 'state');
}
