months=("january february march april may june july august september october november december")
years=("2016 2017")

for year in ${years[@]}; do
    for month in ${months[@]}; do
        if [ -f "caf_manifest/patches_security/$year/$month/apply.sh" ]; then
            sh "caf_manifest/patches_security/$year/$month/apply.sh"
        fi
    done
done

sh caf_manifest/patches_custom/apply.sh

if [ -d "caf_manifest/patches_$USER" ]; then
    sh "caf_manifest/patches_$USER/apply.sh"
fi
