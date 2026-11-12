// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:meta/meta.dart';
import 'package:terradart_core/terradart_core.dart';

import '../project/appwrite_project.dart' show AppwriteProject;

/// Sensitive field paths for `appwrite_project_variable`.
const Set<String> _appwriteProjectVariableSensitive = <String>{
  'value',
  'value_wo',
};

/// Exactly one of `value`, `value_wo` on `appwrite_project_variable`: the provider rejects
/// none and more than one, so each variant sets one of them.
///
/// Pick one with a dot shorthand: `.value(...)`.
sealed class ProjectVariableValue {
  const ProjectVariableValue();

  /// Sets `value`.
  const factory ProjectVariableValue.value(Sensitive<String> value) =
      ProjectVariableValueChoice;

  /// Sets `value_wo`.
  const factory ProjectVariableValue.valueWo(Sensitive<String> valueWo) =
      ProjectVariableValueWo;

  /// The Terraform argument this choice sets.
  @internal
  String get blockKey;

  @internal
  Map<String, Object?> encode();

  /// The resource arguments behind [encode], as the caller's
  /// [TfArg]s.
  @internal
  Map<String, TfArg<Object?>> get argMap;
}

/// The [ProjectVariableValue.value] choice: sets `value`.
final class ProjectVariableValueChoice extends ProjectVariableValue {
  const ProjectVariableValueChoice(this.value);

  final Sensitive<String> value;

  @internal
  @override
  String get blockKey => 'value';

  @internal
  @override
  Map<String, Object?> encode() => {'value': value.toTfJson()};

  @internal
  @override
  Map<String, TfArg<Object?>> get argMap => {'value': value};
}

/// The [ProjectVariableValue.valueWo] choice: sets `value_wo`.
final class ProjectVariableValueWo extends ProjectVariableValue {
  const ProjectVariableValueWo(this.valueWo);

  final Sensitive<String> valueWo;

  @internal
  @override
  String get blockKey => 'value_wo';

  @internal
  @override
  Map<String, Object?> encode() => {'value_wo': valueWo.toTfJson()};

  @internal
  @override
  Map<String, TfArg<Object?>> get argMap => {'value_wo': valueWo};
}

/// Factory wrapper for `appwrite_project_variable`.
///
/// Manages an Appwrite project environment variable, shared by every function
/// and site in the project.
final class AppwriteProjectVariable extends Resource {
  static const String tfType = 'appwrite_project_variable';

  AppwriteProjectVariable(
    super.localName, {
    required TfArg<String> key,
    RefTo<AppwriteProject>? projectId,
    TfArg<bool>? secret,
    required ProjectVariableValue value,
    TfArg<num>? valueWoVersion,
    super.lifecycle,
    super.dependsOn,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           'key': key,
           'project_id': ?projectId?.encodeAs('id'),
           'secret': ?secret,
           ...value.argMap,
           'value_wo_version': ?valueWoVersion,
         },
       );

  @override
  Set<String> get sensitiveFields => _appwriteProjectVariableSensitive;

  /// A reference to this resource, for arguments typed
  /// `RefTo<AppwriteProjectVariable>`.
  RefTo<AppwriteProjectVariable> get ref => RefTo.of(this);

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `created_at` attribute.
  TfRef<String> get createdAt => TfRef.attribute<String>(this, 'created_at');

  /// Reference to `updated_at` attribute.
  TfRef<String> get updatedAt => TfRef.attribute<String>(this, 'updated_at');

  /// Reference to `key` attribute.
  TfRef<String> get key => TfRef.attribute<String>(this, 'key');

  /// Reference to `project_id` attribute.
  TfRef<String> get projectId => TfRef.attribute<String>(this, 'project_id');

  /// Reference to `secret` attribute.
  TfRef<bool> get secret => TfRef.attribute<bool>(this, 'secret');

  /// Reference to `value` attribute.
  TfRef<String> get value => TfRef.attribute<String>(this, 'value');

  /// Reference to `value_wo_version` attribute.
  TfRef<num> get valueWoVersion =>
      TfRef.attribute<num>(this, 'value_wo_version');
}
