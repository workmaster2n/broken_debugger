require 'test_helper'

class DocParserControllerTest < ActionDispatch::IntegrationTest
  test "should get insert" do
    get doc_parser_insert_url
    assert_response :success
  end

end
