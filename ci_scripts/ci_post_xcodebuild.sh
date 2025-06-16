#!/bin/bash

firebase appdistribution:distribute $CI_AD_HOC_SIGNED_APP_PATH/$CI_PRODUCT.ipa \
    --app $FIREBASE_APP_ID \
    --release-notes-file "release-notes.txt" \
    --groups "dev_testers" \
    --token "$FIREBASE_TOKEN"
