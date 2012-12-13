class AnalysisCase < Sequel::Model

  # has_many    :users, :through => :verification_suite
  # belongs_to  :verification_suite
  # has_many :case_tests

  one_to_many   :users, :join_table=>users_verification_suites
  many_to_one   :verification_suite
  many_to_many  :case_tests
end