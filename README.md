# Agent Specialist Registry Showcase

This is a public-safe fixture version of the private agent specialist registry.
It demonstrates the registry shape without exposing private source corpora,
Discord approval evidence, lifecycle state, private TODOs, or deploy-key based
CI.

The fixture keeps the important split from the private registry:

- `fixtures/docs-management-practices/` contains management-scope source
  anchors.
- `fixtures/docs-practitioner-practices/` contains practitioner-scope source
  anchors.

The generator reads those fixtures, writes generated specialist artifacts, and
then validates drift, review gates, role-scope boundaries, specialist cards,
and invocation fixtures.

## Run Locally

```bash
./scripts/ci_check.sh
```

The check uses only files in this directory. It does not clone private
repositories, read deploy keys, or require repository secrets.

## Public-Safety Boundary

This showcase intentionally excludes private generated artifacts and private
review history. It uses synthetic fixture review records and source text written
only for this demo.

