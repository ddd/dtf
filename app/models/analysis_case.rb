class AnalysisCase < Sequel::Model

  # has_many    :users, :through => :verification_suite
  # belongs_to  :verification_suite
  # has_many :case_tests

  plugin :many_through_many

  many_through_many :users, [[:verification_suites, :id, :id], [:user_verification_suites, :verification_suite_id, :user_id]], :left_primary_key=>:verification_suite_id # has_many :users, :through => :verification_suite

  many_to_one   :verification_suite
  one_to_many  :case_tests
end
