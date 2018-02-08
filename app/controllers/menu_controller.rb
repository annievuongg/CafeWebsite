class MenuController < ApplicationController
  def sample_menu

  end

  private
# backup solution
  def pdf
    pdf_filename = File.join(Rails.root, 'public/docs/VTMS.pdf')
    send_file(pdf_filename, filename: 'VTMS.pdf', disposition: 'inline', type: 'application/pdf')
  end

end
