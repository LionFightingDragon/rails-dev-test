![Goodylabs_logo](https://user-images.githubusercontent.com/1035770/151546790-59ffd0b3-3caa-4ecd-918b-cecfcfdfcccb.png)

# Welcome

👋 Hey there! If you got here, it means you've decided to accept our little test assignment. That's great! We're really happy to see you here. We hope you'll find this  easy and will 🚀 blaze through it in minutes 😀 If you do we'd love to welcome you to our team of true motherhackers.

Good Luck!

# Simple RoR test for candidates

This repository holds a pretty basic Rails 5 app. A candidate applying to goodylabs is asked to fork this repo and submit a PR once they're done with the assignment.

# Getting started

1. `bundle install`
2. `rake db:create`
3.  'rake db:migrate'
4. 'rake db:seed'
5.  'rspec'
6. `rails s`

# The goal

The goal of the exercise is to create a checkout system that meets the requirements listed below:

1. Products can be added to the Cart
2. Products can be removed from the Cart
3. A Cart can be checked out - a total price is calculated
4. A Customer’s Email, Address and Credit Card details are required to check out
5. After checking out, the Customer will have an Order that contains all the cart items
6. Products can be managed from ActiveAdmin (https://github.com/activeadmin/activeadmin) or RailsAdmin (https://github.com/sferik/rails_admin)
7. Products should have at least a name and a price
8. Products can be bought more than once
    
# Deliverables
- Create a database that can support the requirements listed above 
- Create pages to accommodate the required functionality
- Validation of intended functionality
- Brief summary of your approach, assumptions, caveats and notes (in a form of a README.md)
- Instructions on how to run the project
- Submission should be a GitHub repository
- RSpec tests 
 
 Note: 
- No attention will be paid to the look and feel of this task. Pages can be plain HTML.


----------

Visit http://localhost:3000/admin and log in as the default user:

Active Admin credentials:
User: admin@example.com
Password: password

Brief summary:
ruby 2.7.4p191
Rails 5.2.4.6
Active Admin is used, but the default customer, few products, and a default user for active_admin is created through rake db:seed
Basic functionality is tested using 'rspec', only unit tests
Rubocop lynter was used to parse the code styling
Always the default customer(crated through db:seed) is used for orders/carts, and the customer provides data like address, email, credit_card for the purpose order placement
For simplicity the default Customer is always the first (with the lowest id), that was added to the DB earliest, so adding new Customer will not work
Line_item is an abstraction for a product that was added to a Cart/Order
'reduce one' and 'add one' increase line_item quantity by 1 inside the Cart
'reduce one' cannot remove the last line_item - to do that use 'remove item' link/button
'Empty cart' deletes the Card from both: session and DB. If there is no cart a new one is created automatically.
ActiveAdmin integration is implemented to add products

1. `bundle install`
2. `rake db:create`
3.  'rake db:migrate'
4. 'rake db:seed'
5.  'rspec'
6. `rails s`
7. open: http://localhost:3000
8. to add products open: http://localhost:3000/admin/products