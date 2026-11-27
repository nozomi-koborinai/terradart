enum ExitCode {
  internal(1, 'internal'),

  inputRequired(3, 'input_required'),

  skillDrift(4, 'skill_drift'),

  localEdits(5, 'local_edits'),

  synthFailed(10, 'synth_failed'),

  engineUnavailable(11, 'engine_unavailable'),

  engineFailed(12, 'engine_failed'),

  usage(64, 'usage'),

  missingFlag(64, 'missing_flag'),

  projectConfig(65, 'project_config'),

  noProject(66, 'no_project');

  const ExitCode(this.code, this.error);

  final int code;

  final String error;
}

const exitChanges = 2;
