Sequel.seed(:development, :test) do # Applies only to "development" and "test" environments
  def run
    puts 'run seed jobs'
    dataset = DB[:jobs]
    dataset.insert( :name => 'sales manager', :place => 'SPb', :company_id => 1)
    dataset.insert( :name => 'geologist', :place => 'Notilsk', :company_id => 1)
    dataset.insert( :name => 'admin', :place => 'Notilsk', :company_id => 2)
    dataset.insert( :name => 'teacher', :place => 'London', :company_id => 3)
  end
end