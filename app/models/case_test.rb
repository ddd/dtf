class CaseTest < ActiveRecord::Base

  attr_accessible :description, :cmd
  validates_presence_of :description, :cmd

  belongs_to  :analysis_case
  has_one     :verification_suite, :through => :analysis_case
end
