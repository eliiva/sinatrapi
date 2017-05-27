namespace '/api/v1' do
  require 'json'

  get '/company/:id' do
    puts "id = #{params[:id]}"
    company = Company.where(id: params[:id].to_i)
    puts "company.to_a = #{company.to_a}"
    puts "company.to_a[0].values.to_json = #{company.to_a[0].values.to_json}"
    company.to_a[0].values.to_json
  end

  get '/company_jobs' do
    Company.company_jobs(params[:name])
  end

end