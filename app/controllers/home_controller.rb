class HomeController < ApplicationController
  RESUME_PATH = Rails.root.join("public/downloads/ajay_modi_resume.pdf")
  RESUME_FILENAME = "Ajay_Modi_Resume.pdf"

  def index
  end

  def resume
    unless RESUME_PATH.exist?
      head :not_found
      return
    end

    send_file RESUME_PATH,
              filename: RESUME_FILENAME,
              type: "application/pdf",
              disposition: "attachment"
  end
end
