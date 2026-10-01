/// terradart — Dart-first IaC runtime.
library;

export 'src/app_constant.dart'
    show AppConstant, EnvironmentConstant, RefConstant, ValueConstant;
export 'src/app_exports.dart' show AppExports;
export 'src/backends.dart' show GcsBackend, LocalBackend, S3Backend;
export 'src/data.dart' show Data;
export 'src/duplicate_resource_error.dart' show DuplicateResourceError;
export 'src/duration_helper.dart' show TerraformDurationExt;
export 'src/lifecycle.dart'
    show DependencyTarget, LifecycleOptions, RefDependency, ResourceDependency;
export 'src/module_call.dart' show DuplicateModuleError, ModuleCall;
export 'src/ref_to.dart' show RefTo, RefToList;
export 'src/resource.dart' show Resource, ResourceKind;
export 'src/stack.dart' show Stack, StackBackend, StackProvider;
export 'src/synth/json_encoder.dart' show TfJsonEncoder;
export 'src/synth/stack_synth.dart' show SynthResult;
export 'src/synth/synth_issue.dart'
    show
        InvalidMoveTarget,
        InvalidTimeout,
        MissingProvider,
        NoProviders,
        ProviderConflict,
        SensitiveLiteral,
        SynthException,
        SynthIssue,
        UndeclaredVariable,
        UnregisteredReference,
        UnresolvableConstant;
export 'src/tf_arg.dart'
    show
        TerraformEnum,
        TfArg,
        TfArgExpression,
        TfArgLiteral,
        TfArgRef,
        TfArgVariable;
export 'src/tf_template.dart' show hasTemplateSequence, templateVariableNames;
export 'src/tf_moved.dart' show TfMoved;
export 'src/tf_output.dart' show TfOutput;
export 'src/tf_variable.dart' show TfVariable;
export 'src/tf_timeouts.dart' show TfTimeouts;
export 'src/tf_ref.dart'
    show AttributeRef, DataRef, ResourceRef, TfAddressed, TfRef;
