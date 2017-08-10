class TestimonialsController < ApplicationController
  def index
    testimonials = Testimonial.all
    render json: testimonials
  end

  def create
    if @testimonial = Testimonial.create(testimonial_params)
      render json: @testimonial
    else
      render head: :error
    end
  end

  private

  def testimonial_params
    params.require(:testimonial)
          .permit!
  end
end
