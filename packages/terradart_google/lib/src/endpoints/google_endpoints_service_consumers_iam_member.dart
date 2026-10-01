// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:meta/meta.dart';
import 'package:terradart_core/terradart_core.dart';

import '../iam/iam_principal.dart' show IamPrincipal;

/// Sensitive field paths for `google_endpoints_service_consumers_iam_member`.
const Set<String> _googleEndpointsServiceConsumersIamMemberSensitive =
    <String>{};

/// Typed helper for the `condition` block of
/// `google_endpoints_service_consumers_iam_member` (derived from provider schema).
@immutable
final class EndpointsServiceConsumersIamMemberCondition {
  const EndpointsServiceConsumersIamMemberCondition({
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

/// Factory wrapper for `google_endpoints_service_consumers_iam_member`.
final class GoogleEndpointsServiceConsumersIamMember extends Resource {
  static const String tfType = 'google_endpoints_service_consumers_iam_member';

  GoogleEndpointsServiceConsumersIamMember(
    super.localName, {
    required TfArg<String> serviceName,
    required TfArg<String> consumerProject,
    required TfArg<String> role,
    required IamPrincipal member,
    EndpointsServiceConsumersIamMemberCondition? condition,
    super.lifecycle,
    super.dependsOn,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           'service_name': serviceName,
           'consumer_project': consumerProject,
           'role': role,
           'member': member,
           if (condition != null)
             'condition': TfArg.literal(condition.encode()),
         },
       );

  @override
  Set<String> get sensitiveFields =>
      _googleEndpointsServiceConsumersIamMemberSensitive;

  /// A reference to this resource, for arguments typed
  /// `RefTo<GoogleEndpointsServiceConsumersIamMember>`.
  RefTo<GoogleEndpointsServiceConsumersIamMember> get ref => RefTo.of(this);

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `etag` attribute.
  TfRef<String> get etag => TfRef.attribute<String>(this, 'etag');

  /// Reference to `consumer_project` attribute.
  TfRef<String> get consumerProject =>
      TfRef.attribute<String>(this, 'consumer_project');

  /// Reference to `member` attribute.
  TfRef<String> get member => TfRef.attribute<String>(this, 'member');

  /// Reference to `role` attribute.
  TfRef<String> get role => TfRef.attribute<String>(this, 'role');

  /// Reference to `service_name` attribute.
  TfRef<String> get serviceName =>
      TfRef.attribute<String>(this, 'service_name');
}
