class VerificationSuite < Sequel::Model

  # ASSOCIATIONS BREAKDOWN
  # ----------------------
  # Each VerificationSuite is comprised of many AnalysisCases, Each AnalysisCase
  # contain multiple case_tests, owned by both the User and the AnalysisCase.
  # The goal is to make 'packs' of tests which Users can share between Suites,
  # grouped by Cases, and even share those Tests between Cases. Also, Users
  # should be able to share their individual Test(s), AnalysisCase(s), and
  # VerificationSuite(s) with other Users for inclusion in their own
  # AnalysisCase(s) and Suite(s) allowing for mix-and-match batching.

  # has_and_belongs_to_many :users
  # has_many :analysis_cases
  # has_many :case_tests, :through => :analysis_cases

  one_to_many  :users
  many_to_many :analysis_cases, :join_table=>users_verification_suites
  many_to_many :case_tests, :join_table=>users_verification_suites # This is the one that confuses me because its through AC not VS


end