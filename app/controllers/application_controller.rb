class ApplicationController < ActionController::Base
  before_action(:load_current_user)
  
  # Uncomment line 5 in this file and line 3 in UserAuthenticationController if you want to force users to sign in before any other actions.
  before_action(:force_user_sign_in)
  
  def homepage
    the_id = session[:user_id]
    @the_user = User.where({ :id => the_id }).first

    matching_current_loans = CurrentLoan.all
    @list_of_current_loans = matching_current_loans.order({ :created_at => :desc })
    matching_current_cards = CreditCard.all
    @list_of_current_cards = matching_current_cards.where(:permanent_credit_card => true).order({ :created_at => :desc })

    if @the_user == nil
      render({ :template => "homepages/homepage_not_signed_in.html.erb" })
    else 
      render({ :template => "homepages/homepage_signed_in.html.erb" })
    end
  end

  def index_loans
    matching_current_loans = CurrentLoan.all
    @list_of_current_loans = matching_current_loans.order({ :created_at => :desc })

    matching_comparison_loans = LoanComparison.all
    @list_of_comparison_loans = matching_comparison_loans.order({ :created_at => :desc })

    the_id = session[:user_id]
    @the_user = User.where({ :id => the_id }).first

    render({ :template => "layouts/loan_dashboard.html.erb" })
  end

  def index_credit_cards
    matching_current_cards = CreditCard.all
    @list_of_current_cards = matching_current_cards.where(:permanent_credit_card => true).order({ :created_at => :desc })

    #matching_comparison_loans = LoanComparison.all
    #@list_of_comparison_loans = matching_comparison_loans.order({ :created_at => :desc })

    the_id = session[:user_id]
    @the_user = User.where({ :id => the_id }).first

    render({ :template => "layouts/credit_card_dashboard.html.erb" })
  end
  
  
  def load_current_user
    the_id = session[:user_id]
    
    @current_user = User.where({ :id => the_id }).first
  end
  
  def force_user_sign_in
    if @current_user == nil
      redirect_to("/user_sign_in", { :notice => "You have to sign in first." })
    end
  end

end
