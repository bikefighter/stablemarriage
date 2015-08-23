defmodule MatchTest do
  use ExUnit.Case, async: true

  test "rosseta code example" do
   men_prefs = [abe:  [:abi,:eve,:cath,:ivy,:jan,:dee,:fay,:bea,:hope,:gay],
                bob:  [:cath,:hope,:abi,:dee,:eve,:fay,:bea,:jan,:ivy,:gay],
                col:  [:hope,:eve,:abi,:dee,:bea,:fay,:ivy,:gay,:cath,:jan],
                dan:  [:ivy,:fay,:dee,:gay,:hope,:eve,:jan,:bea,:cath,:abi],
                ed:   [:jan,:dee,:bea,:cath,:fay,:eve,:abi,:ivy,:hope,:gay],
                fred: [:bea,:abi,:dee,:gay,:eve,:ivy,:cath,:jan,:hope,:fay],
                gav:  [:gay,:eve,:ivy,:bea,:cath,:abi,:dee,:hope,:jan,:fay],
                hal:  [:abi,:eve,:hope,:fay,:ivy,:cath,:jan,:bea,:gay,:dee],
                ian:  [:hope,:cath,:dee,:gay,:bea,:abi,:fay,:ivy,:jan,:eve],
                jon:  [:abi,:fay,:jan,:gay,:eve,:bea,:dee,:cath,:ivy,:hope],
              ]

  women_prefs =  [abi:  [:bob,:fred,:jon,:gav,:ian,:abe,:dan,:ed,:col,:hal],
                  bea:  [:bob,:abe,:col,:fred,:gav,:dan,:ian,:ed,:jon,:hal],
                  cath: [:fred,:bob,:ed,:gav,:hal,:col,:ian,:abe,:dan,:jon],
                  dee:  [:fred,:jon,:col,:abe,:ian,:hal,:gav,:dan,:bob,:ed],
                  eve:  [:jon,:hal,:fred,:dan,:abe,:gav,:col,:ed,:ian,:bob],
                  fay:  [:bob,:abe,:ed,:ian,:jon,:dan,:fred,:gav,:col,:hal],
                  gay:  [:jon,:gav,:hal,:fred,:bob,:abe,:col,:ed,:dan,:ian],
                  hope: [:gav,:jon,:bob,:abe,:ian,:dan,:hal,:ed,:col,:fred],
                  ivy:  [:ian,:col,:hal,:gav,:fred,:bob,:abe,:ed,:jon,:dan],
                  jan:  [:ed,:hal,:gav,:abe,:bob,:jon,:col,:ian,:fred,:dan],
                ]
    expected_result = [jan: :ed, hope: :ian, dee: :col, eve: :hal, ivy: :abe, 
                       bea: :fred, abi: :jon, gay: :gav, fay: :dan, cath: :bob]
                      |> Enum.into(HashDict.new)

    assert StableMarriage.Match.start(men_prefs, women_prefs) == expected_result
  end
end