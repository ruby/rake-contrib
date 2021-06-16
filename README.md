# Rake::Contrib

Additional libraries for Rake.

This gem was extracted from Rake when v11.0 was released.

## Installation

Add this line to your application's Gemfile:

```ruby
gem 'rake-contrib'
```

And then execute:

    $ bundle

Or install it yourself as:

    $ gem install rake-contrib

## Usage

See also [rake-contrib API documentation at RubyDoc.info][rake-contrib-api]
for full details.

[rake-contrib-api]: http://www.rubydoc.info/gems/rake-contrib/

### SshPublisher

This gem comes with a simple SSH publishing class, to copy files to a remote
host.

In your Rakefile:

```ruby
require 'rake/contrib/sshpublisher'
```

This gives your Rake tasks access to these utility classes around the Unix
`scp` command:

- `SshDirPublisher` - A publisher to `scp` all files in local directory to
  given remote directory on SSH host.
- `SshFilePublisher` - A publisher to `scp` given files in local directory
  to given remote directory on SSH host.
- `SshFreshDirPublisher` - Like `SshDirPublisher`, but removes and replaces
  given directory.
- `CompositePublisher` - Manage several publishers as a single entity.

## Development

After checking out the repo, run `bin/setup` to install dependencies. Then, run `rake test` to run the tests. You can also run `bin/console` for an interactive prompt that will allow you to experiment.

To install this gem onto your local machine, run `bundle exec rake install`. To release a new version, update the version number in `version.rb`, and then run `bundle exec rake release`, which will create a git tag for the version, push git commits and tags, and push the `.gem` file to [rubygems.org](https://rubygems.org).

## Contributing

Bug reports and pull requests are welcome on GitHub at https://github.com/ruby/rake-contrib.

## License

The gem is available as open source under the terms of the [MIT License](http://opensource.org/licenses/MIT).
