module Request
	module JsonHelpers
		@json_response ||= JSON.parse(response.body, symbolize_names: true)
	end
end