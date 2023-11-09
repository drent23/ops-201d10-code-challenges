#!/bin/bash
# install whois
sudo apt-get install whois
# ask user for domain
read -p "Please enter a domain you would like to visit, such as google.com: " user_input
# name the txt file to whatever domain user enters
domain_info="$user_input"_info
# get domain info
get_domain_info() {
    domain="$1"
    echo "Whois for $domain: "
    whois "$domain" > "$domain_info.txt"
    echo "Dig for $domain: "
    dig "domain" >> "$domain_info.txt"
    echo "Host for $domain: "
    host "$domain" >> "$domain_info.txt"
    echo "NSLookup for $domain: "
    nslookup "$domain" >> "$domain_info.txt"
    echo "The domain info has been saved to $domain_info.txt"
}
# call the function
get_domain_info "$user_input"
# open txt file
gedit "$domain_info.txt"

# alternate method
# echo "Enter a domain name: "
# read domain
# get_domain_info() {
    # whois domain
    # dig domain
    # host domain
    # nslookup domain
# }
# > = overwriting file, '>>' = appending at bottom/end
# get_domain_info > domain_info.txt
# echo "This is appended to the file" >> domain_info.txt