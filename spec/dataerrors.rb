describe  "Cenários de erros", :erros do
    it 'usuario errado' do
        visit 'https://training-wheels-protocol.herokuapp.com/login'
               
        fill_in 'userId', with: 'antonio'
        fill_in 'password', with: 'jarvis!'

        click_button 'Login'

        expect(find('#flash')).to have_content 'O usuário informado não está cadastrado!'
    end

    it 'senha errada' do
        visit 'https://training-wheels-protocol.herokuapp.com/login'
        fill_in 'userId', with: 'stark'
        fill_in 'password', with: 'jarbas???'

        click_button 'Login'

        expect(find('#flash')).to have_content 'Senha é invalida!'
    end
end
