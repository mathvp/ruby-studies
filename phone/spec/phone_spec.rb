require 'spec_helper'
require 'phone'

describe Phone do
  describe '#to_number' do
    it 'should return 2 for A to C interval' do
      expect(Phone.new.to_number('A')).to eq 2
      expect(Phone.new.to_number('B')).to eq 2
      expect(Phone.new.to_number('C')).to eq 2
    end

    it 'shouldn\'t return 2 for letters outside A-C interval' do
      expect(Phone.new.to_number('D')).not_to eq 2
      expect(Phone.new.to_number('Z')).not_to eq 2
      expect(Phone.new.to_number('T')).not_to eq 2
    end

    it 'should return 7 for P to S interval' do
      expect(Phone.new.to_number('P')).to eq 7
      expect(Phone.new.to_number('Q')).to eq 7
      expect(Phone.new.to_number('R')).to eq 7
      expect(Phone.new.to_number('S')).to eq 7
    end

    it 'shouldn\'t return 7 for letter outside P-S interval' do
      expect(Phone.new.to_number('O')).not_to eq 7
      expect(Phone.new.to_number('T')).not_to eq 7
      expect(Phone.new.to_number('Z')).not_to eq 7
    end

    it 'should return 0 when receives 0' do
      expect(Phone.new.to_number('0')).to eq 0
    end

    it 'should return 1 when receives 1' do
      expect(Phone.new.to_number('1')).to eq 1
    end

    it 'should return - when receives -' do
      expect(Phone.new.to_number('-')).to eq '-'
    end
  end

  describe '#to_phone_number' do
    it 'should return 69 5683 when receives MY LOVE' do
      expect(Phone.new.to_phone_number('MY LOVE')).to eq '69 5683'
    end

    it 'should return 1-4663-79338-4663 when receives 1-HOME-SWEET-HOME' do
      p = Phone.new
      expect(p.to_phone_number('1-HOME-SWEET-HOME')).to eq '1-4663-79338-4663'
    end

    it 'should return 69-647372253-562 when receives MY-MISERABLE-JOB' do
      p = Phone.new
      expect(p.to_phone_number('MY-MISERABLE-JOB')).to eq '69-647372253-562'
    end

    it 'should return 6284387 when receives MATHEUS' do
      expect(Phone.new.to_phone_number('MATHEUS')).to eq '6284387'
    end
  end
end
