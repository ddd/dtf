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
