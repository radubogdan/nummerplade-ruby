# Nummerplade

Simple Ruby wrapper over Nummerplade API

Find more information on http://www.nummerpladeapi.dk

## Installation

```sh
gem install nummerplade-ruby
```

## Usage

```ruby
require 'nummerplade'

# Initialize a client
client = Nummerplade::ApiClient.new("API_KEY_HERE")

# Vehicle (param: registration number)
client.vehicle_by_registration "AA32000"

# Vehicle (param: vin)
client.vehicle_by_vin "ZFA19900001884628"

# DMR (param: vehicle id)
client.dmr "9000000000001463"

# Debt (param: vehicle id)
client.debt "9000000000001463"

# Inspections (param: vehicle id)
client.inspections "9000000000001463"
```

## Contributing

Bug reports and pull requests are welcome on GitHub at https://github.com/radubogdan/nummerplade-ruby.

## License

The gem is available as open source under the terms of the [MIT License](http://opensource.org/licenses/MIT).
