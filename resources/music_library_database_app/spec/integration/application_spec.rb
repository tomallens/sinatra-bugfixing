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
      expect(response.body).to include('<a href="/albums/2">Surfer Rosa</a>')
      expect(response.body).to include('<a href="/albums/3">Waterloo</a>')
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

  context 'GET /artists/:id' do
    it 'should return html about artist 2' do
      response = get('/artists/2')

      expect(response.status).to eq(200)
      expect(response.body).to include('<h1>ABBA</h1>')
      expect(response.body).to include('Pop')
    end
  end

  context 'GET /artists' do
    it 'should return the list of artist links' do
      response = get('/artists')

      expect(response.status).to eq(200)
      expect(response.body).to include('<a href="/artists/1">Pixies</a><br>')
      expect(response.body).to include('<a href="/artists/2">ABBA</a><br>')
    end
  end

  # context 'POST /artists' do
  #   xit 'should add the artist to the db' do
  #     response = response = post(
  #       '/artists',
  #       name: 'Radiohead',
  #       genre: 'Alternative', 
  #       )

  #     expect(response.status).to eq(200)
  #     expect(response.body).to eq('')

  #     response = get('/artists')

  #     expect(response.status).to eq(200)
  #     expect(response.body).to include('Radiohead')
  #   end
  # end
end
