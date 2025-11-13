OUT_DIR="build/distributions"
PLUGIN_ID="LoveLace-Theme"
PLUGIN_VERSION=$(xmllint --xpath "string(//version)" resources/META-INF/plugin.xml 2>/dev/null || echo "0.0.0")
OUTNAME="${PLUGIN_ID}-${PLUGIN_VERSION}.jar"

mkdir -p "${OUT_DIR}"
(cd resources && jar cf "../${OUT_DIR}/${OUTNAME}" .)
echo "Created ${OUT_DIR}/${OUTNAME}"
