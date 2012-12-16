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
