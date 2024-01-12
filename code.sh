#!/bin/bash

red=$(tput setaf 1)
green=$(tput setaf 2)
blue=$(tput setaf 4)
reset=$(tput sgr0)

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

echo -e "\n${green}Exiting...${reset}"
