function Test-PasswordStrength {
    param (
        [string]$password
    )

    $minLength = 8
    $maxLength = 16
    $hasUpperCase = $false
    $hasLowerCase = $false
    $hasNumber = $false
    $hasSpecialChar = $false

    # Check password length
    if ($password.Length -lt $minLength -or $password.Length -gt $maxLength) {
        Write-Host "Password must be between $minLength and $maxLength characters."
        return
    }

    # Check for uppercase, lowercase, number, and special characters
    foreach ($char in $password.ToCharArray()) {
        if ($char -match '[A-Z]') { $hasUpperCase = $true }
        if ($char -match '[a-z]') { $hasLowerCase = $true }
        if ($char -match '[0-9]') { $hasNumber = $true }
        if ($char -match '[^a-zA-Z0-9]') { $hasSpecialChar = $true }
    }

    # Output the results
    $strength = "Weak"
    if ($hasUpperCase -and $hasLowerCase -and $hasNumber -and $hasSpecialChar) {
        $strength = "Strong"
    } elseif (($hasUpperCase -or $hasLowerCase) -and $hasNumber -and $hasSpecialChar) {
        $strength = "Moderate"
    }

    Write-Host "Password strength: $strength"
}

# Example usage:
$password = Read-Host "Enter password to check"
Test-PasswordStrength -password $password
