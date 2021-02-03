*** Keywords ***
Access careers
    [Documentation]  Apply for the first available Job from ILab career website.
    Wait Until page contains  SOFTWARE QUALITY ASSURANCE IS ALL WE DO.  timeout= 8s
    Click Link       xpath=//*[@id="menu-item-1373"]/a
    Wait Until page contains  INNOVATION IN QUALITY & TESTING  timeout=8s
    Click Link       xpath=//a[@href="/careers/south-africa/"]
    Wait Until page contains  WORK WITH THE BEST
    Execute Javascript  document.querySelectorAll('.wpjb-title')[0].click()
    wait until page contains  Description  timeout=8s
    Execute Javascript  document.querySelector('.wpjb-form-toggle').click()
    Click Link       xpath=//html/body/section[2]/div[2]/div/div/div/div/div[2]/div[1]/a
     wait until element is visible  id=applicant_name  timeout=8s
    ${file_name}=  Set Variable  ../tests/data/valid/details.csv   
    ${data}=  csv.Read file  ${file_name}
    ${line}=  Set Variable  ${data[${0}]}
    Log  ${line}
    ${name}=  Set Variable  ${line}[0]
    ${email}=  Set Variable  ${line}[1]
    ${message}=  Set Variable  ${line}[2]
    Input Text   id=applicant_name  ${name}
    Input Text   id=email  ${email}
    ${numbers}=   FakerLibrary.Numerify  0%% %%% %%%%
    log  ${numbers}
    Input Text   id=phone  ${numbers}
    Input Text   id=message  ${message}
    Click Button  id=wpjb_submit 
    Wait Until page contains  You need to upload at least one file.  timeout=8s