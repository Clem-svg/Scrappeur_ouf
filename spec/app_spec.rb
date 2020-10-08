require_relative '../lib/app'

describe "an array of cryptocurrencies" do
  it "should return currencies" do
    expect(currencies_names[0]).to eq("Bitcoin")
  end
end

describe "A coherant hash" do
  it "matches two arrays of similar length" do
    expect(currencies_names.length).to eq(currencies_values.length)
  end

end



describe "make_hash method, it should return a hash with both arrays" do
  it "Should return a hash matching each cryptocurrency to its value and not an error" do
    expect(hashing_crypto_name_value).to be_instance_of Hash
  end
  it "Should not be nil" do
    expect(hashing_crypto_name_value).not_to be_nil
  end
end