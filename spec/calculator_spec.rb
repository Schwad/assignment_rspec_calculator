# Your code here
require 'calculator'

describe Calculator do
  let (:c) {Calculator.new}

  describe '#add' do    
    it 'returns the sum of its arguments' do
      expect(c.add(1, 2)).to eq(3)
    end
  end

  describe '#subtract' do
    it 'subtracts below zero' do
      expect(c.subtract(1, 2)).to eq(-1)
    end
  end

  describe '#multiply' do
    it 'multiplies two arguments' do
      expect(c.multiply(2, 3)).to eq(6)
    end
  end

  describe '#divide' do 
    it 'divides two value with a float' do
      expect(c.divide(2,3)).to eq(0.6666666666666666)
    end

    it 'divides two value with a float' do
      expect(c.divide(4,2)).to eq(2)
    end
  end

  describe '#pow' do
    it 'raises an argument to the power of the second argument' do
      expect(c.pow(3,3)).to eq(27)
    end

    it 'can handle fractions and floats' do
      expect(c.pow(27,1/3.0)).to eq(3.0)
    end
  end

  describe '#sqrt' do
    it 'finds the square root of a perfect square' do
      expect(c.sqrt(9)).to eq(3)
    end

    it 'returns a float for a non perfect square' do
      expect(c.sqrt(8)).to eq(2.83)
    end
  end

  describe '#memory' do
    it 'returns nil if method is empty' do
      expect(c.memory).to eq(nil)
    end
  end

  describe '#memory=' do
    it 'returns a value once passed to it' do
      expect(c.memory=(8)).to eq(8)
    end

   it 'holds the value' do      
      c.memory=(8)
      expect(c.memory).to eq(8)
    end

    it 'erases the second time' do
      expect(c.memory).to eq(nil)
    end
  end

  describe '@stringify' do 
    let (:c2) {Calculator.new(true)}
    it 'returns a value as a string' do 
      expect(c2.add(1,2).class).to eq(String)
    end
  end
end