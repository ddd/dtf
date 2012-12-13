class User < Sequel::Model

  # has_and_belongs_to_many :verification_suites
  # has_many :analysis_cases, :through => :verification_suites
  # has_many :case_tests, :through => :verification_suites

  one_to_many :verification_suites
  many_to_many :analysis_cases, :join_table=>users_verification_suites
  many_to_many :case_tests, :join_table=>users_verification_suites

end