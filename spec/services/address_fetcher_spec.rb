require 'rails_helper'

RSpec.describe AddressFetcher do
  context "when the zipcode is valid" do
    it 'returns a json with the address info' do
      response = described_class.call('05687-010')

      viacep_response = { cep: "05687-010",
                          logradouro: "Avenida Barão de Monte Mor",
                          complemento: "",
                          bairro: "Real Parque",
                          localidade: "São Paulo",
                          uf: "SP",
                          ibge: "3550308",
                          gia: "1004",
                          ddd: "11",
                          siafi: "7107" }

      expect(response).to eq(viacep_response.transform_keys(&:to_s))
    end
  end

  context "when the zipcode is invalid" do
    it 'returns a json with a 404 status' do
      response = described_class.call('05687')

      expect(response).to eq({ error: "404" })
    end
  end
end
