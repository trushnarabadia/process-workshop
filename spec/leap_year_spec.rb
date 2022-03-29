# A simple tool that will tell you whether a year is a leap year, according to 
# the following rules:

# All years divisible by 400 ARE leap years (e.g. 2000 was a leap year)

# All years divisible by 100 but not by 400 are NOT leap years (e.g. 1700, 1800 
# and 1900 were not leap years)

# All years divisible by 4 and not by 100 ARE leap years (e.g. 2004, 2008 and 
# 2012 were leap years)

# All years not divisible by 4 are NOT leap years (e.g. 2009, 2010 and 2011 were 
# not leap years)

require_relative "../lib/leap_year"

describe '#leap_year?' do
  it 'should return that year 2000 was a leap year' do
    expect(leap_year?(2000)).to eq true
  end

  it 'should return false when given years 1700, 1800, and 1900' do
    expect(leap_year?(1700)).to eq false
    expect(leap_year?(1800)).to eq false
    expect(leap_year?(1900)).to eq false
  end

  it 'should return true when given years 2004, 2008 and 2012' do
    expect(leap_year?(2004)).to eq true
  end
end