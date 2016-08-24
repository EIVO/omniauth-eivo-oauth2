# OmniAuth Eivo OAuth2

[![Gem Version](https://badge.fury.io/rb/omniauth-eivo-oauth2.svg)](http://badge.fury.io/rb/omniauth-eivo-oauth2)

Strategy to authenticate Eivo in OmniAuth.

## Installation

OmniAuth Eivo OAuth2 is distributed as a gem, which is how it should be used in your app.

Include the gem in your Gemfile:

    gem 'omniauth-eivo-oauth2', '~> 1.0'

Integrate this strategy to your OmniAuth middleware.

```ruby
Rails.application.config.middleware.use OmniAuth::Builder do
	provider :eivo, ENV['EIVO_KEY'], ENV['EIVO_SECRET']
end
```

## Author

- [Jonathan Tribouharet](https://github.com/jonathantribouharet) ([@johntribouharet](https://twitter.com/johntribouharet))

## License

OmniAuth Eivo OAuth2 is released under the MIT license. See the LICENSE file for more info.
