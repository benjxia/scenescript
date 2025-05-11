#!/bin/bash
export SEMIDENSE_SAMPLE_PATH=/tmp/semidense_samples
mkdir -p $SEMIDENSE_SAMPLE_PATH/ase
mkdir -p $SEMIDENSE_SAMPLE_PATH/aea

export ASE_BASE_URL="https://www.projectaria.com/async/sample/download/?bucket=ase&filename="
export AEA_BASE_URL="https://www.projectaria.com/async/sample/download/?bucket=aea&filename="
export OPTIONS="-C - -O -L"

# ASE (Synthetic)
curl -o $SEMIDENSE_SAMPLE_PATH/ase/ase_examples.zip $OPTIONS "${ASE_BASE_URL}ase_examples.zip"

# AEA (Real-world)
curl -o $SEMIDENSE_SAMPLE_PATH/aea/loc1_script1_seq1_rec1.zip $OPTIONS "${AEA_BASE_URL}loc1_script1_seq1_rec1.zip"
curl -o $SEMIDENSE_SAMPLE_PATH/aea/loc1_script2_seq1_rec1_10s_sample.zip $OPTIONS "${AEA_BASE_URL}loc1_script2_seq1_rec1_10s_sample.zip"
curl -o $SEMIDENSE_SAMPLE_PATH/aea/loc1_script2_seq1_rec2_10s_sample.zip $OPTIONS "${AEA_BASE_URL}loc1_script2_seq1_rec2_10s_sample.zip"

# Unzip everything
unzip -o $SEMIDENSE_SAMPLE_PATH/ase/ase_examples.zip -d $SEMIDENSE_SAMPLE_PATH/ase/ase_examples
unzip -o $SEMIDENSE_SAMPLE_PATH/aea/loc1_script1_seq1_rec1.zip -d $SEMIDENSE_SAMPLE_PATH/aea/loc1_script1_seq1_rec1
unzip -o $SEMIDENSE_SAMPLE_PATH/aea/loc1_script2_seq1_rec1_10s_sample.zip -d $SEMIDENSE_SAMPLE_PATH/aea/loc1_script2_seq1_rec1_10s_sample
unzip -o $SEMIDENSE_SAMPLE_PATH/aea/loc1_script2_seq1_rec2_10s_sample.zip -d $SEMIDENSE_SAMPLE_PATH/aea/loc1_script2_seq1_rec2_10s_sample