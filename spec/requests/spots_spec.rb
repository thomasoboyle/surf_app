require 'rails_helper'

RSpec.describe 'Spots', type: :request do
  before do
    #allow(UserSessionsHelper).to receive(loggined_in?).and_return true
  end
  it 'renders the index page' do
    get '/spots'
    expect(response).to have_http_status(200)
  end
  it 'renders the new page' do
    allow(UserSessionsController).to receive(:logged_in_user).and_return true
    get '/spots/new'
    expect(response).to have_http_status(200)
  end
end
