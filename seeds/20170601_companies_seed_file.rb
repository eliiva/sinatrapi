Sequel.seed(:development, :test) do # Applies only to "development" and "test" environments
  def run
    puts 'run seed companies'
    dataset = DB[:companies]
    dataset.insert(:name => 'Vokvartal', :location => 'SPb')
    dataset.insert(:name => 'NN', :location => 'Norilsk')
    dataset.insert(:name => 'Alrosa', :location => 'Mirniy')
    dataset.insert(:name => 'Hogwarts', :location => 'London')
  end
end