# frozen_string_literal: true

def find_range_overlap(point1, length1, point2, length2)
  highest_start_point = [point1, point2].max
  lowest_end_point = [point1 + length1, point2 + length2].min

  return [nil, nil] if highest_start_point >= lowest_end_point

  overlap_width = lowest_end_point - highest_start_point

  [highest_start_point, overlap_width]
end

def find_rectangular_overlap(rect1, rect2)
  x_overlap_point, overlap_width = find_range_overlap(rect1[:left_x], rect1[:width], rect2[:left_x], rect2[:width])
  y_overlap_point, overlap_height = find_range_overlap(rect1[:bottom_y], rect1[:height], rect2[:bottom_y],
                                                       rect2[:height])

  if overlap_width && overlap_height
    {
      left_x: x_overlap_point,
      bottom_y: y_overlap_point,
      width: overlap_width,
      height: overlap_width
    }
  else
    {
      left_x: nil,
      bottom_y: nil,
      width: nil,
      height: nil
    }
  end
end
