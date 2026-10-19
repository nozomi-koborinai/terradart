// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:meta/meta.dart';
import 'package:terradart_core/terradart_core.dart';

import '../functions/appwrite_function.dart' show AppwriteFunction;
import '../project/appwrite_project.dart' show AppwriteProject;

/// Sensitive field paths for `appwrite_function_variable`.
const Set<String> _appwriteFunctionVariableSensitive = <String>{
  'value',
  'value_wo',
};

/// Exactly one of `value`, `value_wo` on `appwrite_function_variable`: the provider rejects
/// none and more than one, so each variant sets one of them.
///
/// Pick one with a dot shorthand: `.value(...)`.
sealed class FunctionVariableValue {
  const FunctionVariableValue();

  /// Sets `value`.
  const factory FunctionVariableValue.value(Sensitive<String> value) =
      FunctionVariableValueChoice;

  /// Sets `value_wo`.
  const factory FunctionVariableValue.valueWo(Sensitive<String> valueWo) =
      FunctionVariableValueWo;

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

/// The [FunctionVariableValue.value] choice: sets `value`.
final class FunctionVariableValueChoice extends FunctionVariableValue {
  const FunctionVariableValueChoice(this.value);

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

/// The [FunctionVariableValue.valueWo] choice: sets `value_wo`.
final class FunctionVariableValueWo extends FunctionVariableValue {
  const FunctionVariableValueWo(this.valueWo);

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

/// Factory wrapper for `appwrite_function_variable`.
///
/// Manages an Appwrite function environment variable.
///
/// Function environment variable. [value] sets exactly one of `value`
/// and `value_wo`. Pass `.value(TfArg.variable('name'))` so the secret
/// never enters synth output.
final class AppwriteFunctionVariable extends Resource {
  static const String tfType = 'appwrite_function_variable';

  AppwriteFunctionVariable(
    super.localName, {
    required RefTo<AppwriteFunction> functionId,
    required TfArg<String> key,
    RefTo<AppwriteProject>? projectId,
    TfArg<bool>? secret,
    required FunctionVariableValue value,
    TfArg<num>? valueWoVersion,
    super.lifecycle,
    super.dependsOn,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           'function_id': functionId.encodeAs('id'),
           'key': key,
           'project_id': ?projectId?.encodeAs('id'),
           'secret': ?secret,
           ...value.argMap,
           'value_wo_version': ?valueWoVersion,
         },
       );

  @override
  Set<String> get sensitiveFields => _appwriteFunctionVariableSensitive;

  /// A reference to this resource, for arguments typed
  /// `RefTo<AppwriteFunctionVariable>`.
  RefTo<AppwriteFunctionVariable> get ref => RefTo.of(this);

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `created_at` attribute.
  TfRef<String> get createdAt => TfRef.attribute<String>(this, 'created_at');

  /// Reference to `updated_at` attribute.
  TfRef<String> get updatedAt => TfRef.attribute<String>(this, 'updated_at');

  /// Reference to `function_id` attribute.
  TfRef<String> get functionId => TfRef.attribute<String>(this, 'function_id');

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
