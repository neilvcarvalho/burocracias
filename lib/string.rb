class String
  def as_cpf
    Burocracias::Masks.format_cpf(self)
  end

  def as_cnpj
    Burocracias::Masks.format_cnpj(self)
  end

  def as_cep
    Burocracias::Masks.format_cep(self)
  end

  def as_phone_number
    Burocracias::Masks.format_phone_number(self)
  end
end