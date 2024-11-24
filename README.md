# password-strength-checker
CODTECH IT SOLUTIONS CYBER ECURITY AND ETHICAL  HACKING  INTERNSHIP TASK 1.

Name:Stalin S

Company:CODTECH IT SOLUTIONS

ID:CT08DS7156

Domain:CYBER ECURITY AND ETHICAL HACKING

Duration:AUG TO SEP 2024




### Overview:






This project is an advanced password strength checker implemented in Python, featuring a graphical user interface (GUI) built with tkinter. The tool is designed to help users create strong, secure passwords by evaluating various factors such as length, complexity, and uniqueness. It provides instant feedback on the strength of the password and offers suggestions for improvement.

### Features:


Length Requirement: Ensures the password is at least 12 characters long to provide a baseline level of security.
Character Diversity: The password must include at least one uppercase letter, one lowercase letter, one digit, and one special character (e.g., !, @, #, $).
Common Password Check: The password is checked against a list of common, easily guessable passwords (e.g., "123456", "password", "qwerty").
Repeating Characters: Prevents the use of three or more consecutive repeating characters (like "aaa" or "111"), which can weaken the password.
Sequential Characters: Avoids sequences such as "1234" or "abcd", which are easy to guess and therefore insecure.
Uniqueness Check: Evaluates the diversity of characters used in the password, discouraging passwords with too many repeated characters.
#### How It Works
The password strength checker evaluates a password against multiple criteria:

### Length:

The password must be at least 12 characters long.
Uppercase and Lowercase Letters: The password should include both uppercase and lowercase letters to increase complexity.
### Digits:

Including at least one digit makes the password more secure.
Special Characters:

At least one special character (e.g., !, @, #) is required to further increase the password's complexity.
Common Passwords:

The tool checks the password against a list of commonly used passwords to prevent easy-to-guess choices.
Repeating Characters:

The password should not have three or more consecutive repeating characters.
Sequential Characters: 

The password should avoid sequential characters like "1234" or "abcd".
Uniqueness: 

The password should have a diverse set of characters to avoid predictability.


The tool categorizes the password's strength as Weak, Moderate, or Strong based on how many criteria are met. If the password is found to be weak or moderate, the tool provides specific suggestions for improvement.

## Graphical User Interface (GUI)


The password checker features a simple and intuitive GUI created with tkinter. Users can enter a password into a text field, and upon clicking the "Check Password" button, the tool evaluates the password and displays the strength along with any necessary feedback.

### GUI Features:

##### Password Input: 
Users can input their password in a secure text field.
Password Strength Display: The strength of the password (Weak, Moderate, or Strong) is displayed.
##### Feedback Area: 

``` Detailed feedback and suggestions for improving the password are shown in a text area.
```

## Installation and Usage


### Requirements


``` bash

Python 3.x
tkinter (included with standard Python distribution)
re (included with standard Python distribution) 

```


#### How to Run


#### Clone the Repository:

``` bash
cd password-strength-checker

```
#### Run the Python Script:


#### Enter a Password:

``` A window will appear where you can enter a password and check its strength.
The tool will provide feedback and suggestions for improvement if necessary.

```
### Example

``` Weak Password Example

Input: password123

Feedback:

"Password should include at least one uppercase letter."


"Password should include at least one special character (e.g., !, @, #, $)."


"Password is too common and easily guessable."

```
### Strong Password Example

```
Input: A1#b2$C3%d4!


##### Feedback:


"Your password is strong!"

```

## Contributing


Contributions to this project are welcome! Feel free to open an issue or submit a pull request with improvements or new features.

## OUTPUT VIDEO:

https://github.com/user-attachments/assets/68f9d3b6-528f-4e5a-8186-e79a504fc9f1


 ## 💰 You can help me by Donating
  [![BuyMeACoffee](https://img.shields.io/badge/Buy%20Me%20a%20Coffee-ffdd00?style=for-the-badge&logo=buy-me-a-coffee&logoColor=black)](https://buymeacoffee.com/stali.n) [![PayPal](https://img.shields.io/badge/PayPal-00457C?style=for-the-badge&logo=paypal&logoColor=white)](https://paypal.me/stalinStanlyjohn) 

  



