# TailwindForm

Welcome to your new gem! In this directory, you'll find the files you need to be able to package up your Ruby library into a gem. Put your Ruby code in the file `lib/tailwind_form`. To experiment with that code, run `bin/console` for an interactive prompt.

TODO: Delete this and the text above, and describe your gem

## Installation

Add this line to your application's Gemfile:

```ruby
gem 'tailwind_form'
```

And then execute:

    $ bundle install

Or install it yourself as:

    $ gem install tailwind_form

Our gem depends on having preset form classes set in your custom scss directory.
A sample implementation is as follows:

```scss
.form__group {
  @apply my-2;
}

.form__label {
  @apply block text-sm font-medium text-gray-700;
}

.form__inputGroup {
  @apply mt-1 rounded-md shadow-sm;
}

.form__input {
  @apply form-input block w-full;

  @screen sm {
    @apply text-sm leading-tight;
  }
}
```

## Usage

Here is an example of the form:

```erb
<%= tailwind_form_with model: Lead.new, class: "space-y-6" do |f| %>
  <%= f.form_group :name %>
  <%= f.form_group :email %>
<% end %>
```

Which generates the following form:

```html
<form class="space-y-6" action="/leads" accept-charset="UTF-8" data-remote="true" method="post">
  <input type="hidden" name="authenticity_token" value="S3wp;" />
  <div class="form__group">
    <label class="form__label" for="lead_name">Name</label>
    <div class="form__inputGroup">
      <input class="form__input" type="text" name="lead[name]" id="lead_name" />
    </div>
  </div>
  <div class="form__group">
    <label class="form__label" for="lead_email">Email</label>
    <div class="form__inputGroup">
      <input class="form__input" type="text" name="lead[email]" id="lead_email" />
    </div>
  </div>
</form>
```

## Development

After checking out the repo, run `bin/setup` to install dependencies. Then, run `rake spec` to run the tests. You can also run `bin/console` for an interactive prompt that will allow you to experiment.

To install this gem onto your local machine, run `bundle exec rake install`. To release a new version, update the version number in `version.rb`, and then run `bundle exec rake release`, which will create a git tag for the version, push git commits and tags, and push the `.gem` file to [rubygems.org](https://rubygems.org).

## Contributing

Bug reports and pull requests are welcome on GitHub at https://github.com/[USERNAME]/tailwind_form. This project is intended to be a safe, welcoming space for collaboration, and contributors are expected to adhere to the [code of conduct](https://github.com/[USERNAME]/tailwind_form/blob/master/CODE_OF_CONDUCT.md).


## License

The gem is available as open source under the terms of the [MIT License](https://opensource.org/licenses/MIT).

## Code of Conduct

Everyone interacting in the TailwindForm project's codebases, issue trackers, chat rooms and mailing lists is expected to follow the [code of conduct](https://github.com/[USERNAME]/tailwind_form/blob/master/CODE_OF_CONDUCT.md).
