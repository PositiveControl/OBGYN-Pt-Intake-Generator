## Tiare's Patient Intake Generator

A quick and dirty web form for OB/GYNs to quickly input and generate standard patient admit info (template used by UNLV UMC resident OB/GYN physicians).
It's still very rough and not terribly pretty.  A work in (slow) progress.  Feel free to fork, hack, and submit a pull request.

=======================

### What it does:

* Prompts user to complete a form of pertinent patient data (dropdowns and blank text / number fields.
* Uses user input to format proper results.
* Allows for editing after results are displayed
* Allows user to send text message of results through Google Voice.
* Or copy and paste results form textarea.

### Platform:

* Optimized for mobile devices.
* Looks okay on desktop browsers.

### Gems:

* gem 'sinatra', '~> 1.4.4'
* gem 'capybara', '~> 2.2.1'
* gem 'rspec', '~> 2.14.1'
* gem 'rerun', '~> 0.9.0'

### Future Commits/Functionality:

* Break up Patients class into many smaller classes
* Partial views
* Add PostgreSQL db to store submitted data
* Create dashboard to select and view specific data and run reports
* Add functionality to allow users to send texts to specified (and stored) numbers
* Allow users to send text message to multiple phone numbers
* Add user accounts

Made for Dr. Tiare Evans, MD and team.

Live @ http://tiare-staging.herokuapp.com/

=======================


