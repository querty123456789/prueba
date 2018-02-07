class CreateBankSubsidiaries < ActiveRecord::Migration[5.1]
  def change
    create_table :bank_subsidiaries do |t|
      t.string :address
      t.references :bank, foreign_key: true

      t.timestamps
    end
  end
end
