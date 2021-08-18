# Mario's Market 

#### Mario's Market

#### By Kyle Kay-Perez

#### Shortcuts
- [Technologies Used](#technologies-used)
- [Description](#description)
- [Setup/Installation Requirements](#setup/installation-requirements)
- [License](#license)
- [Contact Information](#contact-information)

## Technologies Used

* [Markdown](https://www.markdownguide.org/)
* [VS studio](https://code.visualstudio.com/)
* [Bootstrap](https://getbootstrap.com/)
* [Ruby](https://www.ruby-lang.org/en/)
* [Postgresql](https://www.postgresql.org/)
* [Rails](https://rubyonrails.org/)
* [Ruby Gems](https://rubygems.org/)
* Bundler
* Faker
* SimpleCov
* Devise
* RSpec
* Pry

## Description

This is a website designed to be a rudimentary market.

## Setup/Installation Requirements

* Ruby is required, follow the download instructions here [Ruby](https://www.ruby-lang.org/en/)
* Install bundler in your terminal with "gem install bundler"
* Install postgres if not already installed and run the terminal command "postgres" to open a SQL server.
* Download database from github repository [here] (https://github.com/professional-pigeon/mario_market)
* Navigate to the top level of the directory and run "bundle install" in your terminal to install dependencies
* Run "rake db:create" and then "rake db:migrate" to create a database and migrate tables.
* Run command "rake db:seed" to seed sample data and create and admin user. Admin account info is in the seed file, will be removed when website is live.
* Run the site on your local machine using the terminal command "rails s" and navigate to localhost:3000 (or address provided when server starts)
* To run tests run the command "rspec" in the root directory of the terminal.

## License

MIT License

Copyright (c) Kyle Kay-Perez 2021

Permission is hereby granted, free of charge, to any person obtaining a copy of this software and associated documentation files (the "Software"), to deal in the Software without restriction, including without limitation the rights to use, copy, modify, merge, publish, distribute, sublicense, and/or sell copies of the Software, and to permit persons to whom the Software is furnished to do so, subject to the following conditions:

The above copyright notice and this permission notice shall be included in all copies or substantial portions of the Software.

THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY, FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM, OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE SOFTWARE.

## Contact Information

Kyle.KayPerez@gmail.com