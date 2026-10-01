// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:meta/meta.dart';
import 'package:terradart_core/terradart_core.dart';

import '../data_fusion/google_data_fusion_instance.dart'
    show GoogleDataFusionInstance;
import '../iam/iam_principal.dart' show IamPrincipal;

/// Sensitive field paths for `google_data_fusion_instance_iam_member`.
const Set<String> _googleDataFusionInstanceIamMemberSensitive = <String>{};

/// Typed helper for the `condition` block of
/// `google_data_fusion_instance_iam_member` (derived from provider schema).
@immutable
final class DataFusionInstanceIamMemberCondition {
  const DataFusionInstanceIamMemberCondition({
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

/// Factory wrapper for `google_data_fusion_instance_iam_member`.
final class GoogleDataFusionInstanceIamMember extends Resource {
  static const String tfType = 'google_data_fusion_instance_iam_member';

  GoogleDataFusionInstanceIamMember(
    super.localName, {
    required RefTo<GoogleDataFusionInstance> instance,
    required TfArg<String> role,
    required IamPrincipal member,
    DataFusionInstanceIamMemberCondition? condition,
    TfArg<String>? region,
    TfArg<String>? project,
    super.lifecycle,
    super.dependsOn,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           'name': instance.encodeAs('name'),
           'role': role,
           'member': member,
           if (condition != null)
             'condition': TfArg.literal(condition.encode()),
           'region': ?(region ?? instance.alsoAs('region')),
           'project': ?(project ?? instance.alsoAs('project')),
         },
       );

  @override
  Set<String> get sensitiveFields =>
      _googleDataFusionInstanceIamMemberSensitive;

  /// A reference to this resource, for arguments typed
  /// `RefTo<GoogleDataFusionInstanceIamMember>`.
  RefTo<GoogleDataFusionInstanceIamMember> get ref => RefTo.of(this);

  /// Reference to `name` attribute.
  TfRef<String> get name => TfRef.attribute<String>(this, 'name');

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `etag` attribute.
  TfRef<String> get etag => TfRef.attribute<String>(this, 'etag');

  /// Reference to `member` attribute.
  TfRef<String> get member => TfRef.attribute<String>(this, 'member');

  /// Reference to `project` attribute.
  TfRef<String> get project => TfRef.attribute<String>(this, 'project');

  /// Reference to `region` attribute.
  TfRef<String> get region => TfRef.attribute<String>(this, 'region');

  /// Reference to `role` attribute.
  TfRef<String> get role => TfRef.attribute<String>(this, 'role');
}
