# XarozedNameGenerator

Simple name generator for generating names in rogue-like games.

## Installation

Add this line to your application's Gemfile:

```ruby
gem 'xarozed_name_generator'
```

And then execute:

    $ bundle

Or install it yourself as:

    $ gem install xarozed_name_generator

## Usage

```ruby
    require 'xarozed_name_generator'
    generator = XarozedNameGenerator::NameGenerator.new(chain_length)
    puts generator.name
```

## Contributing

1. Fork it ( https://github.com/alexYer/xarozed-name-generator/fork )
2. Create your feature branch (`git checkout -b my-new-feature`)
3. Commit your changes (`git commit -am 'Add some feature'`)
4. Push to the branch (`git push origin my-new-feature`)
5. Create a new Pull Request
