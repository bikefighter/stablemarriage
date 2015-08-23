defmodule StableMarriage.Match do

  @doc """
    Start the process with two properly formatted data structures.
    All men are initially known as bachelors.
    First bachelor starts the proposal cycle.
  """
  def start(men_prefs, women_prefs) do
    men_prefs   = Enum.into(men_prefs, HashDict.new)
    women_prefs = Enum.into(women_prefs, HashDict.new)
    bachelors = Enum.map(men_prefs, fn({man, _}) -> man end)
    propose(HashDict.new, bachelors, men_prefs, women_prefs)
  end

  @doc """
    Proposal Cycle
    A man proposes to a woman.
    She accepts his proposal,
      or she accepts and rejects another who then must propose,
      or she reject his proposal and he must propose to someone else.
    If no one was rejected, the next available bachelor proposes.
    The result is complete when there are no more bachelors remaining.
  """
  def propose(results, [], _, _), do: results
  def propose(results, [nil | bachelors], men_prefs, women_prefs) do
    propose(results, bachelors, men_prefs, women_prefs)
  end

  def propose(results, [suitor | bachelors], men_prefs, women_prefs) do
    {modified_men_prefs, woman} = next_proposal_for_suitor(suitor, men_prefs)
    previous_suitor = results[woman]
    [accepted, rejected] = choose_between_suitors(suitor, previous_suitor, women_prefs[woman])
    new_results = Dict.put(results, woman, accepted)
    propose(new_results, [rejected | bachelors], modified_men_prefs, women_prefs)
  end

  @doc """
    Cycle through a woman's preferred list of suitors.
    Return quickly if there isn't a current engagement.
    Stop when either a suitor or previous suitor is found first.
    Return a list in the format [preferred_suitor, rejected]
  """
  def choose_between_suitors(suitor, nil, _), do: [suitor, nil]
  def choose_between_suitors(suitor, previous_suitor, [preferred | _])
    when suitor == preferred do
      [suitor, previous_suitor]
  end

  def choose_between_suitors(suitor, previous_suitor, [preferred | _])
    when previous_suitor == preferred do
      [previous_suitor, suitor]
  end

  def choose_between_suitors(suitor, previous_suitor, [_ | remainder]) do
    choose_between_suitors(suitor, previous_suitor, remainder)
  end

  @doc """
    Pop the first choice from the suitor's list.
    Return modified pref list of all men, and the popped woman record.
  """
  def next_proposal_for_suitor(suitor, men_prefs) do
    [woman | modified_suitors_prefs] = men_prefs[suitor]
    modified_men_prefs = Dict.put(men_prefs, suitor, modified_suitors_prefs) 
    {modified_men_prefs, woman}
  end
end
