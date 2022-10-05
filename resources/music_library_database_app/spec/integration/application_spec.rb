require "spec_helper"
require "rack/test"
require_relative '../../app'

describe Application do
  # This is so we can use rack-test helper methods.
  include Rack::Test::Methods

  # We need to declare the `app` value by instantiating the Application
  # class so our tests work.
  let(:app) { Application.new }

  context 'GET /albums/:id' do
    it 'should return info about album 2' do
      response = get('/albums/2')

      expect(response.status).to eq(200)
      expect(response.body).to include('<h1>Surfer Rosa</h1>')
      expect(response.body).to include('1988')
    end
  end

  context 'GET /albums' do
    it 'should return the list of albums' do
      response = get('/albums')

      expect(response.status).to eq(200)
      expect(response.body).to include('Title: Surfer Rosa')
      expect(response.body).to include('Release year: 1988')
    end
  end

  context 'POST/albums' do
    xit 'should create a new album' do
      response = post(
        '/albums',
        title: 'OK Computer',
        release_year: '1997', 
        artist_id: '1'
        )

      expect(response.status).to eq(200)
      expect(response.body).to eq('')

      response = get('/albums')

      expect(response.body).to include('OK Computer')
    end
  end

  context 'GET /artists' do
    it 'should return the list of artists' do
      response = get('/artists')

      expected_response = 'Pixies, ABBA, Taylor Swift, Nina Simone, Kiasmos'
      expect(response.status).to eq(200)
      expect(response.body).to eq(expected_response)
    end
  end

  context 'POST /artists' do
    it 'should add the artist to the db' do
      response = response = post(
        '/artists',
        name: 'Radiohead',
        genre: 'Alternative', 
        )

      expect(response.status).to eq(200)
      expect(response.body).to eq('')

      response = get('/artists')

      expect(response.status).to eq(200)
      expect(response.body).to include('Radiohead')
    end
  end
end
