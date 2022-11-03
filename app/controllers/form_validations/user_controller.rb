class FormValidations::UserController < UserController
    def update
        @user.assign_attributes(user_params)
        @user.valid?
        respond_to do |format|
          format.text { render partial: 'user/form', locals: { post: @user }, formats: [:html] } 
        end
      end
      
      def create
        @user = User.new(user_params)
        @user.validate
        respond_to do |format|
          format.text { render partial: 'user/form', locals: { user: @user }, formats: [:html] } 
        end
      end
    end