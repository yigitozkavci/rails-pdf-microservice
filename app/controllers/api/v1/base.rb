module API
	module V1
		class Base < Grape::API
			format :json
			prefix :api
			version :v1

			mount API::V1::PDFConverter
			add_swagger_documentation(
				hide_documentation_path: true
			)
		end
	end
end
