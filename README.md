# What's PrettyEnum?

  A tiny gem that extends Rails enums to allow human-friendly labels.

  If you’re wondering why not just use a string column for storing enumerated values—the answer is, you can. However, doing so can slow down database queries. The better approach is to store enums as integers for optimal performance while still displaying human-readable values effortlessly with PrettyEnum.

## Getting Started

1. Install PrettyEnum or add to Gemfile

	```bash
	  $ gem install pretty_enum
    $ bundle install
	```

2. Add PrettyEnum to your class and define pretty_enum method

	```bash
	  class Base < ActiveRecord::Base
      extend PrettyEnum

      enum :status, invitation_pending: 0, accepted: 1, deactivated: 2
      pretty_enum :statuses
    end
	```
3. It will generate pretty_{enum_name} method

	```bash
	  Base.pretty_statuses
      => { invitation_pending: 'Invitation Pending', accepted: 'Accepted', deactivated: 'Deactivated' }
  ```

## License

The gem is available as open source under the terms of the [MIT License](https://opensource.org/licenses/MIT).
