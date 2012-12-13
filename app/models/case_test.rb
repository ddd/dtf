class CaseTest < Sequel::Model

  # has_many    :users, :through => :verification_suite
  # has_one     :verification_suite, :through => :analysis_case
  # belongs_to  :analysis_case

  one_to_many   :users, :join_table=>users_verification_suites
  one_to_one    :verification_suite  # This is the one that confuses me because its through AC not VS
  many_to_one   :analysis_case
end