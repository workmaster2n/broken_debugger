class DocParserController < ApplicationController
  skip_before_action :verify_authenticity_token


  def insert
    puts params
    meter = Meter.where(name: params['meter_name']).first_or_create({name: params['meter_name']})
    meter.update_attribute(:number, params['meter_number'])
    meter.save!
  end
end
