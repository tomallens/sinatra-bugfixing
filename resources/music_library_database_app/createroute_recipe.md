# {{ POST }} {{ /albums}} Route Design Recipe

_Copy this design recipe template to test-drive a Sinatra route._

## 1. Design the Route Signature

 Request:
POST /albums

# With body parameters:
      title: 'OK Computer',
      release_year: '1997', 
      artist_id: '1'

# Expected response (200 OK)
none

## 2. Design the Response

## 3. Write Examples

_Replace these with your own design._

```
# Request:

POST /albums?title=OK Computer&release_year=1997&artist_id=1

# Expected response:
n/a
Response for 200 OK
```


## 4. Encode as Tests Examples

```ruby
# EXAMPLE
# file: spec/integration/application_spec.rb

require "spec_helper"

describe Application do
  include Rack::Test::Methods

  let(:app) { Application.new }

context 'POST/albums' do
    it 'should create a new album' do
      response = post(
        '/albums',
        title: 'OK Computer',
        release_year: '1997', 
        artist_id: '1'
        )

      expect(response.status).to eq(200)
      expect(response.body).to eq('')
    end
  end
end
```

## 5. Implement the Route

Write the route and web server code to implement the route behaviour.
