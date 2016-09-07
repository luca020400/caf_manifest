if [ -d "caf_manifest/patches_security" ]; then
    sh "caf_manifest/patches_security/apply.sh"
fi

sh caf_manifest/patches_custom/apply.sh

if [ -d "caf_manifest/patches_$USER" ]; then
    sh "caf_manifest/patches_$USER/apply.sh"
fi
