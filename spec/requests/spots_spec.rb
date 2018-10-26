require 'rails_helper'

RSpec.describe 'Spots', type: :request do
  it 'renders the new page' do
    get '/spots/new'
    expect(response).to have_http_status(200)
  end
end
