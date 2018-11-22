class WwomanController < ApplicationController
    
    def index
      @offline= Offline.all
      @online= Online.all
    end
    
    def offline
      @post = Offline.all
    end
    
    def online
      @post = Online.all
    end
    
    def qna
      @post = Qna.all
    end
    
    def offline_reply
        @post = OfflineReply.all
    end
    
    def online_reply
        @post = OnlineReply.all
    end
    

    def offline_create
      @offline = Offline.new
      @offline.off_title = params[:off_title]
      @offline.off_content =params[:off_content]
      @offline.off_tutor_content =params[:off_tutor_content]
      @offline.off_summary = params[:off_summary]
      @offline.offimage = params[:offimage]
      @offline.offthumbnail = params[:offthumbnail]
      
      #uploader = OfflineUploader.new
      #uploader.store!(params[:offimage])
      #uploader.store!(params[:offthumbnail])
      
      #@offline.offimage = uploader.url
      #@offline.offthumbnail = uploader.url
      
      @offline.save
      
      redirect_to "/wwoman/offline"
    end
    
    def online_create
      @online = Online.new
      @online.on_title = params[:on_title]
      @online.on_content =params[:on_content]
      @online.on_summary = params[:on_summary]
      @online.onimage = params[:onimage]
      @online.onthumbnail = params[:onthumbnail]
      @online.save
      
      #uploader = OnlineUploader.new
      #uploader.store!(params[:onimage])
      #uploader.store!(params[:onthumbnail])
      
      #@online.onimage = uploader.url
      #@online.onthumbnail = uploader.url
        
      redirect_to "/wwoman/online"
    end
    
    def off_update
     
       @off_update = Offline.new(params[:offline])
       @off_update.title = params[:off_title]
       @off_update.content =params[:off_content]
       @off_update.summary = params[:off_summary]
       @off_update.offimage = params[:offimage]
       @off_update.offthumbnail = params[:offthumbnail]

       @off_update.save
       redirect_to "/offline"
    end
    
    def online_update
       @on_update = Online.new(params[:online])
       @on_update.title = params[:on_title]
       @on_update.content =params[:on_content]
       @on_update.summary = params[:on_summary]
       @on_update.onimage = params[:onimage]
       @on_update.onthumbnail = params[:onthumbnail]

       @on_update.save
       redirect_to "/online"
    end
    
    def offline_destroy
        Offline.find(params[:id]).destroy
 
        redirect_to "/wwoman/offline"
    end
    
    def online_destroy
        Online.find(params[:id]).destroy
        redirect_to "/wwoman/online"
    end
    
    def qna_destroy
        Qna.find(params[:id]).destroy
        redirect_to "/wwoman/qna"
    end
    
    def offline_show
        @off_show = Offline.find(params[:id])
    end
    
    def online_show
        @on_show = Online.find(params[:id])
    end

    def qna_create
        @qna_create = Qna.new
        @qna_create.question = params[:question]
        @qna_create.qna_name = params[:qna_name]
        @qna_create.qna_phone = params[:qna_phone]
        @qna_create.save
        redirect_to "/"   
    end
    
    def offline_reply_create
        @offline_reply = OfflineReply.new                        
        @offline_reply.content = params[:content]                  
        @offline_reply.offline_id = params[:offline_id]
        @offline_reply.save
    
        redirect_to '/wwoman/offline'
    end
  
    def offline_reply_destroy
        @offline_reply = OfflineReply.find(params[:offline_id])         #삭제할 코멘트 찾기
        @offline_reply.destroy
    
        redirect_to '/wwoman/offline'
    end
    
    def online_reply_create
        @online_reply = OnlineReply.new                        #새로운 코멘트 생성
        @online_reply.content = params[:content]                    #params는 일단 비워둔다.
        @online_reply.online_id = params[:online_id]
        @online_reply.save
    
        redirect_to '/wwoman/online'
    end
  
    def online_reply_destroy
        @online_reply = OnlineReply.find(params[:online_id])         #삭제할 코멘트 찾기
        @online_reply.destroy
    
        redirect_to '/wwoman/online'
    end
  


    
    
end
