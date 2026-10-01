// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:meta/meta.dart';
import 'package:terradart_core/terradart_core.dart';

import '../endpoints/google_endpoints_service.dart' show GoogleEndpointsService;
import '../iam/iam_principal.dart' show IamPrincipal;

/// Sensitive field paths for `google_endpoints_service_iam_member`.
const Set<String> _googleEndpointsServiceIamMemberSensitive = <String>{};

/// Typed helper for the `condition` block of
/// `google_endpoints_service_iam_member` (derived from provider schema).
@immutable
final class EndpointsServiceIamMemberCondition {
  const EndpointsServiceIamMemberCondition({
    this.description,
    required this.expression,
    required this.title,
  });

  final TfArg<String>? description;

  final TfArg<String> expression;

  final TfArg<String> title;

  @internal
  Map<String, Object?> encode() => {
    'description': ?description?.toTfJson(),
    'expression': expression.toTfJson(),
    'title': title.toTfJson(),
  };
}

/// Factory wrapper for `google_endpoints_service_iam_member`.
final class GoogleEndpointsServiceIamMember extends Resource {
  static const String tfType = 'google_endpoints_service_iam_member';

  GoogleEndpointsServiceIamMember(
    super.localName, {
    required RefTo<GoogleEndpointsService> service,
    required TfArg<String> role,
    required IamPrincipal member,
    EndpointsServiceIamMemberCondition? condition,
    super.lifecycle,
    super.dependsOn,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           'service_name': service.encodeAs('service_name'),
           'role': role,
           'member': member,
           if (condition != null)
             'condition': TfArg.literal(condition.encode()),
         },
       );

  @override
  Set<String> get sensitiveFields => _googleEndpointsServiceIamMemberSensitive;

  /// A reference to this resource, for arguments typed
  /// `RefTo<GoogleEndpointsServiceIamMember>`.
  RefTo<GoogleEndpointsServiceIamMember> get ref => RefTo.of(this);

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `etag` attribute.
  TfRef<String> get etag => TfRef.attribute<String>(this, 'etag');

  /// Reference to `member` attribute.
  TfRef<String> get member => TfRef.attribute<String>(this, 'member');

  /// Reference to `role` attribute.
  TfRef<String> get role => TfRef.attribute<String>(this, 'role');

  /// Reference to `service_name` attribute.
  TfRef<String> get serviceName =>
      TfRef.attribute<String>(this, 'service_name');
}
