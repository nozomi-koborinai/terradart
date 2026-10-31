import 'tf_arg.dart';

/// A list-valued enum argument (`allowed_grant_types`, `retry_conditions`):
/// a literal list of members of [E], or one value Terraform resolves to the
/// whole list.
///
/// ```dart
/// add(
///   GoogleIamOauthClient(
///     'portal',
///     oauthClientId: .literal('portal'),
///     location: .literal('global'),
///     allowedGrantTypes: .literal([.authorizationCodeGrant]),
///     allowedRedirectUris: .literal(['https://www.example.com']),
///     allowedScopes: .literal(['openid']),
///     clientType: .publicClient,
///   ),
/// );
/// ```
///
/// The whole list can come from Terraform instead: `.variable('grant_types')`
/// or `.expression(r'${local.grant_types}')`. A `variable<List<String>>()`
/// handle is a list of strings, not of [E], so spell its name out with
/// `.variable(...)`, as for an enum or `RefTo` argument. One member Terraform
/// resolves goes in the literal list through the enum's own `.variable`,
/// `.expression` or `.arg`.
///
/// Synth writes a literal list member by member; each member is a
/// `TfArg<String>` already.
typedef EnumList<E extends TfArg<String>> = TfArg<List<E>>;
