import string
import re
import tkinter as tk
from tkinter import messagebox

# List of common passwords to check against
COMMON_PASSWORDS = [
    "123456", "password", "123456789", "12345678", "12345", "1234567", "1234567890", "qwerty", "abc123",
    "password1", "111111", "123123", "admin", "letmein", "welcome", "iloveyou", "1234", "1q2w3e4r"
]

def check_password_strength(password):
    # Initialize feedback list
    feedback = []

    # Check length
    if len(password) < 12:
        feedback.append("Password must be at least 12 characters long.")
    
    # Check for uppercase, lowercase, digit, and special character
    uppercase_criteria = any(char.isupper() for char in password)
    lowercase_criteria = any(char.islower() for char in password)
    digit_criteria = any(char.isdigit() for char in password)
    special_char_criteria = any(char in string.punctuation for char in password)

    if not uppercase_criteria:
        feedback.append("Password should include at least one uppercase letter.")
    
    if not lowercase_criteria:
        feedback.append("Password should include at least one lowercase letter.")
    
    if not digit_criteria:
        feedback.append("Password should include at least one digit.")
    
    if not special_char_criteria:
        feedback.append("Password should include at least one special character (e.g., !, @, #, $).")
    
    # Check for common passwords
    if password.lower() in COMMON_PASSWORDS:
        feedback.append("Password is too common and easily guessable.")

    # Check for consecutive repeating characters
    if re.search(r"(.)\1{2,}", password):
        feedback.append("Password should not have three or more consecutive repeating characters.")
    
    # Check for sequences like "12345" or "abcdef"
    if re.search(r"(012|123|234|345|456|567|678|789|890|abc|bcd|cde|def|efg|fgh|ghi|hij|ijk|jkl|klm|lmn|mno|nop|opq|pqr|qrs|rst|stu|tuv|uvw|vwx|wxy|xyz)", password.lower()):
        feedback.append("Password should not contain sequential letters or numbers.")

    # Check uniqueness (diversity of characters used)
    unique_chars = len(set(password))
    if unique_chars < len(password) // 2:
        feedback.append("Password should contain a more diverse set of characters.")

    # Determine overall strength
    strength = "Strong"
    if len(feedback) > 3:
        strength = "Weak"
    elif len(feedback) > 0:
        strength = "Moderate"

    return strength, feedback

# GUI Application
def check_password():
    password = entry.get()
    strength, feedback = check_password_strength(password)
    
    result_label.config(text=f"Password Strength: {strength}")
    feedback_text.delete(1.0, tk.END)
    
    if feedback:
        feedback_text.insert(tk.END, "Suggestions for improvement:\n")
        for suggestion in feedback:
            feedback_text.insert(tk.END, f"- {suggestion}\n")
    else:
        feedback_text.insert(tk.END, "Your password is strong!")

# Setting up the GUI
root = tk.Tk()
root.title("Password Strength Checker")

frame = tk.Frame(root)
frame.pack(padx=10, pady=10)

label = tk.Label(frame, text="Enter a password:")
label.grid(row=0, column=0, pady=(0, 10))

entry = tk.Entry(frame, show="*", width=30)
entry.grid(row=0, column=1, pady=(0, 10))

check_button = tk.Button(frame, text="Check Password", command=check_password)
check_button.grid(row=1, column=0, columnspan=2, pady=(10, 10))

result_label = tk.Label(frame, text="")
result_label.grid(row=2, column=0, columnspan=2, pady=(10, 10))

feedback_text = tk.Text(frame, height=10, width=50)
feedback_text.grid(row=3, column=0, columnspan=2, pady=(10, 10))

root.mainloop()
