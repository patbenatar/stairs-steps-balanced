# Stairs Balanced Plugin

[Stairs][stairs] plugin for setting up Balanced Payments.

## Installation

Install `stairs-steps-balanced` gem alongside `stairs`

## Usage

In your stairs setup script:

```ruby
setup :balanced
```

This will write the following ENV vars: `BALANCED_URI`, `BALANCED_KEY`

### Options

You can optionally specify the names for the ENV vars this step will write to:

* `marketplace_uri`: ENV var name for Balanced Marketplace URI
* `key`: ENV var name for Balanced API key

```ruby
setup :balanced, marketplace_uri: "BALANCED_MARKETPLACE_URI"
```

## Contributing

1. Fork it
2. Create your feature branch (`git checkout -b my-new-feature`)
3. Commit your changes (`git commit -am 'Add some feature'`)
4. Push to the branch (`git push origin my-new-feature`)
5. Create new Pull Request

[stairs]: http://github.com/patbenatar/stairs
