class User < Sequel::Model

  # has_and_belongs_to_many :verification_suites
  # has_many :analysis_cases, :through => :verification_suites
  # has_many :case_tests, :through => :verification_suites

  many_to_many :verification_suites, :join_table => :users_verification_suites, :left_key => :user_id, :association_foreign_key => :verification_suite_id
  many_to_many :analysis_cases
  one_to_many :case_tests

end
