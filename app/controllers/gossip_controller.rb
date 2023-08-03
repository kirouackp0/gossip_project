class GossipController < ApplicationController
    def index
        @gossips = Gossip.all
    end

    def new
        @gossips = Gossip.new
    end

    def create
    end
end
