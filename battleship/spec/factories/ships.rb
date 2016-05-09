FactoryGirl.define do 
  factory :ship do
    start_row_index {rand(0..9)}
    start_col_index {rand(0..9)}
    end_row_index {rand(0..9)}
    end_col_index {rand(0..9)}
  end

  trait :valid do
    start_row_index 3
    start_col_index 6
    end_row_index 4
    end_col_index 7
  end
  
end