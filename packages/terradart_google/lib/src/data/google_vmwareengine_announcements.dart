// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `google_vmwareengine_announcements`.
const Set<String> _googleVmwareengineAnnouncementsSensitive = <String>{};

/// Factory wrapper for `google_vmwareengine_announcements`.
///
/// Read-only data source on the apply-excluded leftover path
/// (synth + `terraform validate` only). Do not apply.
final class DataGoogleVmwareengineAnnouncements extends Data {
  static const String tfType = 'google_vmwareengine_announcements';

  DataGoogleVmwareengineAnnouncements({
    required super.localName,
    TfArg<String>? name,
    required TfArg<String> parent,
  }) : super(
         terraformType: tfType,
         argMap: {if (name != null) 'name': name, 'parent': parent},
       );

  @override
  Set<String> get sensitiveFields => _googleVmwareengineAnnouncementsSensitive;

  /// Reference to `name` attribute.
  TfRef<String> get nameRef => TfRef.attribute<String>(this, 'name');

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `announcements` attribute.
  TfRef<List<Map<String, Object?>>> get announcements =>
      TfRef.attribute<List<Map<String, Object?>>>(this, 'announcements');
}
