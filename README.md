<p align="right">
  <a href="https://rubygems.org/gems/pretty_enum"><img align="right" src="https://github.com/user-attachments/assets/6ae644ad-7302-4a66-bc3c-61bd597a76d5" width="30" height="30" /></a>
</p>
</br>

## What's PrettyEnum?

  A tiny gem that extends Rails enums to allow human-friendly labels.

  If you’re wondering why not just use a string column for storing enumerated values—the answer is, you can.
  However, doing so can slow down database queries.
  The better approach is to store enums as integers for optimal performance while still displaying human-readable values effortlessly with **PrettyEnum**.

## Getting Started

1. Install gem

	```bash
	  gem 'pretty_enum'

      bundle install
	```

 2. Add **PrettyEnum** to your class and define **pretty_enum** method

	```ruby
	class Base < ActiveRecord::Base
      extend PrettyEnum

      enum :status, invitation_pending: 0, accepted: 1, deactivated: 2
      pretty_enum :statuses
    end
	```

3. It supported Hash and Array syntax

	```ruby
    enum :status, invitation_pending: 0, accepted: 1, deactivated: 2
    enum :status, [ :invitation_pending, :accepted, :deactivated ]
	```

4. Use generated **pretty_{enum_name}** method

	```ruby
	  Base.pretty_statuses
      => { invitation_pending: 'Invitation Pending',
           accepted:           'Accepted',
           deactivated:        'Deactivated'
         }
