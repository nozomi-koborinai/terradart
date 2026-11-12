// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';

import '../project/appwrite_project.dart' show AppwriteProject;

/// Sensitive field paths for `appwrite_project_mock_phone`.
const Set<String> _appwriteProjectMockPhoneSensitive = <String>{'otp'};

/// Factory wrapper for `appwrite_project_mock_phone`.
///
/// Registers a mock phone number in a project. Signing in with a phone token
/// for the number sends no SMS and accepts the fixed code set here, which lets
/// test and app-review accounts sign in without a real phone.
final class AppwriteProjectMockPhone extends Resource {
  static const String tfType = 'appwrite_project_mock_phone';

  AppwriteProjectMockPhone(
    super.localName, {
    required TfArg<String> number,
    required Sensitive<String> otp,
    RefTo<AppwriteProject>? projectId,
    super.lifecycle,
    super.dependsOn,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           'number': number,
           'otp': otp,
           'project_id': ?projectId?.encodeAs('id'),
         },
       );

  @override
  Set<String> get sensitiveFields => _appwriteProjectMockPhoneSensitive;

  /// A reference to this resource, for arguments typed
  /// `RefTo<AppwriteProjectMockPhone>`.
  RefTo<AppwriteProjectMockPhone> get ref => RefTo.of(this);

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `created_at` attribute.
  TfRef<String> get createdAt => TfRef.attribute<String>(this, 'created_at');

  /// Reference to `updated_at` attribute.
  TfRef<String> get updatedAt => TfRef.attribute<String>(this, 'updated_at');

  /// Reference to `number` attribute.
  TfRef<String> get number => TfRef.attribute<String>(this, 'number');

  /// Reference to `otp` attribute.
  TfRef<String> get otp => TfRef.attribute<String>(this, 'otp');

  /// Reference to `project_id` attribute.
  TfRef<String> get projectId => TfRef.attribute<String>(this, 'project_id');
}
