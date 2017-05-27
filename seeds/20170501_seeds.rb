Sequel.seed(:development, :test) do # Applies only to "development" and "test" environments
  def run
    puts 'in Main 20170501_seeds.rb - all truncations'
    # DB[:table].truncate(:cascade => true, :only=>true, :restart=>true)
    [:applies, :geeks, :jobs, :companies].each { |model| puts model; DB[model].truncate(:cascade => true, :restart=>true)}
    puts 'All models deletion (truncation) with Primary_key restart'
  end
end