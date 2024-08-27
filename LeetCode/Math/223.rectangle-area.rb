# @param {Integer} ax1
# @param {Integer} ay1
# @param {Integer} ax2
# @param {Integer} ay2
# @param {Integer} bx1
# @param {Integer} by1
# @param {Integer} bx2
# @param {Integer} by2
# @return {Integer}
def compute_area(ax1, ay1, ax2, ay2, bx1, by1, bx2, by2)

  x1 = [ax1, bx1].max
  x2 = [ax2, bx2].min

  y1 = [ay2, by2].min
  y2 = [ay1, by1].max

  width = (x2-x1)
  height = (y1-y2)

  intersect_rectangle = (width < 0 || height < 0) ? 0 : width * height
    
  return (ax2 - ax1) * (ay2 - ay1) + (bx2-bx1) * (by2 - by1) - intersect_rectangle
end
