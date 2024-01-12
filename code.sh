#!/bin/bash

red=$(tput setaf 1)
green=$(tput setaf 2)
blue=$(tput setaf 4)
reset=$(tput sgr0)

animate_spinner() {
    local spinner="⠋⠙⠹⠸⠼⠴⠦⠧⠇⠏"
    local i

    for i in $(seq 1 20); do
        echo -ne "\r${blue}[${spinner:i++%${#spinner}:1}] Validating key...${reset} "
        sleep 0.1
    done
}

clear
echo "${red}
                   ##                   
                   ###                  
               ###########              
             ###############            
            ################%           
           ###########%#####            
          %######  ###                  
          ######## ###                  
           ############%                
            ###############             
              ###############           
                  %###########          
                   ### #######%         
                   ### #######%         
           ######% ###%#######          
          ####################          
          ##################            
            %#############              
                   ###                  
                   ###                  
${reset}"

read -p "${green}🔑 Enter the secret key: ${reset}" key

echo -n "${blue}Validating key "
animate_spinner

echo -e "\n${green}Exiting...${reset}"
