Sequel.migration do
  change do
    create_table!(:jobs, :ignore_index_errors=>true) do
      primary_key :id
      TrueClass :read, :text => true, :null => false
      TrueClass :invited, :text => true, :null => false
      foreign_key :job_id, :jobs, :null => false, :key=>[:id]
      foreign_key :geek_id, :geeks, :null => false, :key=>[:id]

      DateTime :created_at
      DateTime :updated_at

      index :id
    end
  end
end