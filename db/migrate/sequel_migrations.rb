Sequel.migration do
  up do
    create_table(:users) do
      primary_key :id
      String      :full_name
      String      :user_name
      String      :email_address
      DateTime    :created_at
      DateTime    :updated_at
    end
  end

  down do
    drop_table(:users)
  end
end


Sequel.migration do
  up do
    create_table(:verification_suites) do
      primary_id  :id
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


Sequel.migration do
  up do
    create_table(:verification_suites) do
      primary_id  :id
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


Sequel.migration do
  up do
    create_table(:analysis_cases) do
      primary_id    :id
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

Sequel.migration do
  up do
    create_table(:users_verification_suites) do
      Integer     :user_id
      Integer     :verification_suite_id
    end
  end

  down do
    drop_table(:users_verification_suites)
  end
end
