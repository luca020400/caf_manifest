sh caf_manifest/patches/apply.sh

if [ -d "caf_manifest/patches_$USER" ]; then
    sh "caf_manifest/patches_$USER/apply.sh"
fi
