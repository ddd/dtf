Sequel.migration do
  change do
    create_table(:schema_info) do
      Integer :version, :default=>0, :null=>false
    end
    
    create_table(:users) do
      primary_key :id
      String :full_name, :size=>255
      String :user_name, :size=>255
      String :email_address, :size=>255
      DateTime :created_at
      DateTime :updated_at
    end
    
    create_table(:users_verification_suites) do
      Integer :user_id
      Integer :verification_suite_id
    end
    
    create_table(:verification_suites) do
      String :id
      String :name, :size=>255
      String :description, :size=>255
      DateTime :created_at
      DateTime :updated_at
    end
    
    create_table(:analysis_cases) do
      String :id
      String :name, :size=>255
      String :description, :size=>255
      foreign_key :verification_suite_id, :verification_suites
      DateTime :created_at
      DateTime :updated_at
    end
    
    create_table(:case_tests) do
      primary_key :id
      String :description, :size=>255
      String :cmd, :size=>255
      foreign_key :analysis_case_id, :analysis_cases
      DateTime :created_at
      DateTime :updated_at
    end
  end
end
