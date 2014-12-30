class QrhndlController < ApplicationController
 def qrgen    
    @qrurl = params[:qrhash]          # Get parameter of qr text  from url -- www.abc.com?qrhash=adasdasd
    respond_to do |format|      
      format.html
      format.svg  { render :qrcode =>  @qrurl }
      format.png  { render :qrcode =>  @qrurl }
      format.gif  { render :qrcode =>  @qrurl }
      format.jpeg { render :qrcode =>  @qrurl }
    end    
  end
end
