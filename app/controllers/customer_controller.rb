# frozen_string_literal: true

class CustomerController < ApplicationController
  def show
    @customer = Customer.find(params[:id])
  end
end
