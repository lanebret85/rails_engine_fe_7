require 'rails_helper'

RSpec.describe "Items Index" do
  describe "As a visitor" do
    describe "When I visit '/items'" do
      it "I should see a list of items by name, and when I click the item's name, I should be on page '/items/:id' and I should see the name of the item, description, and unit price." do
        VCR.use_cassette("items") do
          visit "/items"

          expect(page).to have_content("Items")

          expect(page).to have_link("Item Nemo Facere")
          expect(page).to have_link("Item Expedita Aliquam")
          expect(page).to have_link("Item Provident At")
          expect(page).to have_link("Item Expedita Fuga")
          expect(page).to have_link("Item Est Consequuntur")
          expect(page).to have_link("Item Quo Magnam")
          expect(page).to have_link("Item Quidem Suscipit")
          expect(page).to have_link("Item Rerum Magni")
          expect(page).to have_link("Item Et Cumque")
          expect(page).to have_link("Item Voluptatem Sint")
        end

        VCR.use_cassette("Item Nemo Facere") do
          click_link "Item Nemo Facere"

          expect(current_path).to eq("/items/4")

          expect(page).to have_content("Item Nemo Facere")
          expect(page).to have_content("Description: Sunt eum id eius magni consequuntur delectus veritatis. Quisquam laborum illo ut ab. Ducimus in est id voluptas autem.")
          expect(page).to have_content("Unit Price: $42.91")
        end

        VCR.use_cassette("items") do
          visit "/items"
        end

        VCR.use_cassette("Item Expedita Aliquam") do
          click_link "Item Expedita Aliquam"

          expect(current_path).to eq("/items/5")

          expect(page).to have_content("Item Expedita Aliquam")
          expect(page).to have_content("Description: Voluptate aut labore qui illum tempore eius. Corrupti cum et rerum. Enim illum labore voluptatem dicta consequatur. Consequatur sunt consequuntur ut officiis.")
          expect(page).to have_content("Unit Price: $687.23")
        end

        VCR.use_cassette("items") do
          visit "/items"
        end

        VCR.use_cassette("Item Provident At") do
          click_link "Item Provident At"

          expect(current_path).to eq("/items/6")

          expect(page).to have_content("Item Provident At")
          expect(page).to have_content("Description: Numquam officiis reprehenderit eum ratione neque tenetur. Officia aut repudiandae eum at ipsum doloribus. Iure minus itaque similique. Ratione dicta alias asperiores minima ducimus nesciunt at.")
          expect(page).to have_content("Unit Price: $159.25")
        end

        VCR.use_cassette("items") do
          visit "/items"
        end

        VCR.use_cassette("Item Expedita Fuga") do
          click_link "Item Expedita Fuga"

          expect(current_path).to eq("/items/7")

          expect(page).to have_content("Item Expedita Fuga")
          expect(page).to have_content("Description: Fuga assumenda occaecati hic dolorem tenetur dolores nisi. Est tenetur adipisci voluptatem vel. Culpa adipisci consequatur illo. Necessitatibus quis quo velit sed repellendus ut amet.")
          expect(page).to have_content("Unit Price: $311.63")
        end

        VCR.use_cassette("items") do
          visit "/items"
        end

        VCR.use_cassette("Item Est Consequuntur") do
          click_link "Item Est Consequuntur"

          expect(current_path).to eq("/items/8")

          expect(page).to have_content("Item Est Consequuntur")
          expect(page).to have_content("Reprehenderit est officiis cupiditate quia eos. Voluptatem illum reprehenderit quo vel eligendi. Et eum omnis id ut aliquid veniam.")
          expect(page).to have_content("Unit Price: $343.55")
        end

        VCR.use_cassette("items") do
          visit "/items"
        end

        VCR.use_cassette("Item Quo Magnam") do
          click_link "Item Quo Magnam"

          expect(current_path).to eq("/items/9")

          expect(page).to have_content("Item Quo Magnam")
          expect(page).to have_content("Description: Culpa deleniti adipisci voluptates aut. Sed eum quisquam nisi. Voluptatem est rerum est qui id reprehenderit. Molestiae laudantium non velit alias. Ipsa consequatur modi quibusdam.")
          expect(page).to have_content("Unit Price: $225.82")
        end

        VCR.use_cassette("items") do
          visit "/items"
        end

        VCR.use_cassette("Item Quidem Suscipit") do
          click_link "Item Quidem Suscipit"

          expect(current_path).to eq("/items/10")

          expect(page).to have_content("Item Quidem Suscipit")
          expect(page).to have_content("Description: Reiciendis sed aperiam culpa animi laudantium. Eligendi veritatis sint dolorem asperiores. Earum alias illum eos non rerum.")
          expect(page).to have_content("Unit Price: $340.18")
        end

        VCR.use_cassette("items") do
          visit "/items"
        end

        VCR.use_cassette("Item Et Cumque") do
          click_link "Item Et Cumque"

          expect(current_path).to eq("/items/12")

          expect(page).to have_content("Item Et Cumque")
          expect(page).to have_content("Description: Ducimus id perferendis. Libero ullam odit aut quisquam non. Rem eaque distinctio quos. Eaque nihil odit.")
          expect(page).to have_content("Unit Price: $395.15")
        end

        VCR.use_cassette("items") do
          visit "/items"
        end

        VCR.use_cassette("Item Voluptatem Sint") do
          click_link "Item Voluptatem Sint"

          expect(current_path).to eq("/items/13")

          expect(page).to have_content("Item Voluptatem Sint")
          expect(page).to have_content("Description: Nostrum doloribus quia. Expedita vitae beatae cumque. Aut ut illo aut eum.")
          expect(page).to have_content("Unit Price: $594.54")
        end
      end
    end
  end
end