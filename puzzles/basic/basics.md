## Running tests with verbose output:
```shell
cd ruby-dojo/puzzles/basic
# And then go the the folder you want

bundle exec rspec -fg . # Run every test in the basic directory
bundle exec rspec -fg arrays_spec.rb # Run by filename 
bundle exec rspec -fg arrays_spec.rb:30 # Run a specific line block 

```
