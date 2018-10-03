class DocParserController < ApplicationController
  skip_before_action :verify_authenticity_token


  def insert
    Meter.parse_info(params)
  end


end
