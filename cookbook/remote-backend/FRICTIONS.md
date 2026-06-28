# Friction log — remote-backend recipe

Findings from authoring + dogfooding the `remote-backend` recipe. Separate from `single-project-app/FRICTIONS.md` because the patterns surfaced are state-management-specific.

## Entry template

```markdown
### <short title>

**Context:** which step / which terraform command / which env.

**Friction:** what was unexpected — symptom + observed behavior.

**Proposed fix:** rename / add abstraction / docs update / etc.

**Tracked:** terradart#XXX (added after issue is filed).
```

## D1b (GCS backend — Stage 0 + migration)

(filled in during the GCS backend dogfood cycle.)

### `terraform init -migrate-state` fails with 404 when ADC quota project differs from the GCS bucket's project

**Context:** D1b Step 2 (`terraform init -migrate-state` for `cookbook/remote-backend/tf-out/` to migrate Stage 0 local state into GCS).

**Friction:** `Error inspecting states in the "local" backend: querying Cloud Storage failed: storage: bucket doesn't exist: googleapi: Error 404: The requested project was not found., notFound`. The bucket `terradart-validate-tfstate` exists (verified `gsutil ls -p terradart-validate | grep tfstate` returns it before the init), but terraform's `backend "gcs"` block uses ADC's quota project for billing the GCS API call. The dev had `gcloud config project = aizap-dev` (their personal project), which lacks any `terradart-validate-tfstate` bucket, so the GCS API rejects the lookup with a confusing "project not found" 404 instead of a more direct "bucket not found in this quota project".

**Workaround applied:** `gcloud auth application-default set-quota-project terradart-validate`. Alternative: `export GOOGLE_CLOUD_PROJECT=terradart-validate` per shell session, or `gcloud config set project terradart-validate` if the dev is fine switching their default.

This is a Terraform / Google provider behavior, not a terradart bug. But terradart users will hit it the first time they configure a backend in a non-default project — the error message is unhelpfully generic.

**Proposed fix (v1.0 cookbook docs):** the `remote-backend` recipe's README should call out this gotcha explicitly in the "Migrate Stage 0 state into the new bucket" section. Suggested README addition:

> Before running `terraform init -migrate-state`, ensure your ADC quota project matches the bucket's project:
> ```bash
> gcloud auth application-default set-quota-project <BUCKET_PROJECT_ID>
> ```
> or set `GOOGLE_CLOUD_PROJECT=<BUCKET_PROJECT_ID>` per session. Otherwise terraform's GCS backend lookup will hit a 404 "project not found" against your default quota project.

**Tracked:** Documented in cookbook (no terradart code issue).
