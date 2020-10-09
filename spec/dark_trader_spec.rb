require_relative '../lib/dark_trader'

describe "an array of cryptocurrencies" do
  it "should return currencies" do
    expect(currencies_names[0]).to eq("Bitcoin")
    expect(currencies_names[1]).to eq("Ethereum")
    expect(currencies_names[55]).to eq("Ren")
  end
end

describe "A coherant array" do
  it "matches two arrays of similar length" do
    expect(currencies_names.length).to eq(currencies_values.length)
  end

end


describe "make_hash method, it should return an array with both arrays as mini hashes" do
  it "Should return an array matching each cryptocurrency to its value and not an error" do
    expect(arraying_crypto_name_value).to be_instance_of Array
  end
  it "Should not be nil" do
    expect(arraying_crypto_name_value).not_to be_nil
  end
end