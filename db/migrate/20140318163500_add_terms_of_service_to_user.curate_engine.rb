# This migration comes from curate_engine (originally 20131029142553)
class AddTermsOfServiceToUser < ActiveRecord::Migration
  def change
    add_column User.table_name, :agreed_to_terms_of_service, :boolean
  end
end
