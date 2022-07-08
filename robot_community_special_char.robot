*** Settings ***
Library             squash_tf.TFParamService
Resource            robot_rsc.robot
Documentation       Testing special characters for TFParamService in a Community environment

*** Test Cases ***

Check TC CUF
    Load Squash Test Parameter        TC_CUF_testcase
    Should Be Equal                   \$\@\=\%\#\\&"'{}|[]           ${PARAM}
    Load Squash All Parameter         TC_CUF_testcase
    Should Be Equal                   \$\@\=\%\#\\&"'{}|[]           ${PARAM}

Check DS_FIRST_PARAM
    Load Squash Test Parameter        DS_FIRST_PARAM
    Should Be Equal                   \$\@\=\%\#\\&"'{}|[]           ${PARAM}
    Load Squash All Parameter         DS_FIRST_PARAM
    Should Be Equal                   \$\@\=\%\#\\&"'{}|[]           ${PARAM}
