class ApplicationController < ActionController::API
    private

      def ensure_current_user_is_superadmin!
        authenticate_user!

        unless current_user.super_admin?
          redirect_to root_path, status: :forbidden, alert: "Unauthorized Access!"
        end
      end

      def current_user
        token = request.headers["Authorization"].to_s
        User.find_for_database_authentication(authentication_token: token)
      end
end
