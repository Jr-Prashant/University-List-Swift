# University List Data

https://github.com/Jr-Prashant/University-List-Swift/assets/151605109/4d14179d-f6bd-4e97-91a5-ef9a0e2004d1

1. Main Screen
<img width="319" alt="Screenshot 2023-11-22 at 5 08 57 PM" src="https://github.com/Jr-Prashant/University-List-Swift/assets/151605109/4a2d7e36-e9b3-4fd9-8484-c28da83a5dfa">
<img width="319" alt="Screenshot 2023-11-22 at 5 08 57 PM" src="https://github.com/Jr-Prashant/University-List-Swift/assets/151605109/fff006ac-9ac2-4d4a-aed2-e81fe62bb2c2">

2. Search the University Name
<img width="319" alt="Screenshot 2023-11-22 at 5 08 57 PM" src="https://github.com/Jr-Prashant/University-List-Swift/assets/151605109/fc4e44d9-8de1-4818-b66c-5d21f6f2b6fc">

3. Details of University
<img width="319" alt="Screenshot 2023-11-22 at 5 08 57 PM" src="https://github.com/Jr-Prashant/University-List-Swift/assets/151605109/98ea5a6f-2525-483e-899b-fe80df79ec87">

4. Website of University
<img width="319" alt="Screenshot 2023-11-22 at 5 08 57 PM" src="https://github.com/Jr-Prashant/University-List-Swift/assets/151605109/eadd819d-ee80-49e0-b1fa-3bf3d950016d">

## Overview
<p> University List App is an iOS application written in Swift that allows users to explore a list of universities. The app leverages Alamofire for API requests, follows the MVVM architecture, and incorporates features such as a search functionality, university details display, and animated text. </p>

## Key Features
1. **University List:** View a list of universities on the main screen.
2. **Search:** Utilize the search bar to find specific universities based on their names.
3. **University Details:** Click on a university to view detailed information such as name, country, alpha two code, and domains.
4. **Website Access:** Navigate to a university's official website by clicking on the provided button.
5. **Animation:** Experience animated text in the university details screen for an engaging user interface.

## Dependencies
**Alamofire:** The app uses Alamofire to make API requests efficiently.

## Architecture
The app follows the MVVM (Model-View-ViewModel) architecture, separating concerns and enhancing maintainability.
<p>&#9500; Model</p>
<p>&#9492;&ensp;&ensp;&ensp;&ensp;University.swift</p>
<p>&#9500; View</p>
<p>&#9492;&ensp;&ensp;&ensp;&ensp;Main.storyboard</p>
<p>&#9500; ViewModel</p>
<p>&#9492;&ensp;&ensp;&ensp;&ensp;ViewControllerModelVIew.swift</p>
<p>&#9492;&ensp;&ensp;&ensp;&ensp;DataShowViewModel.swift</p>
<p>&#9492;&ensp;&ensp;&ensp;&ensp;WebsiteViewModel.swift</p>
<p>&#9500; Controllers</p>
<p>&#9492;&ensp;&ensp;&ensp;&ensp;ViewController.swift</p>
<p>&#9492;&ensp;&ensp;&ensp;&ensp;DetailsViewController.swift</p>
<p>&#9492;&ensp;&ensp;&ensp;&ensp;WebsiteViewController.swift</p>
<p>&#9500; Table View Cell</p>
<p>&#9492;&ensp;&ensp;&ensp;&ensp;TableViewCell.swift</p>
<p>&#9500; Web Services</p>
<p>&#9492;&ensp;&ensp;&ensp;&ensp;NetworkOperation.swift</p>
<p>&#9500; Common</p>
<p>&#9492;&ensp;&ensp;&ensp;&ensp;AppDelegate.swift</p>
<p>&#9492;&ensp;&ensp;&ensp;&ensp;SceneDelegate.swift</p>

## Installation
Getting started with the Objective-C Business App is quick and easy:
1. Clone the Repository: git clone https://github.com/Jr-Prashant/University-List-Swift.git
2. Open the project in Xcode and build/run the app.

## Usage
1. **View University List:**
* Upon launching the app, the main screen presents a comprehensive list of universities.
2. **Search for Universities:**
* Utilize the search bar located at the top to search for specific universities by name.
* The search results will dynamically update as you type.
3. **Explore University Details:**
* Click on a university name in the list to access detailed information.
* The detailed view includes the university's name, country, alpha two code, and domains.
4. **Visit University Websites:**
* Navigate to the official website of a university by clicking on the "Site" button in the details screen.
5. **Experience Animated Text:**
* Enjoy an engaging user interface with animated text in the university details screen.
6. **Search Again:**
* Clear the search bar by clicking on the "Cancel" button to return to the full university list.
7. Enhance the App:
* Explore the Xcode project to understand the MVVM architecture, Alamofire integration, and other features.
* Make modifications, add new functionalities, or customize the app according to your needs.

## Acknowledgments
* The project follows the MVVM architecture.
* Learnings from Swift, Alamofire and UIKit documentation.





