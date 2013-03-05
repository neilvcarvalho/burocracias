require "burocracias/version"
require "string"

module Burocracias
  class Masks
    def self.format_cpf(string)
      if string.length <= 11
        string.to_s.rjust(11, '0').insert(9, '-').insert(6, '.').insert(3, '.')
      else
        string
      end
    end

    def self.format_cnpj(string)
      if string.length <= 14
        string.to_s.rjust(14, '0').insert(12, '-').insert(8, '/').insert(5, '.').insert(2, '.')
      else
        string
      end
    end

    def self.format_cep(string)
      if string.length <= 8
        string.to_s.rjust(8, '0').insert(5, '-').insert(2, '.')
      else
        string
      end
    end

    def self.format_phone_number(string)
      case string.length
        when 8  then string.insert(4, '-')
        when 9  then string.insert(6, '-').insert(3, '-')
        when 10 then string.insert(6, '-').insert(2, ') ').insert(0, '(')
        when 11 then string.insert(8, '-').insert(5, '-').insert(2, ') ').insert(0, '(')
        else string
      end
    end
  end
end
