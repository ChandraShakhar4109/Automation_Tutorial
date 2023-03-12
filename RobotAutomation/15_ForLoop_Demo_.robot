#Topic: How to work with FOR loop in Robot Framework
*** Tasks ***
#ForLoop1
#    FOR    ${i}    IN RANGE    1    10
#       log to console    ${i}
#    END

#ForLoop2
#    FOR    ${i}    IN    1  2   3   4   5   6
#      log to console    ${i}
#    END

ForLoop3withlist
    @{items}    create list    1    2    3    ${4}    5
    FOR    ${i}    IN    @{items}
      log to console    ${i}
      exit for loop if     "${i}"=="3"
    END


