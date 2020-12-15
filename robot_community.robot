*** Settings ***
Library             squash_tf.TFParamService
Resource            robot_rsc.robot
Documentation       Simple test for TFParamService in a Community environment

*** Test Cases ***

Check TC CUF
    Load Squash Test Parameter        TC_CUF_testcase
    Should Be Equal                   testcaseValue           ${PARAM}
    Load Squash All Parameter         TC_CUF_testcase
    Should Be Equal                   testcaseValue           ${PARAM}

Check DS_NAME
    Load Squash Test Parameter        DS_NAME
    Should Be Equal                   dataset1                ${PARAM}
    Load Squash All Parameter         DS_NAME
    Should Be Equal                   dataset1                ${PARAM}

Check DS_FIRST_PARAM
    Load Squash Test Parameter        DS_FIRST_PARAM
    Should Be Equal                   value1                  ${PARAM}
    Load Squash All Parameter         DS_FIRST_PARAM
    Should Be Equal                   value1                  ${PARAM}

Check Default Param
    Load Squash Default Test Parameter
    Should Be Equal                   DefaultTestParam        ${PARAM}
    Load Squash Default All Parameter
    Should Be Equal                   DefaultAllParam         ${PARAM}

Check Default Param Failure
    Load Squash Default Test Parameter
    Should Be Equal                   Failure         ${PARAM}
    Load Squash Default All Parameter
    Should Be Equal                   Failure         ${PARAM}
