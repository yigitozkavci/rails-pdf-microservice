module API
	module V1
		class Base < Grape::API
			format :json
			prefix :api
			version :v1

			desc 'Converts html into pdf document.'
			params do
				requires :html_body, type: File, desc: 'Html to be parsed.'
			end
			post :convert do
				"Converted pdf"
			end
		end
	end
end
