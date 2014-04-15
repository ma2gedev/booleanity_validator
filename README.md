# BooleanityValidator

A boolean validator for Rails 4.

## Installation

Add this line to your application's Gemfile:

    gem 'booleanity_validator', git: 'git@github.com:ma2gedev/booleanity_validator.git'

And then execute:

    $ bundle

## Usage

```
class Accounts < ActiveRecord::Base
  validates :locked, booleanity: true
  ...
end
```

## Contributing

1. Fork it ( http://github.com/<my-github-username>/booleanity_validator/fork )
2. Create your feature branch (`git checkout -b my-new-feature`)
3. Commit your changes (`git commit -am 'Add some feature'`)
4. Push to the branch (`git push origin my-new-feature`)
5. Create new Pull Request
