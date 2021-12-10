class CreatePodRequests < ActiveRecord::Migration[6.1]
  def change
    create_table :pod_requests do |t|
      t.integer :status, :default => 0
      t.references :child, index: true
      t.references :pod, index: true

      t.timestamps
    end
  end
end
