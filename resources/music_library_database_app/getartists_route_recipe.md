# {{ GET }} {{ /artists}} Route Design Recipe

_Copy this design recipe template to test-drive a Sinatra route._

## 1. Design the Route Signature

 Request:
GET /artists

# With body parameters:
none

# Expected response (200 OK)
Pixies, ABBA, Taylor Swift, Nina Simone

## 2. Design the Response
Pixies, ABBA, Taylor Swift, Nina Simone

## 3. Write Examples

_Replace these with your own design._

```
# Request:

GET /artists

# Expected response:

Response for 200 OK

Pixies, ABBA, Taylor Swift, Nina Simone
```


## 4. Encode as Tests Examples

```ruby
# EXAMPLE
# file: spec/integration/application_spec.rb

require "spec_helper"

describe Application do
  include Rack::Test::Methods

  let(:app) { Application.new }

context 'GET /artists' do
    it 'should return the list of artists' do
      response = get('/artists')

      expected_response = 'Pixies, ABBA, Taylor Swift, Nina Simone'
      expect(response.status).to eq(200)
      expect(response.body).to eq(expected_response)
    end
  end
end
```

## 5. Implement the Route

Write the route and web server code to implement the route behaviour.
