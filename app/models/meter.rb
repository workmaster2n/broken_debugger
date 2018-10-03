class Meter < ApplicationRecord
  has_many :properties

  def self.parse_info(params)
    meter = Meter.where(name: params['well_name'], number: params['well_number']).first_or_create(
        {name: params['well_name'], number: params['well_number']})
    params['gas_table'].each do |gas_row|
      gas_type = gas_row['gas_type']
      gas_row.each do |key, value|
        next if key == 'gas_type'

        if is_number(value)
          meter.properties.where(key: key, gas_type: gas_type).first_or_create(key: key, number_value: value)
        else
          meter.properties.where(key: key, gas_type: gas_type).first_or_create(key: key, string_value: value)
        end
      end
    end
    meter.save!
  end

  def self.is_number(num)
    true if Float(num) rescue false
  end
end
