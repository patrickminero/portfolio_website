class DownloadResumeController < ApplicationController
  def show
    send_file '/app/assets/files/Patrick_Minero_Resume.pdf', type: 'text/pdf', status: 202
  end
end
