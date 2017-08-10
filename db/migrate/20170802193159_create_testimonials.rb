class CreateTestimonials < ActiveRecord::Migration[5.0]
  def change
    create_table :testimonials do |t|
      t.string :name
      t.string :city
      t.string :body

      t.timestamps
    end
  end
end
