#!/bin/bash

echo "APP_PATH: $CI_AD_HOC_SIGNED_APP_PATH"
echo "CI_PRODUCT: $CI_PRODUCT"
echo "IPA: $CI_AD_HOC_SIGNED_APP_PATH/$CI_PRODUCT.ipa"
echo "FB_APP: $FIREBASE_APP_ID"
echo "FB_TOKEN: $FIREBASE_TOKEN"

firebase appdistribution:distribute "$CI_AD_HOC_SIGNED_APP_PATH/$CI_PRODUCT.ipa" \
    --app $FIREBASE_APP_ID \
    --release-notes-file "release-notes.txt" \
    --groups "dev_testers" \
    --token "$FIREBASE_TOKEN"
    
echo "DONE"
