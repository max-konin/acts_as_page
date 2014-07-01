Acts As Page
====================



## Installation

Add the following to your `Gemfile`:

```ruby
gem 'acts_as_page'
```

Run bundle install:

```bash
$ bundle install
```

## Usages

Add the following to your model and enjoy:

```ruby
include ActsAsPage
```

You can use field "name" to set or get name of page:

```ruby
page = YourMadel.new name: 'new_page'
page.name #=> new page
```

Use method 'seo' for get or set seo information of the page like a title, keywords or description 

```ruby
page = YourMadel.new name: 'new_page'
page.seo.title #=> new page
```

## Contributing

1. Fork it
2. Create your feature branch (`git checkout -b my-new-feature`)
3. Commit your changes (`git commit -am 'Added some feature'`)
4. Push to the branch (`git push origin my-new-feature`)
5. Create new Pull Request
