class CreateLandingContents < ActiveRecord::Migration[5.1]
  def self.up
    create_table :landing_contents do |t|
      t.string :slogan
      t.string :main_heading
      t.string :service_upper_text
      t.string :about_us_upper_text

      t.timestamps
    end
    LandingContent.create(
      slogan: "We love to build fabolous systems",
      main_heading: "Welcome To Your Solution!",
      service_upper_text: "We are proud to help our clients in..",
      about_us_upper_text: "Lorem ipsum dolor sit amet consectetur."
    )
  end
  def self.down
    drop_table :landing_contents
  end
end
