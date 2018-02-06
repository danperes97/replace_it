# ReplaceIt

Welcome to your new gem! In this directory, you'll find the files you need to be able to package up your Ruby library into a gem. Put your Ruby code in the file `lib/replace_it`. To experiment with that code, run `bin/console` for an interactive prompt.

TODO: Delete this and the text above, and describe your gem

## Installation

Add this line to your application's Gemfile:

```ruby
gem 'replace_it'
```

And then execute:

    $ bundle

Or install it yourself as:

    $ gem install replace_it

## Usage

### Replace txt files

To replace one string from a `.txt`:

```ruby
#Replace the original file be careful
document_replace!(file_name: 'yourfilename.txt', 'mystring', 'mynewstring')

#Create a new file with the same content
document_replace(file_name: 'yourfilename.txt', 'mystring', 'mynewstring')
```


## Development

After checking out the repo, run `bin/setup` to install dependencies. Then, run `rake spec` to run the tests. You can also run `bin/console` for an interactive prompt that will allow you to experiment.

To install this gem onto your local machine, run `bundle exec rake install`. To release a new version, update the version number in `version.rb`, and then run `bundle exec rake release`, which will create a git tag for the version, push git commits and tags, and push the `.gem` file to [rubygems.org](https://rubygems.org).

## Contributing

Bug reports and pull requests are welcome on GitHub at https://github.com/[USERNAME]/replace_it.


## License

The gem is available as open source under the terms of the [MIT License](http://opensource.org/licenses/MIT).
