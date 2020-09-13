RSpec.shared_examples 'responds to status' do
  it 'returns status code 200' do
    expect(response).to have_http_status(200) 
  end 
end