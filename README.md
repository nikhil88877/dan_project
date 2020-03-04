
## DAN Whiskey Grade

  Online website where user's can add their favourite whiskeys they have enjoyed in the past and grade them on the 
  basis of taste, color and smokiness. Also, they will be able search the whiskey on the same parameters. 
        
##  Installation
* Clone project from GitHub : I have made the repository public. You should be able to clone in your system.

        git clone https://github.com/nikhil88877/dan_project.git
        cd dan_project
        
* Ruby version : Install latest version of Ruby(2.6.3)

        rvm install ruby-2.6.3

    
* System dependencies: Install all the gems in the project

        bundle install

* Configuration : Make sure you have mysql server installed. Modify database.yml file with your mysql credentials. 

* Database creation

        rake db:create

* Database initialization

        rake db:migrate
        rake db:seed

* How to run the test suite

        rails test
        rails test:system
        
        
* How to host on localmachine : Once project is installed and mysql database are creates and tables are migrated, 
you can start the server using

        rails s
        
* Go to to your favourite browser and run 

        localhost:3000
        localhost:3000/whiskeys
        
* Key features or points  taken into consideration are mentioned below:
 
        1. Project is build using rails 6.0.2 and ruby 2.6.3
        
        2. Project does not use webpack and turbolink gems introduced in rails 6 because it 
           was adding huge load on the project for not much additional benefit. So, removed the gem.
           
        3. Validates on title uniqueness and user can grade whiskey on its taste, 
           color, smokiness ranges between 1 to 5
         
        4. Uses Autocomplete to fill Title in the search form from the available titles.
        
        5. To avoid mailicious user to compromise the layout or santity of the website, it always
           uses CGI.escape_html to show title or description
           
        6. Defined javascript method to handle data-confirm for 'Destroy' button_to method.
        
        7. Added Pagination for index page
        
        8. Used Minitest which is deafult test library in rails instead of RSpec. 
           It's fast, clean, and lets you choose between a pure Ruby test syntax and a an Rspec-style DSL 
            
