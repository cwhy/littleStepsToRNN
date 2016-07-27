<TeXmacs|1.0.7.18>

<style|generic>

<\body>
  <\eqnarray*>
    <tformat|<table|<row|<cell|>|<cell|>|<cell|max<rsub|f> log
    <around*|(|<big|prod><rsub|z>C<rsub|1>*exp
    <around*|(|<frac|<around*|(|f<around*|(|x<rsub|z>|)>-y<rsub|z>|)>|C<rsub|2>>|)>|)>>>|<row|<cell|>|<cell|=>|<cell|max<rsub|f>
    <big|sum><rsub|z> <around*|(|f<around*|(|x<rsub|z>|)>-y<rsub|z>|)><rsup|2>+
    \<noplus\>\<noplus\>log <around*|(|C|)>>>|<row|<cell|>|<cell|=>|<cell|max<rsub|f>
    <big|sum><rsub|z> <around*|(|f<around*|(|x<rsub|z>|)>-y<rsub|z>|)><rsup|2>>>>>
  </eqnarray*>

  <\eqnarray*>
    <tformat|<table|<row|<cell|>|<cell|>|<cell|>>>>
  </eqnarray*>

  <\eqnarray*>
    <tformat|<table|<row|<cell|<dfrac|\<mathd\> \<ell\>|\<mathd\>
    w<rsub|i\<nocomma\> j>> \ >|<cell|=>|<cell|<frac|\<mathd\>|\<mathd\>
    w<rsub|i\<nocomma\>j><rsup|<around*|(|n|)>>> <big|sum><rsub|z>
    <around*|(|f<around*|(|x<rsub|z>|)>-y<rsub|z>|)><rsup|2>>>|<row|<cell|>|<cell|=>|<cell|2*<around*|(|f<around*|(|x|)>-y|)>
    <frac|\<mathd\>|\<mathd\>\<space\>w<rsub|i\<nocomma\>\<nocomma\>j><rsup|<around*|(|n|)>>>
    <around*|(|f<rsup|><around*|(|x|)> - y|)>>>|<row|<cell|>|<cell|=>|<cell|2*<around*|(|f<around*|(|x|)>-y|)>*<frac|\<mathd\>\<space\><big|sum><rsub|j>w<rsub|i\<nocomma\>j><rsup|<around*|(|n|)>>a<around*|(|f<rsub|j><rsup|<around*|(|n-1|)>><around*|(|x|)>|)>|\<mathd\>\<space\>w<rsub|i\<nocomma\>
    j><rsup|<around*|(|n-1|)>>>>>|<row|<cell|>|<cell|=>|<cell|2*<around*|(|f<around*|(|x|)>-y|)>*<frac|\<mathd\>\<space\>w<rsub|i\<nocomma\>j><rsup|<around*|(|n|)>>a<around*|(|f<rsub|j><rsup|<around*|(|n-1|)>><around*|(|x|)>|)>|\<mathd\>\<space\>w<rsub|i\<nocomma\>
    j><rsup|<around*|(|n-1|)>>>>>|<row|<cell|>|<cell|=>|<cell|2*<around*|(|f<around*|(|x|)>-y|)>*a<around*|(|f<rsub|j><rsup|<around*|(|n-1|)>><around*|(|x|)>|)>>>>>
  </eqnarray*>

  <\eqnarray*>
    <tformat|<table|<row|<cell|<frac|\<mathd\>\<space\>\<ell\>|\<mathd\>\<space\>w<rsub|j\<nocomma\>k><rsub|>>
    >|<cell|=>|<cell|2*<around*|(|f<around*|(|x|)>-y|)> <frac|\<mathd\>
    <big|sum><rsub|i> w<rsub|i\<nocomma\>j><rsup|<around*|(|n|)>>a<around*|(|f<rsub|j><rsup|<around*|(|n-1|)>><around*|(|x|)>|)>-y|\<mathd\>\<space\>w<rsub|j\<nocomma\>
    k><rsup|<around*|(|n-1|)>>>>>|<row|<cell|>|<cell|=>|<cell|2*<around*|(|f<around*|(|x|)>-y|)>
    <frac|\<mathd\> \<space\><big|sum><rsub|i>
    w<rsub|i\<nocomma\>j><rsup|<around*|(|n|)>>a<around*|(|f<rsub|j><rsup|<around*|(|n-1|)>><around*|(|x|)>|)>|\<mathd\>\<space\>w<rsub|j\<nocomma\>
    k><rsup|<around*|(|n-1|)>>>>>|<row|<cell|>|<cell|=>|<cell|2*<around*|(|f<around*|(|x|)>-y|)>*<big|sum><rsub|i>*w<rsub|i\<nocomma\>j>
    <frac|\<mathd\>\<space\>a<around*|(|f<rsub|j><rsup|<around*|(|n-1|)>><around*|(|x|)>|)>|\<mathd\>\<space\>f<rsub|j><rsup|<around*|(|n-1|)>><around*|(|x|)>>*<frac|\<mathd\>|\<mathd\>\<space\>w<rsub|j\<nocomma\>k><rsup|<around*|(|n-1|)>>>\<space\><around*|(|f<rsub|j><rsup|<around*|(|n-1|)>><around*|(|x|)>|)>>>|<row|<cell|>|<cell|=>|<cell|2*<around*|(|f<around*|(|x|)>-y|)>*<big|sum><rsub|i>
    w<rsub|i\<nocomma\>j>*a<rprime|'>*<frac|\<mathd\>|\<mathd\>\<space\>w<rsub|j\<nocomma\>k><rsup|<around*|(|n-1|)>>>\<space\><around*|(|<big|sum><rsub|k>
    w<rsub|j\<nocomma\> k><rsup|<around*|(|n-1|)>>*a
    <around*|(|f<rsub|k><rsup|<around*|(|n-2|)>>
    <around*|(|x|)>|)>|)>>>|<row|<cell|>|<cell|=>|<cell|2*<around*|(|f<around*|(|x|)>-y|)>*<big|sum><rsub|i>
    w<rsub|i\<nocomma\>j>*a<rprime|'>*a <around*|(|f<rsub|k><rsup|<around*|(|n-2|)>>
    <around*|(|x|)>|)>>>>>
  </eqnarray*>
</body>

<\initial>
  <\collection>
    <associate|prog-scripts|r>
  </collection>
</initial>