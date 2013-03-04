require "burocracias/version"
require "string"

module Burocracias
  class Masks
    def self.format_cpf(string)
      if string.length <= 11
        ("%011d" % string).insert(9, '-').insert(6, '.').insert(3, '.')
      else
        string
      end
    end

    def self.format_cnpj(string)
      if string.length <= 14
        ("%014d" % string).insert(12, '-').insert(8, '/').insert(5, '.').insert(2, '.')
      else
        string
      end
    end

    def self.format_cep(string)
      if string.length <= 8
        ("%08d" % string).insert(5, '-').insert(2, '.')
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
