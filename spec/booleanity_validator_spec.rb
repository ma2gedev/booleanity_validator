require 'spec_helper'

class TestModel
  include ActiveModel::Model

  attr_accessor :true_or_false
  validates :true_or_false, booleanity: true
end

describe BooleanityValidator do
  describe 'validation' do
    context 'valid' do
      it 'true' do
        expect(TestModel.new(true_or_false: true)).to be_valid
      end

      it 'false' do
        expect(TestModel.new(true_or_false: false)).to be_valid
      end
    end

    context 'invalid' do
      it 'empty string' do
        expect(TestModel.new(true_or_false: '')).not_to be_valid
      end

      it 'nil' do
        expect(TestModel.new(true_or_false: nil)).not_to be_valid
      end
    end

    context 'error message' do
      subject { TestModel.new(true_or_false: nil) }
      before { subject.valid? }

      it 'add blank message' do
        expect(subject.errors[:true_or_false]).to include "can't be blank"
      end
    end
  end
end
