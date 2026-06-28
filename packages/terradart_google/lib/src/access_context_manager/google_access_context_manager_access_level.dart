// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `google_access_context_manager_access_level`.
const Set<String> _googleAccessContextManagerAccessLevelSensitive = <String>{};

/// Factory wrapper for `google_access_context_manager_access_level`.
///
/// An AccessLevel is a label that can be applied to requests to GCP services,
/// along with a list of requirements necessary for the label to be applied.
final class GoogleAccessContextManagerAccessLevel extends Resource {
  static const String tfType = 'google_access_context_manager_access_level';

  GoogleAccessContextManagerAccessLevel({
    required super.localName,
    required TfArg<String> name,
    required TfArg<String> parent,
    required TfArg<String> title,
    TfArg<String>? description,
    TfArg<Map<String, dynamic>>? basic,
    TfArg<Map<String, dynamic>>? custom,
    TfArg<String>? deletionPolicy,
    super.lifecycle,
    super.dependsOn,
  }) : super(
         terraformType: tfType,
         argMap: {
           'name': name,
           'parent': parent,
           'title': title,
           if (description != null) 'description': description,
           if (basic != null) 'basic': basic,
           if (custom != null) 'custom': custom,
           if (deletionPolicy != null) 'deletion_policy': deletionPolicy,
         },
       );

  @override
  Set<String> get sensitiveFields =>
      _googleAccessContextManagerAccessLevelSensitive;

  TfRef<String> get id => TfRef.attribute<String>(this, 'id');
  TfRef<String> get nameRef => TfRef.attribute<String>(this, 'name');
}
