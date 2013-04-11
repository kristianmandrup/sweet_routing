# SweetRouting

Adds useful macros to Rails routing mapper

## Installation

Add this line to your application's Gemfile:

    gem 'sweet_routing'

And then execute:

    $ bundle

Or install it yourself as:

    $ gem install sweet_routing

## Config

The gem should auto-configure if `ActionDispatch` is defined when it loads.
Make sure you add this gem after `rails` in your gemfile.

To include manually...

```ruby
require 'sweet_routing'

class ActionDispatch::Routing::Mapper
  include SweetRouting::Macros 
end
```

## Usage

```ruby
MyApp::Application.routes.draw do

  match 'user/signin' => 'session#login', constraints: mime_match(:html)

  resources :books, only_for: :json # will add mime match constraint for json

  json_resource :users, :except => :edit # will add only_for:('json') constraint

  app_root 'application#index' # will ensure html constraint
end
```

## Contributing

1. Fork it
2. Create your feature branch (`git checkout -b my-new-feature`)
3. Commit your changes (`git commit -am 'Add some feature'`)
4. Push to the branch (`git push origin my-new-feature`)
5. Create new Pull Request
