import 'package:meta/meta.dart';

import '../lifecycle.dart';

/// One reason a Stack cannot be synthesized.
///
/// `Stack.synth()` and `Stack.writeTo()` check the whole Stack first and
/// throw one [SynthException] listing every issue; `Stack.validate()`
/// returns them without throwing. Each subtype carries the facts a test
/// can match on:
///
/// ```dart
/// for (final issue in stack.validate()) {
///   switch (issue) {
///     case UnregisteredReference(:final address, :final target):
///       print('$address reads $target, which was never added');
///     default:
///       print(issue);
///   }
/// }
/// ```
@immutable
sealed class SynthIssue {
  const SynthIssue();

  /// Where the problem is: the Terraform address of the block that holds
  /// it (`google_pubsub_subscription.push`, `module.sa`, `output.topic_id`,
  /// `provider.google`, `moved`, `constant.ordersTopic`).
  String get address;

  /// What is wrong and how to fix it, in one paragraph.
  String get message;

  @override
  String toString() => '$address: $message';
}

/// The Stack registers no provider, but declares resources or data sources.
final class NoProviders extends SynthIssue {
  const NoProviders();

  @override
  String get address => 'terraform';

  @override
  String get message =>
      'the Stack registers no provider. Pass at least one StackProvider in '
      '`Stack(providers: [...])`.';
}

/// A block needs a provider configuration the Stack does not register:
/// the provider its type implies (`google` for `google_pubsub_topic`), the
/// one its `provider` meta-argument names, or one a module call passes on.
final class MissingProvider extends SynthIssue {
  const MissingProvider({
    required this.address,
    required this.provider,
    this.unregisteredInstance = false,
  });

  @override
  final String address;

  /// `google`, or `google.eu` for an aliased configuration.
  final String provider;

  /// Whether the block names a [StackProvider] instance as its `provider:`
  /// that the Stack does not hold — an equal-looking copy does not count,
  /// because its configuration may differ from the registered one.
  final bool unregisteredInstance;

  @override
  String get message {
    if (unregisteredInstance) {
      return 'selects the provider "$provider" with an instance the Stack '
          'does not register. Pass the instance `addProvider` returned (or '
          'one listed in `Stack(providers: [...])`), not a new one.';
    }
    final alias = provider.contains('.')
        ? " registered with `alias: '${provider.split('.').last}'`"
        : '';
    return 'needs the provider "$provider", which the Stack does not '
        'register; Terraform would fall back to an unpinned implied '
        'provider. Add the matching StackProvider$alias to '
        '`Stack(providers: [...])`.';
  }
}

/// Two provider registrations Terraform rejects together: two defaults of
/// one name, a repeated alias, an alias that is not an identifier, or
/// configurations of one name with different source / version constraints.
final class ProviderConflict extends SynthIssue {
  const ProviderConflict({required this.provider, required this.reason});

  /// `google`, or `google.eu`.
  final String provider;

  /// What conflicts.
  final String reason;

  @override
  String get address => 'provider.${provider.split('.').first}';

  @override
  String get message => reason;
}

/// A `TfArg.variable` or `var.<name>` in an expression names a variable the
/// Stack does not declare.
final class UndeclaredVariable extends SynthIssue {
  const UndeclaredVariable({required this.address, required this.name});

  @override
  final String address;

  /// The variable name.
  final String name;

  @override
  String get message =>
      'references the variable "$name", which the Stack does not declare. '
      "Declare it with `variable<T>('$name')`, or with "
      "`externalVariable<T>('$name')` when a hand-written file beside "
      'main.tf.json declares it.';
}

/// A block references another block that was never registered on the
/// Stack: built, but not passed to `add(...)` / `addModule(...)`.
final class UnregisteredReference extends SynthIssue {
  const UnregisteredReference({required this.address, required this.target});

  @override
  final String address;

  /// The referenced block: `google_pubsub_topic.orders`,
  /// `data.google_project.current`, `module.sa`.
  final String target;

  @override
  String get message {
    final how = target.startsWith('module.') ? 'addModule(...)' : 'add(...)';
    return 'references $target, which is not registered on this Stack. '
        'Pass it to $how, or declare it with '
        "`addExternalBlock('$target')` when a hand-written file beside "
        'main.tf.json holds it.';
  }
}

/// A sensitive field is set to a literal, which would write the secret in
/// plain text into `main.tf.json`.
final class SensitiveLiteral extends SynthIssue {
  const SensitiveLiteral({required this.address, required this.field});

  @override
  final String address;

  /// The field's Terraform path: `password`, or
  /// `customer_encryption.encryption_key` inside a block.
  final String field;

  @override
  String get message {
    final param = _camel(field.split('.').last);
    return 'the sensitive field "$field" is set to a literal, which would '
        'write the secret into main.tf.json. Pass a variable instead — '
        "`$param: $param` with "
        "`final $param = variable<String>('${field.split('.').last}', "
        'sensitive: true)`, '
        'supplied at `terraform apply -var` time — or a '
        'reference or expression Terraform computes. A write-only '
        '`${field.split('.').last}_wo` argument, where the resource has '
        'one, takes the literal instead.';
  }

  static String _camel(String snake) {
    final parts = snake.split('_');
    return parts.first +
        parts
            .skip(1)
            .map((p) => p.isEmpty ? p : p[0].toUpperCase() + p.substring(1))
            .join();
  }
}

/// A negative `timeouts` duration.
final class InvalidTimeout extends SynthIssue {
  const InvalidTimeout({
    required this.address,
    required this.operation,
    required this.value,
  });

  @override
  final String address;

  /// `create`, `read`, `update` or `delete`.
  final String operation;

  /// The duration as Terraform would read it (`-5m`).
  final String value;

  @override
  String get message =>
      'timeouts.$operation is $value; a timeout cannot be negative.';
}

/// A `lifecycle` block Terraform rejects: a data source (or one of its
/// attributes) in `replaceTriggeredBy`, `all` inside [IgnoreChanges.of],
/// or a condition with an empty error message.
final class InvalidLifecycle extends SynthIssue {
  const InvalidLifecycle({required this.address, required this.reason});

  @override
  final String address;

  /// What is wrong.
  final String reason;

  @override
  String get message => 'lifecycle: $reason';
}

/// A `moved` block whose `to` names no resource of the Stack.
final class InvalidMoveTarget extends SynthIssue {
  const InvalidMoveTarget({required this.from, required this.to});

  /// The address the state object had.
  final String from;

  /// The address it should move to.
  final String to;

  @override
  String get address => 'moved';

  @override
  String get message =>
      '"$from" -> "$to": no resource "$to" is registered on this Stack. '
      'Terraform only moves state onto a resource the configuration '
      'declares — add the resource, or point the block at its address '
      '(`<type>.<localName>`).';
}

/// An `AppConstant.ref` whose value is not known at synth: the attribute is
/// not set to a literal, is sensitive, does not match the constant's type,
/// or belongs to a block that is not registered.
final class UnresolvableConstant extends SynthIssue {
  const UnresolvableConstant({required this.name, required this.reason});

  /// The constant's name.
  final String name;

  /// Why it cannot be resolved, and what to use instead.
  final String reason;

  @override
  String get address => 'constant.$name';

  @override
  String get message => reason;
}

/// An output of `Stack.addDartDefineOutput` that cannot carry what it
/// names: an output that is not registered, is sensitive or has no
/// environment value, two outputs read from one variable, or no output at
/// all.
final class InvalidDartDefineOutput extends SynthIssue {
  const InvalidDartDefineOutput({required this.name, required this.reason});

  /// The output's name (`dart_defines`).
  final String name;

  /// What is wrong, and how to fix it.
  final String reason;

  @override
  String get address => 'output.$name';

  @override
  String get message => reason;
}

/// Thrown by `Stack.synth()` and `Stack.writeTo()` when the Stack has one or
/// more [SynthIssue]s. Nothing is written.
final class SynthException implements Exception {
  SynthException(this.stack, List<SynthIssue> issues)
    : issues = List.unmodifiable(issues);

  /// The Stack's class name.
  final String stack;

  /// Every issue, in Stack order.
  final List<SynthIssue> issues;

  @override
  String toString() {
    final b = StringBuffer(
      'SynthException: $stack cannot be synthesized '
      '(${issues.length} ${issues.length == 1 ? 'issue' : 'issues'}):',
    );
    for (final issue in issues) {
      b.write('\n  - $issue');
    }
    return b.toString();
  }
}
