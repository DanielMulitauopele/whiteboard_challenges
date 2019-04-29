def judge_circle(moves)
  valid_move = {
      "U" => "D",
      "D" => "U",
      "L" => "R",
      "R" => "L"
      }

  moves_list = []

  moves.each_char do |char|
    if moves_list.include?(valid_move[char])
      moves_list.slice!(moves_list.index(valid_move[char]))
    else
      moves_list << char
    end
  end

  if moves_list.empty?
    return true
  else
    return false
  end
end

judge_circle("DRLLDLLRURLURULLLRULLRLULLLDDUDLUUUDLLDLDRLDRURDURRLRDLDRDLDDURDUURLLUUURLDRLUULUUDRDRUDURLLRDRRDLDU")
