
# Project : *COVID-19 Tracker App* 


**Covid-19 Tracker App** is an android app that 
* Displays global as well nation-wise statistics of SARS-CoV-2 virus.
* Offers features to identify symptoms and suggest preventive measures.
* Users can also donate to various trusted organizations 
* Users can make an instant SOS call in case of an emergency.
* It uses Firebase auth for user authentication.

Time spent: **15** hours spent in total

## Video Walkthrough

Here's a walkthrough of implemented user stories:

<img src='https://github.com/Kidrah31/Covid19Tracker/blob/main/AppWalkthrough.gif' title='Video Walkthrough' width='' alt='Video Walkthrough' />

GIF created with [LiceCap](http://www.cockos.com/licecap/).

## Requirements

Install Flutter for Windows/Mac OS and Linux

```sh
https://flutter.dev/docs/get-started/install
```

Download the VS Code for Mac/Windows/Linux

```sh
https://code.visualstudio.com/download
```
Install the Dart Extension for VS Code

```sh
https://marketplace.visualstudio.com/items?itemName=Dart-Code.dart-code
```
Install the Flutter Extension for VS Code

```sh
https://marketplace.visualstudio.com/items?itemName=Dart-Code.flutter
```

## Usage example

A few motivating and useful examples of how your product can be used. Spice this up with code blocks and potentially more screenshots.

_For more examples and usage, please refer to the [Wiki][wiki]._

## Project Build
* Open the project folder on VS Code
* Select the desired emulator  or an Andrid device to run the project
* Open Termianl
* Type in 

```sh
flutter run
```

## User Stories

The following functionality is implemented:

* [x] User can **create an account using email and password and log in upon email verification**
* [x] User can **use the forget password feature to get a password-reset link** 
* [x] Upon successful login user can **See the World-wide statistics of the SARS-Cov-2 virus** on the home-screen which include confirmed,recovered, active cases and no. of deaths
* [x]  User can **use the bottom navigation bar** to navigate between various menu options like World, Country, Donate and Symptom
* [x]  Upon selecting the *Country* option on the bottom navigation bar ,user can **see the Country-wise statistics of the SARS-Cov-2 including a graphical representation** 
  * [x]  The country screen also features a **search bar** where the user can input **country-name** or choose from a **drop-down list** to view the statistics of that respective country.
* [X]  Upon selecting the *Donate* option on the bottom navigation bar ,user can **see a list of Organizations that take donations** to help those suffering from the effects of the pandemic.
  * [X]  On the *Donate* screen, Users can **tap** on the **individual listed organization** and **navigate to the website** of the respective organization
* [x]  Upon selecting the *Syptom* option on the bottom navigation bar ,user can **see a list of the symptoms of the SARS-Cov-2 stated by WHO** 
  * [x]  Users can also see a list of suggested preventive measures
* [x] Users can use the floating **SOS CALL** button anytime while interacting with the app to ** to initiate a call to 911**
* [X] Users can use the **Logout ** button on the App's title bar to Log out of the app and navigate to the login screen for a new login session.



## Notes



