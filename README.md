# Integration Test 

Integration test simulates user behaviour. We will use the Capybara gem for that and selenium-webdriver (it will try to use Firefox brower by default) 
but you can use webkit if you prefer. Later on I will demonstrate how to use headless testing where no browser will be actually running. 

If we want to test javascript we have to specify: 

	`it "user is created correctly", js: true do`

Capybara contains a set of methods that come handy when testing/simulating user in browser behaviour:

	`visit "/contacts/new"`  or `visit new_contact_path`	

in the first option we use the normal routes syntax, and a helper method in the second one. 
We can create custom helper methods in *spec_helper* file that will allow us to stop reapeting ourselves for. 
	
This is the normal structure for integration tests:

```
feature 'Contacts management', js:true do 
  describe "adding new" do
    scenario "navigating to from for adding user by url" do
      visit "/contacts/new"
        expect(page).should have_content "Adding Contact
       end
    end
end
```

where: 

	FEATURE = is what we are testing 
	DESCRIBE = description of action to test
	SCENARIO = instead of "it" and basically it is down to exact scenario

Don't forget to write negative test! It's important to check everything is working properly. 
For instance, we can't allow that a user gives a number as first name and code should handle this. 

Normally, tests run fast. In case we need some time to check the view of one test, an interesting method is *sleep()*. 
This will freeze the test view that we have specified during the time that we set in the sleep in seconds. 
This is good for debuging the test if we do not understand what is it doing and how.

For expectation tests we are going to use *rspec-expectations* or rspec-matcher as before. 
NOTICE: rspec expectations are now part of the rspec meta-gem so you shouldn't add this gem. 

## Database cleaner

It provides a clean database in each scenario. 
Everytime we run tests it will make sure that after the test finishes DB gets back to previous state.
Configuration for it lives in *spec_helper.rb* 

### More information: 
	
[capybara](https://github.com/jnicklas/capybara "Capybara")

[capybara-webkit](https://github.com/thoughtbot/capybara-webkit "capybara-webkit")

[rspec-spectations](https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers "rspec-expectations")

[database cleaner](https://github.com/bmabey/database_cleaner "database cleaner version")

