Sequel.migration do
  up do
    create_table(:case_tests) do
      primary_key   :id
      String        :description
      String        :cmd
      foreign_key   :analysis_case_id, :analysis_cases
      DateTime      :created_at
      DateTime      :updated_at
    end
  end

  down do
    drop_table(:case_tests)
  end

end
