#!/bin/bash

check_password_strength() {
    local password=$1

    # Define criteria
    local length=${#password}
    local has_uppercase=$(echo "$password" | grep -q "[A-Z]" && echo "1" || echo "0")
    local has_lowercase=$(echo "$password" | grep -q "[a-z]" && echo "1" || echo "0")
    local has_digit=$(echo "$password" | grep -q "[0-9]" && echo "1" || echo "0")
    local has_special=$(echo "$password" | grep -q "[!@#$%^&*(),.?\":{}|<>]" && echo "1" || echo "0")

    # Check strength
    if [ "$length" -ge 8 ] && [ "$has_uppercase" -eq 1 ] && [ "$has_lowercase" -eq 1 ] \
       && [ "$has_digit" -eq 1 ] && [ "$has_special" -eq 1 ]; then
        echo "Strong password."
    elif [ "$length" -ge 6 ] && [ "$has_uppercase" -eq 1 ] && [ "$has_lowercase" -eq 1 ] && [ "$has_digit" -eq 1 ]; then
        echo "Moderate password. Consider adding special characters for more strength."
    else
        echo "Weak password. Use a mix of uppercase, lowercase, numbers, special characters, and a minimum length of 8."
    fi
}

# Prompt user for password input
read -s -p "Enter your password: " password
echo
check_password_strength "$password"
