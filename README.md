Prérequis : 

  - Robot Framework
  - TFParamService
  - (Optionnel même si préférable) Squash TM

Ce projet contient des fichiers robot séparés par licence pour tester la transmission des paramètres.

Les tests à exécuter se trouvent dans robot_community.robot et robot_premium.robot.

Chaque cas de test vérifie un type de CUF ou de DS.

Pour qu'un test soit en succès, il faut insérer dans Squash TM les informations suivantes :

  - CPG_CUF_campaign : campaignValue

  - TS_CUF_testsuite : testsuiteValue

  - TC_CUF_testcase : testcaseValue

  - IT_CUF_iteration : iterationValue

  - DS_NAME : dataset1

  - DS_FIRST_PARAM : value1

Deux cas de tests sont également présent avec des valeurs par défaut, un en succès, l'autre en échec.