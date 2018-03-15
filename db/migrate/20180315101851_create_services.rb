class CreateServices < ActiveRecord::Migration[5.1]
  def self.up
    create_table :services do |t|
      t.string :heading
      t.text :description
      t.integer :sort_order
      t.string :icon
      t.timestamps
    end
    Service.create(icon: "fa-mobile", sort_order: 1, heading: "Mobile Apps", description: "In the age of mobile apps we are happy to build IOS and android apps for our clients.")
    Service.create(icon: "fa-laptop", sort_order: 2, heading: "Web Development", description: "We work on modern technologies to build fabulous web applications in Ruby on Rails, PHP and dot net")
    Service.create(icon: "fa-sitemap", sort_order: 3, heading: "Network Solutions", description: "Do you have a problem in your local network we can solve it we have champions network configuration specialist.")
  end
  def self.down
    drop_table :services
  end
end