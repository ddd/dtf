Sequel.migration do
  up do
    create_table(:verification_suites) do
      primary_key  :id
      String      :name
      String      :description
      DateTime    :created_at
      DateTime    :updated_at
    end
  end

  down do
    drop_table(:verification_suites)
  end

end
