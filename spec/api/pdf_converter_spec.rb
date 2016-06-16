require "rails_helper"

RSpec.describe "PDFConverter ", :type => :request do
	it "fails if we don't give html_body parameter" do
		post "/api/v1/convert"
		expect(response).to have_http_status(400)
	end
	it "converts html to pdf" do
		post "/api/v1/convert", :html_body => "<p>some html code</p>"
		expect(response).to be_success
	end
end
