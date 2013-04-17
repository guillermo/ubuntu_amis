# UbuntuAmis

Return the list of the official ubuntu amis

# Usage

    require 'ubuntu/amis'
    UbuntuAmis.table # => Return an array

# Notes

This is no more than a json parser of the [oficial table](http://cloud-images.ubuntu.com/locator/ec2/releasesTable).

## Installation

Add this line to your application's Gemfile:

    gem 'ubuntu_amis'

And then execute:

    $ bundle

Or install it yourself as:

    $ gem install ubuntu_amis

## Compatibility

Seems like it is not working in ruby 1.8

## Contributing

1. Fork it
2. Create your feature branch (`git checkout -b my-new-feature`)
3. Commit your changes (`git commit -am 'Add some feature'`)
4. Push to the branch (`git push origin my-new-feature`)
5. Create new Pull Request
