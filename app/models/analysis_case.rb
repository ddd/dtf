class AnalysisCase < Sequel::Model

  # has_many    :users, :through => :verification_suite
  # belongs_to  :verification_suite
  # has_many :case_tests

  many_to_many  :users, :join_table=>:users_verification_suites, :left_key=>:id, :left_primary_key=>:user_id, :right_primary_key=>:verification_suite_id
  many_to_one   :verification_suite
  one_to_many  :case_tests
end
