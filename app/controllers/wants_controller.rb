class WantsController < ApplicationController
def index
  @wants = Want.all
end
end
