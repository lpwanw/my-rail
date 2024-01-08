# frozen_string_literal: true

json.array! @admins_posts, partial: "admins_posts/admins_post", as: :admins_post
