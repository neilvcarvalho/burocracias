require 'rubygems'
require 'rspec'
require 'burocracias'

module Burocracias
  describe Masks do
    describe '::format_cpf(string)' do
      context 'string has length of 11 characters' do
        it 'returns string as 999.999.999-99' do
          cpf = "12345678909"
          Masks.format_cpf(cpf).should eq '123.456.789-09'
        end
      end
      context 'string has length of less than 11 characters' do
        it 'adds zeroes do fill 11 characters and masks it' do
          cpf = '123'
          Masks.format_cpf(cpf).should eq '000.000.001-23'
        end
      end
      context 'string has length of more than 11 characters' do
        it 'returns self' do
          cpf = '1234567891234'
          Masks.format_cpf(cpf).should eq cpf
        end
      end
    end

    describe '::format_cnpj(string)' do
      context 'string has length of 14 characters' do
        it 'returns string as 99.999.999/9999-99' do
          cnpj = '99999999999999'
          Masks.format_cnpj(cnpj).should eq '99.999.999/9999-99'
        end
      end
      context 'string has length of less than 14 characters' do
        it 'adds zeroes to fill 14 characters and masks it' do
          cnpj = '123456789'
          Masks.format_cnpj(cnpj).should eq '00.000.123/4567-89'
        end
      end
      context 'string has length of more than 14 characters' do
        it 'returns self' do
          cnpj = '1234567890123456789'
          Masks.format_cnpj(cnpj).should eq cnpj
        end
      end
    end

    describe '::format_cep(string)' do
      context 'string has length of 8 characters' do
        it 'returns string as 99.999-999' do
          cep = '20921005'
          Masks.format_cep(cep).should eq '20921-005'
        end
      end
      context 'string has less than 8 characters' do
        it 'adds zeroes to fill 8 characters and masks it' do
          cep = '20921'
          Masks.format_cep(cep).should eq '00020-921'
        end
      end
      context 'string has more than 8 characters' do
        it 'returns self' do
          cep = '1234567890'
          Masks.format_cep(cep).should eq cep
        end
      end
    end

    describe '::format_phone_number(string)' do
      context 'string has 8 digits' do
        it 'returns string as 9999-9999' do
          phone = '55556666'
          Masks.format_phone_number(phone).should eq '5555-6666'
        end
      end
      context 'string has 10 digits' do
        it 'returns string as (99) 9999-9999' do
          phone = '4455556666'
          Masks.format_phone_number(phone).should eq '(44) 5555-6666'
        end
      end
      context 'string has 9 digits' do
        it 'returns string as 999-999-999' do
          phone = '111222333'
          Masks.format_phone_number(phone).should eq '111-222-333'
        end
      end
      context 'string has 11 digits' do
        it 'returns string as (99) 999-999-999' do
          phone = '44555666777'
          Masks.format_phone_number(phone).should eq '(44) 555-666-777'
        end
      end
      context 'any other case' do
        it 'returns self' do
          phone = '123'
          Masks.format_phone_number(phone).should eq phone
        end
      end
    end
  end
end