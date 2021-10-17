
describe "Writing some script" do
    it ' visit page' do
        puts 'go to page'
        visit 'https://training-wheels-protocol.herokuapp.com/'
        puts page.title
        expect(page.title).to eq 'Training Wheels Protocol'
      
    end

end