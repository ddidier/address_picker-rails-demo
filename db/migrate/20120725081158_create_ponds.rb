    class CreatePonds < ActiveRecord::Migration
      def change

        create_table :ponds do |t|

          t.string :address
          t.string :address_latitude
          t.string :address_longitude
          t.string :address_locality
          t.string :address_country

          t.timestamps
        end

      end
    end
