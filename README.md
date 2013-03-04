# Burocracias

Facilidades para lidar com as burocracias de nosso Brasil.

## Installation

Add this line to your application's Gemfile:

    gem 'burocracias'

And then execute:

    $ bundle

Or install it yourself as:

    $ gem install burocracias

## Usage

### Formatação
````ruby
"12345678909".as_cpf # => "123.456.789-09"
"12345678000195".as_cnpj # => "12.345.678-0001/95"
"20071004".as_cep # => "20.071-004"
"2122223333".as_phone_number # => "(21) 2222-3333"
"11999888777".as_phone_number # => "(11) 999-888-777"
````

## Contributing

1. Fork it
2. Create your feature branch (`git checkout -b my-new-feature`)
3. Commit your changes (`git commit -am 'Add some feature'`)
4. Push to the branch (`git push origin my-new-feature`)
5. Create new Pull Request
