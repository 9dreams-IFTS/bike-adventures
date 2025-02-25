class HomeController < ApplicationController
    def index
      @like_home = Like.find_by(pagina: 'home')&.click || 0
      @like_gallery = Like.find_by(pagina: 'gallery')&.click || 0
      @like_percorsi = Like.find_by(pagina: 'percorsi')&.click || 0
      @like_staff = Like.find_by(pagina: 'chisiamo')&.click || 0
      @like_prodotti = Like.find_by(pagina: 'prodotti')&.click || 0
    end

    def gallery
      @like_home = Like.find_by(pagina: 'home')&.click || 0
      @like_gallery = Like.find_by(pagina: 'gallery')&.click || 0
      @like_percorsi = Like.find_by(pagina: 'percorsi')&.click || 0
      @like_staff = Like.find_by(pagina: 'chisiamo')&.click || 0
      @like_prodotti = Like.find_by(pagina: 'prodotti')&.click || 0
    end

    def project
      @like_home = Like.find_by(pagina: 'home')&.click || 0
      @like_gallery = Like.find_by(pagina: 'gallery')&.click || 0
      @like_percorsi = Like.find_by(pagina: 'percorsi')&.click || 0
      @like_staff = Like.find_by(pagina: 'chisiamo')&.click || 0
      @like_prodotti = Like.find_by(pagina: 'prodotti')&.click || 0
    end

    def chisiamo
      @like_home = Like.find_by(pagina: 'home')&.click || 0
      @like_gallery = Like.find_by(pagina: 'gallery')&.click || 0
      @like_percorsi = Like.find_by(pagina: 'percorsi')&.click || 0
      @like_staff = Like.find_by(pagina: 'chisiamo')&.click || 0
      @like_prodotti = Like.find_by(pagina: 'prodotti')&.click || 0
    end

    def percorsi 
      @like_home = Like.find_by(pagina: 'home')&.click || 0
      @like_gallery = Like.find_by(pagina: 'gallery')&.click || 0
      @like_percorsi = Like.find_by(pagina: 'percorsi')&.click || 0
      @like_staff = Like.find_by(pagina: 'chisiamo')&.click || 0
      @like_prodotti = Like.find_by(pagina: 'prodotti')&.click || 0
    end

    def prodotti 
      @like_home = Like.find_by(pagina: 'home')&.click || 0
      @like_gallery = Like.find_by(pagina: 'gallery')&.click || 0
      @like_percorsi = Like.find_by(pagina: 'percorsi')&.click || 0
      @like_staff = Like.find_by(pagina: 'chisiamo')&.click || 0
      @like_prodotti = Like.find_by(pagina: 'prodotti')&.click || 0
    end

    def click
        like = Like.find_by(pagina: params[:pagina])
        
        if like
          like.click += 1
          if like.click == 20
            like.click = 0
          end
          like.save
          redirect_to send("#{like.pagina}_path")
        else
          flash[:error] = "La pagina non esiste."
          redirect_to root_path
        end
      end
    end
    
