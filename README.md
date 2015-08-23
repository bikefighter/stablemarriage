StableMarriage
==============

https://en.wikipedia.org/wiki/Stable_marriage_problem


# Example

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

    StableMarriage.start(men_prefs, women_prefs)

    #=> #HashDict<[jan: :ed, hope: :ian, dee: :col, eve: :hal, ivy: :abe, bea: :fred,
        abi: :jon, gay: :gav, fay: :dan, cath: :bob]>

# LICENCE
```
The MIT License (MIT)

Copyright (c) 2015 Benjamin Olson

Permission is hereby granted, free of charge, to any person obtaining a copy
of this software and associated documentation files (the "Software"), to deal
in the Software without restriction, including without limitation the rights
to use, copy, modify, merge, publish, distribute, sublicense, and/or sell
copies of the Software, and to permit persons to whom the Software is
furnished to do so, subject to the following conditions:

The above copyright notice and this permission notice shall be included in
all copies or substantial portions of the Software.

THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,
FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE
AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER
LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM,
OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN
THE SOFTWARE.

