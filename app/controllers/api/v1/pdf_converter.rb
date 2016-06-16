module API
	module V1
		class PDFConverter < Grape::API
			desc 'Converts html into pdf document.'
			params do
				requires :html_body, type: String, desc: 'Html to be parsed.'
			end
			post :convert do
					{ pdf_document: "#{params[:html_body]}.pdf" }
			end
		end
	end
end
