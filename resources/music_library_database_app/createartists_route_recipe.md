# {{ GETPOST }} {{ /artists}} Route Design Recipe

_Copy this design recipe template to test-drive a Sinatra route._

## 1. Design the Route Signature

 Request:
POST /artists

# With body parameters:
name:
genre:

# Expected response (200 OK)
none

## 2. Design the Response


## 3. Write Examples

```
# Request:

POST /artists?name=Radiohead&genre=Alternative

# Expected response:

Response for 200 OK
none
```


## 4. Encode as Tests Examples

```ruby
# EXAMPLE
# file: spec/integration/application_spec.rb

require "spec_helper"

describe Application do
  include Rack::Test::Methods

  let(:app) { Application.new }

context 'POST /artists' do
    it 'should add the artist to the db' do
      response = post('/artists')

      expect(response.status).to eq(200)
      expect(response.body).to eq('')

      response = get('/artists')

      expect(response.status).to eq(200)
      expect(response.body).to include('Radiohead')
    end
  end
end
```

## 5. Implement the Route

Write the route and web server code to implement the route behaviour.
