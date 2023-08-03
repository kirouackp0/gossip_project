class GossipFeedController < ApplicationController
  def index
    @gossips = Gossip.all
  end
end
