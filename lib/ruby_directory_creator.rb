### Is ARGV correct ? ###
def argv_empty_or_not
  ARGV.empty? || ARGV.size>1 ? error_message() : create_directory()
end

### Error if ARGV incorrect ###
def error_message()
  puts "==>>> >> > please insert one word or underscore between each words < << <<<=="
end

### First step : create directory ###
def create_directory()
  Dir.mkdir(ARGV.join('_'))
  Dir.chdir(ARGV.join('_'))
  Dir.mkdir("lib")
  create_rspec_env()
end

### Second step : initialize rspec and create .env folder ###
def create_rspec_env()
  system("rspec --init")
  File.open(".env", "w")
  initialize_git_gitignore()
end

### Third step : initialize git, create .gitignore folder and add .env ###
def initialize_git_gitignore()
  system("git init")
  file=File.open(".gitignore", "w")
  file.puts(".env")
  file.close
  create_initialize_gemfile()
end

### Fourth step : create Gemfile folder, complete them and initialize bundle ### 
def create_initialize_gemfile()
  file=File.open("Gemfile", "w")
  file.puts('source "https://rubygems.org"')
  file.puts("ruby '2.7.1'")
  file.puts("")
  file.puts("#### Basics Gem ####")
  file.puts("gem 'pry'")
  file.puts("gem 'rubocop'")
  file.puts("gem 'rspec'")
  file.puts("gem 'dotenv'")
  file.close
  system("bundle install")
  create_app()
end

### Sixth step : create app.rb file ###
def create_app()
  file=File.open("app.rb", "w")
  file.puts("require 'bundler'")
  file.puts("Bundler.require")
  file.puts("")
  file.puts("require_relative 'lib/...'")
  file.close
  create_readme()
end

### Last step : create and complete README folder ###
def create_readme()
  file=File.open("README.md", "w")
  file.puts('#Ruby app')
  file.puts("***")
  file.puts("##README automatically generated")
  file.puts("In this repo you can found :")
  file.puts("* Directory lib'")
  file.puts("* Directory spec'")
  file.puts("* Gemfile'")
  file.puts('***')
  file.puts("##A list of Gems used within the project:")
  file.puts('gem rubocop')
  file.puts('gem pry')
  file.puts('gem dotenv')
  file.puts('gem rspec')
  file.close
end

argv_empty_or_not()