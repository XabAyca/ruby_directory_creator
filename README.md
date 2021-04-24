# Ruby Base Directory Creator
***
For create a new directory launch the ruby app named ruby_directory_creator.rd and add an ARGV like this  
```$ ruby ruby_directory_creator.rb my_new_directory```  
***
## The structure looks like this:
my_new_directory  
  |__ lib  
  |__ Spec  
  |      |__ spec_helper.rb  
  |.env  
  |Gemfile  
  |Gemfile.lock  
  |.gitignore (with .env informed)  
  |.rspec  
  |README.md  
***
### Gemfile
source "https://rubygems.org"  
ruby '2.7.1'  

'#### Basics Gem ####'  
gem 'pry'  
gem 'rubocop'  
gem 'rspec'  
gem 'dotenv'  

bundle is initialized  
***
### Git
Git is initialized  
***
### Rspec
Rspec is initialized  
***
### README
README is created  
