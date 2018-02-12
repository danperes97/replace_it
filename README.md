# ReplaceIt
  ReplaceIt it's a new gem that can replace strings from a file.

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
#Create a new file with the same content
replace = ReplaceDocument.new('temp_file.txt', 'myfile.txt')
replace.document_replace('mystring', 'mynewstring')
```

## Contributing

To make a contribuition with the gem.

`git pull origin master`
`git checkout -b feature_yourbranchname`
`git push`
`Create a Pull Request`

## License

The gem is available as open source under the terms of the [MIT License](http://opensource.org/licenses/MIT).
