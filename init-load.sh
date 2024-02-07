#!/busybox/busybox sh
#shellcheck shell=dash

set -o errexit
set -o nounset
set -o xtrace

oxigraph load --file "$ONTOLOGY_DIR"/foaf.rdf --graph http://xmlns.com/foaf/0.1/ "$@"
