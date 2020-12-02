# Student DB

` Please find update in User stories `
A simple application serving as a database of students using Rails & Bootstrap. (In WIP stage).

## Setup

 Setup ruby & bundler if you haven't already. 
 
 After that run following from project directory

`bundle`

`rake db:create`

`rake db:setup`

## General guidelines

* Follow programming/rails best practices
* Follow ruby/rails style guidelines
* You are free to use necessary gems
* Write readable maintainable code
* Code should be optimised for performance

## User stories

* S1 - user creation from backend for now, only admin roles for now, more role may come
	
` [Narmatha] - Single Table Inheritance Used to maintain the roles i.e Admin,Agent,Teacher,etc.
			 - Please do rake db:seed`
* S2 - anyone can access a path '/register' and add a student detail by entering name, address, mobile and choose the institution student belongs to
	
`[Narmatha] - Authentication added and allowed '/register' to access by anyone.`
* S3 - admin user can signin and access all the parts of app
	`[Narmatha] - Role(Agent) maintained in session and allowed access.`
* S4 - student will belong to an institution and a country
	`[Narmatha] - new column added in students table. country_select gem used for the selection of Country in UI`
* S5 - admin can add institutions
	`[Narmatha] - Done.`
* S5 - insitution will belong to a country
	`[Narmatha] - new column added in institutions.`
* S6 - admin user can login to access the student db
	`[Narmatha] - Done`
* S7 - admin user can add institutions
	`[Narmatha] - Agent as new role created and having access to add institutions`
* S8 - admin user can add students
	`[Narmatha] - Agent as new role created and having access to add students`
* S9 - admin user will have a dashbord listing all students at root path
	`[Narmatha] - root to '/students#index' done.`
* S10 - admin user can approve a registered student (S2) or reject it.
    `[Narmatha] - seperate links are provided for both approve/reject in students list page `
* admin user should be able to search students from dashboard with:
    - S11 - student name text box
    - S12 - institution name text box
    - S13 - country of student from drop down
    `[Narmatha] - Datatable Added & local filter enabled for all columns`
* S14 - Send an email to student asynchronously (Delayed Job, Resque etc) upon approval or reject.
	`[Narmatha] - I have integrated Email setup. But do not have much exposure in delayed job. I googled and can use sidekiq for this purpose.`
* S15 - cleanup application UI designs using Bootstrap. Change/Add UX wherever applicable (use your creativity)
	`[Narmatha] - I have used MD Bootrstrap Theme here. `