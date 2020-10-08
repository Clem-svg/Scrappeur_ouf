require_relative '../lib/mairie_christmas'

describe " the get_townhall_email method can get one specific match name/email" do
  it "Should return an array matching each cryptocurrency to its value and not an error" do
    expect(get_townhall_email("http://www.annuaire-des-mairies.com/95/ableiges.html")).to be_instance_of Array
  end
  it "should not be nil" do 
  	expect(get_townhall_email("http://www.annuaire-des-mairies.com/95/ableiges.html")).not_to be_nil
  end

end





