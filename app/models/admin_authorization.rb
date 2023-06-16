class AdminAuthorization < ActiveAdmin::AuthorizationAdapter 
  
  def authorized?(action, subject = nil)
    # si el user está logueado y es admin?
    user && user.admin?
  end
end

#! UNIQUE WAY TO CREATE A ADMIN FOR THE FIRST TIME => rails console
# user = User.find_by(email: "example@mail.com")
# user.email => example@mail.com
# user.id => 1
# user.created_at => Wed, 14 Jun 2023 21:15:12.274983000 UTC +00:00
# user.admin => false 
# user.admin = true
# user => #<User id: 1, email: "example@mail.com", created_at: "2023-06-14 21:15:12.274983000 +0000", updated_at: "2023-06-14 21:15:12.274983000 +0000", admin: true>
# user.save =>   TRANSACTION (0.1ms)  begin transaction
  # User Update (13.6ms)  UPDATE "users" SET "updated_at" = ?, "admin" = ? WHERE "users"."id" = ?  [["updated_at", "2023-06-16 21:09:28.842872"], ["admin", 1], ["id", 1]]
  # TRANSACTION (3.0ms)  commit transaction
