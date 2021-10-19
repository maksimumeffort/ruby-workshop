def get_data(url, headers = {}, *params)
  puts "calling #{url}"
  if headers.length > 0
    puts "headers: #{headers}"
  else
    puts "no headers"
  end
  params.each do |param|
    puts "found param: #{param}"
  end
end

def assemble_params(inlude_headers = false, include_date = false, only_show_my_records = true)
  headers = {accept: "application/json"}
  url = "https://exampleapi.com"
  args = [url]
  args << headers if inlude_headers
  params = []
  params << "date=#{Time.now}" if include_date
  params << "myrecords=true" if only_show_my_records
  args << params if params.length > 0
end

# get_data(*assemble_params)
# get_data(*assemble_params(true))
get_data(*assemble_params(false,true,false))
