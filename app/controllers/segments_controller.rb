class SegmentsController < ApplicationController
  def index_eat
  	@segment = Segment.where(name: '食事')
  end

  def index_shopping
  	@segments = Segment.where(name: 'ショッピング')
  end

  def about
  end
end