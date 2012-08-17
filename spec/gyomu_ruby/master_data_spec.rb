# coding: utf-8

require 'spec_helper'
require 'gyomu_ruby/master_data'

module GyomuRuby
  describe MasterData do
    describe '.prefecture_name' do
      context 'code in String' do
        subject { MasterData.prefecture_name('01') }

        it { should == '北海道' }
      end

      context 'code in Fixnum' do
        subject { MasterData.prefecture_name(1) }

        it { should == '北海道' }
      end
    end

    describe '.prefecture_codes_by_area' do
      subject { MasterData.prefecture_codes_by_area('関東') }

      it { should == %w(08 09 10 11 12 13 14) }
    end

    describe '.currency_name' do
      subject { MasterData.currency_name('USD') }

      it { should == '米ドル' }
    end
  end
end
