module ContestHelper
  def calculate_avg_pts(crea_id)
    votes = Vote.where(:creation_id => crea_id)
    sum = 0
    votes.each do |v|
      sum += v.points
    end
    avg_pts = 1.0 * ( (1.0 * sum) / votes.size ).round(1)
  end
end
