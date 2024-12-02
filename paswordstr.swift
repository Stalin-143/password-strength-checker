import Foundation

enum PasswordStrength: String {
    case weak = "Weak"
    case moderate = "Moderate"
    case strong = "Strong"
}

func checkPasswordStrength(password: String) -> (strength: PasswordStrength, feedback: String) {
    // Minimum password requirements
    let minLength = 8
    var feedback = [String]()
    
    // Criteria: length, uppercase, lowercase, digit, special character
    let hasUppercase = password.range(of: "[A-Z]", options: .regularExpression) != nil
    let hasLowercase = password.range(of: "[a-z]", options: .regularExpression) != nil
    let hasDigit = password.range(of: "[0-9]", options: .regularExpression) != nil
    let hasSpecialChar = password.range(of: "[^A-Za-z0-9]", options: .regularExpression) != nil

    // Check password length and other conditions
    if password.count < minLength {
        feedback.append("Password must be at least \(minLength) characters long.")
    }
    if !hasUppercase {
        feedback.append("Include at least one uppercase letter.")
    }
    if !hasLowercase {
        feedback.append("Include at least one lowercase letter.")
    }
    if !hasDigit {
        feedback.append("Include at least one number.")
    }
    if !hasSpecialChar {
        feedback.append("Include at least one special character.")
    }

    // Determine strength
    if password.count >= minLength && hasUppercase && hasLowercase && hasDigit && hasSpecialChar {
        return (.strong, "Your password is strong. It meets all the required criteria.")
    } else if password.count >= minLength {
        return (.moderate, "Your password is moderate. \(feedback.joined(separator: " "))")
    } else {
        return (.weak, "Your password is weak. \(feedback.joined(separator: " "))")
    }
}

// Function to handle user input
func getUserPasswordInput() -> String {
    print("Please enter your password:")
    if let userInput = readLine() {
        return userInput
    } else {
        return ""
    }
}

// Main function to check multiple users
func checkMultipleUsersPasswordStrength() {
    print("Welcome to the Password Strength Checker!")
    var continueChecking = true
    
    while continueChecking {
        let password = getUserPasswordInput()
        
        if password.isEmpty {
            print("Invalid input. Please try again.")
        } else {
            let result = checkPasswordStrength(password: password)
            print("Password Strength: \(result.strength.rawValue)")
            print("Feedback: \(result.feedback)")
        }
        
        print("\nWould you like to check another password? (yes/no)")
        if let response = readLine(), response.lowercased() != "yes" {
            continueChecking = false
        }
    }
    
    print("Thank you for using the Password Strength Checker!")
}

// Start the password strength check for multiple users
checkMultipleUsersPasswordStrength()
