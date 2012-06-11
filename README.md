# JqueryDynamicFields

WIP: very alpha bro

## Compatibility

* >= Rails 3.1
* >= Ruby 1.9.2

## Installation

Add this line to your application's Gemfile:

    gem 'jquery_dynamic_fields'

And then execute:

    $ bundle

In your pipeline

    // in app/assets/javascripts/application.js
    //= require jquery_dynamic_fields

## How to use

```ruby
class TaskList < ActiveRecord::Base
  has_many :tasks
  accepts_nested_attributes_for :tasks
end

class Task < ActiveRecord::Base
  belongs_to :task_list
end

```

```erb
<%# app/views/task_list %>

<%= form_for @task_list do |f| %>
  <%= link_to_add_fields "Add a task", f, :tasks %>
  <%= f.submit "Save!" %>
<% end %>

<%# the partial name must match (relation singular)_fields so in this case "task"
    and be in the same directory as the template calling #link_to_add_fields %>

<%# app/views/task_list/_task_fields.html.erb %>
<fieldset>
  <%= f.text_field :label %>
  <%= link_to_delete_field f %>
</fieldset>
```

## Contributing

1. Fork it
2. Create your feature branch (`git checkout -b my-new-feature`)
3. Commit your changes (`git commit -am 'Added some feature'`)
4. Push to the branch (`git push origin my-new-feature`)
5. Create new Pull Request
