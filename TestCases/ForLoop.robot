*** Variables ***
@{ma_list_1}=     1    2    3    4
@{ma_list_2}=     Samedi    Dimanche     Lundi    Mardi


*** Test Cases ***
boucle for_1
    FOR    ${element}    IN    @{ma_list_1}
        Log To Console   ${element}
        
    END

boucle for_2

    FOR    ${element}    IN    @{ma_list_2}
        Log To Console    ${element}
        
    END   

boucle for_3
    FOR    ${counter}    IN RANGE    2    21    5    
        Log To Console    ${counter}
    END

boucle for_4
    FOR    ${element}    IN    @{ma_list_1}
        Log To Console    ${element}
        Exit For Loop If    ${element}==2
    END    

boucle for_5
    FOR    ${element}    IN    @{ma_list_2}
        Log    ${element}
        Exit For Loop If        '${element}'=='Samedi'
    END    