module ApplicationHelper

  def image_preview(image, form_object)
    render partial: 'shared/image_preview', 
      locals: { image: image, form_object: form_object }
  end

end
