# Process building blocks
docker run --pull=always --rm --workdir /workspace -v $(pwd):/workspace \
  ghcr.io/opengeospatial/bblocks-postprocess  --clean true \
  --generated-docs-path build-local/generateddocs \
  --annotated-path build-local/annotated \
  --register-file build-local/register.json \
  --test-outputs build-local/tests \
  --base-url https://example.com/base-url/
