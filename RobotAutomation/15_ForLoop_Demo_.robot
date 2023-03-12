#Topic: How to work with FOR loop in Robot Framework
*** Variables ***
@{ROBOTS}=  Bender    Johnny5    Terminator    Robocop

*** Tasks ***
#ForLoop1
#    FOR    ${i}    IN RANGE    1    10
#       log to console    ${i}
#    END

#ForLoop2
#    FOR    ${i}    IN    1  2   3   4   5   6
#      log to console    ${i}
#    END

#ForLoop3withlist
#    @{items}    create list    1    2    3    ${4}    5
#    FOR    ${i}    IN    @{items}
#      log to console    ${i}
#      exit for loop if     "${i}"=="3"
#    END

#Execute a for loop only three times
#    FOR    ${robot}    IN    @{ROBOTS}
#        IF    $robot == 'Terminator'    CONTINUE
#        Log to Console  ${robot}
#    END

Break out of the for loop on condition
    FOR    ${robot}    IN    @{ROBOTS}
        IF    $robot == 'Johnny5'    BREAK
        Log to Console  ${robot}
    END
