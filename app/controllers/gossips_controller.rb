class GossipsController < ApplicationController
   def index
      @gossips = Gossip.all
   end

    def new
        @gossip = Gossip.new
    end

    def create
         @user = User.find(params[:gossip][:user_id])
         @gossip = @user.gossips.build(gossip_params)

        if  @gossip.save
            flash[:success] = 'Le potin a été créé avec succès.'
            #redirect_to root_path
            redirect_to gossip_path(@gossip)
        else 
            flash[:error] = 'Erreur lors de la création du potin. Veuillez vérifier les champs.'
            puts @gossip.errors.full_messages
            render :new
        end
    end

    def show
        @gossip = Gossip.find(params[:id])
    end

    private

    def gossip_params
        params.require(:gossip).permit(:title, :content, :user_id)
    end

end
