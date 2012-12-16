class CaseTest < Sequel::Model

  # has_many    :users, :through => :verification_suite
  # has_one     :verification_suite, :through => :analysis_case
  # belongs_to  :analysis_case

  many_to_many  :users, :join_table=>:users_verification_suites, :left_key=>:id, :left_primary_key=>:user_id, :right_primary_key=>:verification_suite_id
  one_to_one    :verification_suite  # This is the one that confuses me because its through AC not VS
  many_to_one   :analysis_case
end
