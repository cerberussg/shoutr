module ShoutHelper
<<<<<<< HEAD
  def avatar(user)
    email_digest = Digest::MD5.hexdigest user.email
    gravatar_url = "//www.gravatar.com/avatar/#{email_digest}"

    image_tag gravatar_url
  end

  def like_button(shout)
    if current_user.liked?(shout)
      link_to 'unlike', unlike_shout_path(shout), method: :delete
=======
  def like_button(shout)
    if current_user.liked?(shout)
      link_to 'Unlike', unlike_shout_path(shout), method: :delete
>>>>>>> f9a1717fcd482222802c02382cdabb4731fa47cd
    else
      link_to 'Like', like_shout_path(shout), method: :post
    end
  end
<<<<<<< HEAD
=======

  def autolink(text)
    text.gsub(/[@]\w+/) { |mention| link_to mention, 
      user_path(mention[1..-1]) }.html_safe
  end
>>>>>>> f9a1717fcd482222802c02382cdabb4731fa47cd
end
