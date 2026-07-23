// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `google_apigee_instance_attachment`.
const Set<String> _googleApigeeInstanceAttachmentSensitive = <String>{};

/// Factory wrapper for `google_apigee_instance_attachment`.
///
/// An `Instance attachment` in Apigee.
///
/// Attaches an Apigee **environment** to an [GoogleApigeeInstance].
///
/// **Cost:** no separate Gateway Node Hours SKU beyond the parent
/// instance (`1C2D-8C78-EC58` / `0136-18C1-DD41`). Attachment is
/// binding metadata; environment usage may still accrue on the org.
///
/// Deferred with the never_apply Apigee instance/org Wave (no
/// apply-smoke quickstart).
final class GoogleApigeeInstanceAttachment extends Resource {
  static const String tfType = 'google_apigee_instance_attachment';

  GoogleApigeeInstanceAttachment({
    required super.localName,
    required TfArg<String> instanceId,
    required TfArg<String> environment,
    TfArg<String>? deletionPolicy,
    super.lifecycle,
    super.dependsOn,
  }) : super(
         terraformType: tfType,
         argMap: {
           'instance_id': instanceId,
           'environment': environment,
           if (deletionPolicy != null) 'deletion_policy': deletionPolicy,
         },
       );

  @override
  Set<String> get sensitiveFields => _googleApigeeInstanceAttachmentSensitive;

  /// Reference to `name` attribute.
  TfRef<String> get nameRef => TfRef.attribute<String>(this, 'name');

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');
}
