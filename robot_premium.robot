*** Settings ***
Library             squash_tf.TFParamService
Resource            robot_rsc.robot
Documentation       Simple test for TFParamService in a Premium environment


*** Test Cases ***

Check CPG_CUF
    Load Squash Test Parameter        CPG_CUF_campaign
    Should Be Equal                   campaignValue                ${PARAM}
    Load Squash All Parameter         CPG_CUF_campaign
    Should Be Equal                   campaignValue                ${PARAM}

Check TS_CUF
    Load Squash Test Parameter        TS_CUF_testsuite
    Should Be Equal                   testsuiteValue               ${PARAM}
    Load Squash All Parameter         TS_CUF_testsuite
    Should Be Equal                   testsuiteValue               ${PARAM}

Check TC_CUF
    Load Squash Test Parameter        TC_CUF_testcase
    Should Be Equal                   testcaseValue                ${PARAM}
    Load Squash All Parameter         TC_CUF_testcase
    Should Be Equal                   testcaseValue                ${PARAM}

Check IT_CUF
    Load Squash Test Parameter        IT_CUF_iteration
    Should Be Equal                   iterationValue               ${PARAM}
    Load Squash All Parameter         IT_CUF_iteration
    Should Be Equal                   iterationValue               ${PARAM}

Check DS_NAME
    Load Squash Test Parameter        DSNAME
    Should Be Equal                   dataset1                     ${PARAM}
    Load Squash All Parameter         DSNAME
    Should Be Equal                   dataset1                     ${PARAM}

Check DS_FIRST_PARAM
    Load Squash Test Parameter        DS_FIRST_PARAM
    Should Be Equal                   value1                       ${PARAM}
    Load Squash All Parameter         DS_FIRST_PARAM
    Should Be Equal                   value1                       ${PARAM}

Check Default Param
    Load Squash Default Test Parameter
    Should Be Equal              Failure        ${PARAM}
    Load Squash Default All Parameter
    Should Be Equal              Failure         ${PARAM}

Check Default Param Failure
    Load Squash Default Test Parameter
    Should Be Equal              Failure         ${PARAM}
    Load Squash Default All Parameter
    Should Be Equal              Failure         ${PARAM}