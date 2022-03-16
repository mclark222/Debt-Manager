Rails.application.routes.draw do

  get("/", { :controller => "application", :action => "homepage" })
  get("/loan_dashboard", { :controller => "application", :action => "index_loans" })
  get("/credit_card_dashboard", { :controller => "application", :action => "index_credit_cards" })
  # Routes for the Loan comparison resource:

  # CREATE
  post("/insert_loan_comparison", { :controller => "loan_comparisons", :action => "create" })
          
  # READ
  get("/loan_comparisons", { :controller => "loan_comparisons", :action => "index" })
  
  get("/loan_comparisons/:path_id", { :controller => "loan_comparisons", :action => "show" })
  
  # UPDATE
  
  post("/modify_loan_comparison/:path_id", { :controller => "loan_comparisons", :action => "update" })
  
  # DELETE
  get("/delete_loan_comparison/:path_id", { :controller => "loan_comparisons", :action => "destroy" })

  #------------------------------

  # Routes for the Credit card resource:

  # CREATE
  post("/insert_credit_card", { :controller => "credit_cards", :action => "create" })
          
  # READ
  get("/credit_cards", { :controller => "credit_cards", :action => "index" })
  
  get("/credit_cards/:path_id", { :controller => "credit_cards", :action => "show" })
  
  # UPDATE
  
  post("/modify_credit_card/:path_id", { :controller => "credit_cards", :action => "update" })
  
  # DELETE
  get("/delete_credit_card/:path_id", { :controller => "credit_cards", :action => "destroy" })

  #------------------------------

  # Routes for the Current loan resource:

  # CREATE
  post("/insert_current_loan", { :controller => "current_loans", :action => "create" })
          
  # READ
  get("/current_loans", { :controller => "current_loans", :action => "index" })
  
  get("/current_loans/:path_id", { :controller => "current_loans", :action => "show" })
  
  # UPDATE
  
  post("/modify_current_loan/:path_id", { :controller => "current_loans", :action => "update" })
  
  # DELETE
  get("/delete_current_loan/:path_id", { :controller => "current_loans", :action => "destroy" })

  #------------------------------

  # Routes for the User account:

  # SIGN UP FORM
  get("/user_sign_up", { :controller => "user_authentication", :action => "sign_up_form" })        
  # CREATE RECORD
  post("/insert_user", { :controller => "user_authentication", :action => "create"  })
      
  # EDIT PROFILE FORM        
  get("/edit_user_profile", { :controller => "user_authentication", :action => "edit_profile_form" })       
  # UPDATE RECORD
  post("/modify_user", { :controller => "user_authentication", :action => "update" })
  
  # DELETE RECORD
  get("/cancel_user_account", { :controller => "user_authentication", :action => "destroy" })

  # ------------------------------

  # SIGN IN FORM
  get("/user_sign_in", { :controller => "user_authentication", :action => "sign_in_form" })
  # AUTHENTICATE AND STORE COOKIE
  post("/user_verify_credentials", { :controller => "user_authentication", :action => "create_cookie" })
  
  # SIGN OUT        
  get("/user_sign_out", { :controller => "user_authentication", :action => "destroy_cookies" })
             
  #------------------------------

end
