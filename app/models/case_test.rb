class CaseTest < Sequel::Model

  # has_one     :verification_suite, :through => :analysis_case
  # belongs_to  :analysis_case


  # belongs_to :analysis_case
  many_to_one :analysis_case

  # has_one :verification_suite, :through => analysis_case
  many_to_many :verification_suites, :join_table => :analysis_cases, :left_key => :id, :left_primary_key => :analysis_case_id, :right_primary_key => :verification_suite_id

end

