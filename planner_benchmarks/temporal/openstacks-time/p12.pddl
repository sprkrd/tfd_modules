
(define (problem os-time-nrwslarger4-1-fixed18)
        (:domain openstacks-time)
        (:objects n0 n1 n2 n3 n4 n5 n6 n7 n8 n9 n10 n11 n12 n13 n14 n15 n16 n17
         n18 - count o1 o2 o3 o4 o5 o6 o7 o8 o9 o10 o11 o12 o13 o14 o15 o16 o17
         o18 o19 o20 - order p1 p2 p3 p4 p5 p6 p7 p8 p9 p10 p11 p12 p13 p14 p15
         p16 p17 p18 p19 p20 p21 p22 p23 p24 p25 p26 p27 p28 p29 p30 - product)
        (:init (next-count n0 n1) (next-count n1 n2) (next-count n2 n3)
         (next-count n3 n4) (next-count n4 n5) (next-count n5 n6)
         (next-count n6 n7) (next-count n7 n8) (next-count n8 n9)
         (next-count n9 n10) (next-count n10 n11) (next-count n11 n12)
         (next-count n12 n13) (next-count n13 n14) (next-count n14 n15)
         (next-count n15 n16) (next-count n16 n17) (next-count n17 n18)
         (stacks-avail n18) (waiting o1) (includes o1 p5) (includes o1 p6)
         (includes o1 p7) (includes o1 p8) (includes o1 p15) (includes o1 p24)
         (includes o1 p25) (includes o1 p29) (waiting o2) (includes o2 p2)
         (includes o2 p12) (includes o2 p14) (includes o2 p22)
         (includes o2 p23) (includes o2 p26) (includes o2 p27)
         (includes o2 p28) (waiting o3) (includes o3 p6) (includes o3 p11)
         (includes o3 p15) (includes o3 p24) (includes o3 p25)
         (includes o3 p29) (waiting o4) (includes o4 p3) (includes o4 p6)
         (includes o4 p8) (includes o4 p10) (includes o4 p14) (includes o4 p17)
         (includes o4 p26) (includes o4 p27) (waiting o5) (includes o5 p3)
         (includes o5 p7) (includes o5 p8) (includes o5 p17) (includes o5 p20)
         (includes o5 p23) (includes o5 p27) (includes o5 p30) (waiting o6)
         (includes o6 p4) (includes o6 p7) (includes o6 p14) (includes o6 p18)
         (includes o6 p20) (includes o6 p22) (includes o6 p26)
         (includes o6 p27) (waiting o7) (includes o7 p3) (includes o7 p5)
         (includes o7 p7) (includes o7 p11) (includes o7 p14) (includes o7 p15)
         (includes o7 p29) (includes o7 p30) (waiting o8) (includes o8 p5)
         (includes o8 p8) (includes o8 p15) (includes o8 p17) (includes o8 p25)
         (includes o8 p30) (waiting o9) (includes o9 p3) (includes o9 p13)
         (includes o9 p15) (includes o9 p24) (includes o9 p25)
         (includes o9 p29) (includes o9 p30) (waiting o10) (includes o10 p4)
         (includes o10 p9) (includes o10 p10) (includes o10 p16)
         (includes o10 p18) (includes o10 p21) (includes o10 p23)
         (includes o10 p28) (waiting o11) (includes o11 p2) (includes o11 p5)
         (includes o11 p8) (includes o11 p14) (includes o11 p15)
         (includes o11 p17) (includes o11 p25) (includes o11 p30) (waiting o12)
         (includes o12 p3) (includes o12 p7) (includes o12 p8)
         (includes o12 p11) (includes o12 p14) (includes o12 p15)
         (includes o12 p26) (includes o12 p30) (waiting o13) (includes o13 p2)
         (includes o13 p10) (includes o13 p18) (includes o13 p19)
         (includes o13 p20) (includes o13 p26) (includes o13 p27)
         (includes o13 p28) (waiting o14) (includes o14 p2) (includes o14 p3)
         (includes o14 p6) (includes o14 p7) (includes o14 p10)
         (includes o14 p14) (includes o14 p20) (includes o14 p22) (waiting o15)
         (includes o15 p5) (includes o15 p8) (includes o15 p11)
         (includes o15 p13) (includes o15 p24) (includes o15 p25) (waiting o16)
         (includes o16 p2) (includes o16 p6) (includes o16 p8)
         (includes o16 p14) (includes o16 p15) (includes o16 p17)
         (includes o16 p20) (includes o16 p30) (waiting o17) (includes o17 p2)
         (includes o17 p6) (includes o17 p7) (includes o17 p8)
         (includes o17 p11) (includes o17 p25) (includes o17 p27)
         (includes o17 p30) (waiting o18) (includes o18 p2) (includes o18 p7)
         (includes o18 p10) (includes o18 p14) (includes o18 p17)
         (includes o18 p18) (includes o18 p23) (includes o18 p26) (waiting o19)
         (includes o19 p1) (includes o19 p9) (includes o19 p10)
         (includes o19 p12) (includes o19 p20) (includes o19 p22)
         (includes o19 p26) (includes o19 p28) (waiting o20) (includes o20 p1)
         (includes o20 p18) (includes o20 p19) (includes o20 p20)
         (includes o20 p21) (includes o20 p22) (includes o20 p23)
         (includes o20 p28) (= (make-time p1) 20) (= (make-time p2) 180)
         (= (make-time p3) 80) (= (make-time p4) 180) (= (make-time p5) 80)
         (= (make-time p6) 200) (= (make-time p7) 160) (= (make-time p8) 40)
         (= (make-time p9) 60) (= (make-time p10) 140) (= (make-time p11) 180)
         (= (make-time p12) 100) (= (make-time p13) 180) (= (make-time p14) 80)
         (= (make-time p15) 160) (= (make-time p16) 40) (= (make-time p17) 40)
         (= (make-time p18) 60) (= (make-time p19) 140) (= (make-time p20) 20)
         (= (make-time p21) 200) (= (make-time p22) 140)
         (= (make-time p23) 160) (= (make-time p24) 80) (= (make-time p25) 200)
         (= (make-time p26) 120) (= (make-time p27) 180)
         (= (make-time p28) 200) (= (make-time p29) 140)
         (= (make-time p30) 160))
        (:goal
         (and (shipped o1)
              (shipped o2)
              (shipped o3)
              (shipped o4)
              (shipped o5)
              (shipped o6)
              (shipped o7)
              (shipped o8)
              (shipped o9)
              (shipped o10)
              (shipped o11)
              (shipped o12)
              (shipped o13)
              (shipped o14)
              (shipped o15)
              (shipped o16)
              (shipped o17)
              (shipped o18)
              (shipped o19)
              (shipped o20)))
        (:metric minimize (total-time)))
