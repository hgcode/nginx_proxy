#!/bin/sh

set -e
/docker-entrypoint.d/20-envsubst-on-templates.sh
exec nginx -g 'daemon off;'