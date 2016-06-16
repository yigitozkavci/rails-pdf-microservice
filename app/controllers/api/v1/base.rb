module API
	module V1
		class Base < Grape::API
			format :json
			prefix :api
			version :v1

			desc 'Converts html into pdf document.'
			params do
				requires :html_body, type: String, desc: 'Html to be parsed.'
			end
			post :convert do
				"Converting html: #{params[:html_body]}"
			end
		end
	end
end
