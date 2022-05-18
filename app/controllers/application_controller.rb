class ApplicationController < ActionController::Base
  set_current_tenant_through_filter
  before_action :find_current_tenant

  def find_current_tenant
    # set to Account.first for now, you'll change this later

    if params[:action] == "switch"
      new_company = Company.where(name: params[:new_company])
      set_current_tenant(new_company)
      session[:current_company] = new_company.first[:id]
      redirect_to controller: 'companies', action: 'show', id: new_company.first[:id]
    elsif session[:current_company].nil?
      new_company = Company.first
      set_current_tenant(new_company)
      session[:current_company] = new_company[:id]
      byebug
    else
      new_company = Company.find(session[:current_company])
      set_current_tenant(new_company)
    end



  end

  def switch

  end
end
