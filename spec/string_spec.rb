describe String do
  describe '#as_cpf' do
    it 'formats string as CPF' do
      '12345678909'.as_cpf.should eq '123.456.789-09'
    end
  end

  describe '#as_cnpj' do
    it 'formats string as CNPJ' do
      '99999999999999'.as_cnpj.should eq '99.999.999/9999-99'
    end
  end

  describe '#as_cep' do
    it 'formats string as CEP' do
      '12345678'.as_cep.should eq '12.345-678'
    end
  end

  describe '#as_phone_number' do
    it 'formats string as phone number' do
      '1122223333'.as_phone_number.should eq '(11) 2222-3333'
    end
  end
end