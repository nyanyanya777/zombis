module ApplicationHelper
  def profile_img(user)
      return image_tag(user.avatar, alt: user.name) if  current_user.avatar?

      unless current_user.provider.blank?
        img_url = current_user.image_url
      else
        img_url = 'no_image.png'
      end
      image_tag(img_url, alt: current_user.name)
    end
end
