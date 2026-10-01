// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:meta/meta.dart';
import 'package:terradart_core/terradart_core.dart';

import '../iam/iam_principal.dart' show IamPrincipal;
import '../iap/google_iap_tunnel_dest_group.dart' show GoogleIapTunnelDestGroup;

/// Sensitive field paths for `google_iap_tunnel_dest_group_iam_member`.
const Set<String> _googleIapTunnelDestGroupIamMemberSensitive = <String>{};

/// Typed helper for the `condition` block of
/// `google_iap_tunnel_dest_group_iam_member` (derived from provider schema).
@immutable
final class IapTunnelDestGroupIamMemberCondition {
  const IapTunnelDestGroupIamMemberCondition({
    this.description,
    required this.expression,
    required this.title,
  });

  final TfArg<String>? description;

  final TfArg<String> expression;

  final TfArg<String> title;

  Map<String, Object?> encode() => {
    'description': ?description?.toTfJson(),
    'expression': expression.toTfJson(),
    'title': title.toTfJson(),
  };
}

/// Factory wrapper for `google_iap_tunnel_dest_group_iam_member`.
final class GoogleIapTunnelDestGroupIamMember extends Resource {
  static const String tfType = 'google_iap_tunnel_dest_group_iam_member';

  GoogleIapTunnelDestGroupIamMember({
    required super.localName,
    required RefTo<GoogleIapTunnelDestGroup> destGroup,
    TfArg<String>? region,
    required TfArg<String> role,
    required IamPrincipal member,
    TfArg<String>? project,
    IapTunnelDestGroupIamMemberCondition? condition,
    super.lifecycle,
    super.dependsOn,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           'dest_group': destGroup.encodeAs('name'),
           'region': ?(region ?? destGroup.alsoAs('region')),
           'role': role,
           'member': member,
           'project': ?(project ?? destGroup.alsoAs('project')),
           if (condition != null)
             'condition': TfArg.literal(condition.encode()),
         },
       );

  @override
  Set<String> get sensitiveFields =>
      _googleIapTunnelDestGroupIamMemberSensitive;

  /// A reference to this resource, for arguments typed
  /// `RefTo<GoogleIapTunnelDestGroupIamMember>`.
  RefTo<GoogleIapTunnelDestGroupIamMember> get ref => RefTo.of(this);

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `etag` attribute.
  TfRef<String> get etag => TfRef.attribute<String>(this, 'etag');

  /// Reference to `dest_group` attribute.
  TfRef<String> get destGroup => TfRef.attribute<String>(this, 'dest_group');

  /// Reference to `member` attribute.
  TfRef<String> get member => TfRef.attribute<String>(this, 'member');

  /// Reference to `project` attribute.
  TfRef<String> get project => TfRef.attribute<String>(this, 'project');

  /// Reference to `region` attribute.
  TfRef<String> get region => TfRef.attribute<String>(this, 'region');

  /// Reference to `role` attribute.
  TfRef<String> get role => TfRef.attribute<String>(this, 'role');
}
