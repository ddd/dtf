Sequel.migration do
  up do
    create_table(:analysis_cases) do
      primary_key    :id
      String        :name
      String        :description
      foreign_key   :verification_suite_id, :verification_suites
      DateTime      :created_at
      DateTime      :updated_at
    end
  end

  down do
    drop_table(:analysis_cases)
  end

end
