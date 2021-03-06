; Transport p01-10-city-30nodes-1000size-5degree-100mindistance-4trucks-12packagespercity-2008seed

(define (problem transport-p01-10-city-30nodes-1000size-5degree-100mindistance-4trucks-12packagespercity-2008seed)
 (:domain transport)
 (:objects
  city-loc-1 - location
  city-loc-2 - location
  city-loc-3 - location
  city-loc-4 - location
  city-loc-5 - location
  city-loc-6 - location
  city-loc-7 - location
  city-loc-8 - location
  city-loc-9 - location
  city-loc-10 - location
  city-loc-11 - location
  city-loc-12 - location
  city-loc-13 - location
  city-loc-14 - location
  city-loc-15 - location
  city-loc-16 - location
  city-loc-17 - location
  city-loc-18 - location
  city-loc-19 - location
  city-loc-20 - location
  city-loc-21 - location
  city-loc-22 - location
  city-loc-23 - location
  city-loc-24 - location
  city-loc-25 - location
  city-loc-26 - location
  city-loc-27 - location
  city-loc-28 - location
  city-loc-29 - location
  city-loc-30 - location
  truck-1 - vehicle
  truck-2 - vehicle
  truck-3 - vehicle
  truck-4 - vehicle
  package-1 - package
  package-2 - package
  package-3 - package
  package-4 - package
  package-5 - package
  package-6 - package
  package-7 - package
  package-8 - package
  package-9 - package
  package-10 - package
  package-11 - package
  package-12 - package
 )
 (:init
  ; 748,385 -> 890,543
  (road city-loc-3 city-loc-1)
  (= (road-length city-loc-3 city-loc-1) 22)
  (= (fuel-demand city-loc-3 city-loc-1) 43)
  ; 890,543 -> 748,385
  (road city-loc-1 city-loc-3)
  (= (road-length city-loc-1 city-loc-3) 22)
  (= (fuel-demand city-loc-1 city-loc-3) 43)
  ; 912,799 -> 890,543
  (road city-loc-4 city-loc-1)
  (= (road-length city-loc-4 city-loc-1) 26)
  (= (fuel-demand city-loc-4 city-loc-1) 52)
  ; 890,543 -> 912,799
  (road city-loc-1 city-loc-4)
  (= (road-length city-loc-1 city-loc-4) 26)
  (= (fuel-demand city-loc-1 city-loc-4) 52)
  ; 977,899 -> 912,799
  (road city-loc-5 city-loc-4)
  (= (road-length city-loc-5 city-loc-4) 12)
  (= (fuel-demand city-loc-5 city-loc-4) 24)
  ; 912,799 -> 977,899
  (road city-loc-4 city-loc-5)
  (= (road-length city-loc-4 city-loc-5) 12)
  (= (fuel-demand city-loc-4 city-loc-5) 24)
  ; 456,221 -> 384,50
  (road city-loc-6 city-loc-2)
  (= (road-length city-loc-6 city-loc-2) 19)
  (= (fuel-demand city-loc-6 city-loc-2) 38)
  ; 384,50 -> 456,221
  (road city-loc-2 city-loc-6)
  (= (road-length city-loc-2 city-loc-6) 19)
  (= (fuel-demand city-loc-2 city-loc-6) 38)
  ; 742,542 -> 890,543
  (road city-loc-7 city-loc-1)
  (= (road-length city-loc-7 city-loc-1) 15)
  (= (fuel-demand city-loc-7 city-loc-1) 30)
  ; 890,543 -> 742,542
  (road city-loc-1 city-loc-7)
  (= (road-length city-loc-1 city-loc-7) 15)
  (= (fuel-demand city-loc-1 city-loc-7) 30)
  ; 742,542 -> 748,385
  (road city-loc-7 city-loc-3)
  (= (road-length city-loc-7 city-loc-3) 16)
  (= (fuel-demand city-loc-7 city-loc-3) 32)
  ; 748,385 -> 742,542
  (road city-loc-3 city-loc-7)
  (= (road-length city-loc-3 city-loc-7) 16)
  (= (fuel-demand city-loc-3 city-loc-7) 32)
  ; 273,425 -> 456,221
  (road city-loc-9 city-loc-6)
  (= (road-length city-loc-9 city-loc-6) 28)
  (= (fuel-demand city-loc-9 city-loc-6) 55)
  ; 456,221 -> 273,425
  (road city-loc-6 city-loc-9)
  (= (road-length city-loc-6 city-loc-9) 28)
  (= (fuel-demand city-loc-6 city-loc-9) 55)
  ; 566,552 -> 748,385
  (road city-loc-10 city-loc-3)
  (= (road-length city-loc-10 city-loc-3) 25)
  (= (fuel-demand city-loc-10 city-loc-3) 50)
  ; 748,385 -> 566,552
  (road city-loc-3 city-loc-10)
  (= (road-length city-loc-3 city-loc-10) 25)
  (= (fuel-demand city-loc-3 city-loc-10) 50)
  ; 566,552 -> 742,542
  (road city-loc-10 city-loc-7)
  (= (road-length city-loc-10 city-loc-7) 18)
  (= (fuel-demand city-loc-10 city-loc-7) 36)
  ; 742,542 -> 566,552
  (road city-loc-7 city-loc-10)
  (= (road-length city-loc-7 city-loc-10) 18)
  (= (fuel-demand city-loc-7 city-loc-10) 36)
  ; 566,552 -> 564,783
  (road city-loc-10 city-loc-8)
  (= (road-length city-loc-10 city-loc-8) 24)
  (= (fuel-demand city-loc-10 city-loc-8) 47)
  ; 564,783 -> 566,552
  (road city-loc-8 city-loc-10)
  (= (road-length city-loc-8 city-loc-10) 24)
  (= (fuel-demand city-loc-8 city-loc-10) 47)
  ; 174,643 -> 273,425
  (road city-loc-11 city-loc-9)
  (= (road-length city-loc-11 city-loc-9) 24)
  (= (fuel-demand city-loc-11 city-loc-9) 48)
  ; 273,425 -> 174,643
  (road city-loc-9 city-loc-11)
  (= (road-length city-loc-9 city-loc-11) 24)
  (= (fuel-demand city-loc-9 city-loc-11) 48)
  ; 930,259 -> 748,385
  (road city-loc-12 city-loc-3)
  (= (road-length city-loc-12 city-loc-3) 23)
  (= (fuel-demand city-loc-12 city-loc-3) 45)
  ; 748,385 -> 930,259
  (road city-loc-3 city-loc-12)
  (= (road-length city-loc-3 city-loc-12) 23)
  (= (fuel-demand city-loc-3 city-loc-12) 45)
  ; 55,605 -> 174,643
  (road city-loc-13 city-loc-11)
  (= (road-length city-loc-13 city-loc-11) 13)
  (= (fuel-demand city-loc-13 city-loc-11) 25)
  ; 174,643 -> 55,605
  (road city-loc-11 city-loc-13)
  (= (road-length city-loc-11 city-loc-13) 13)
  (= (fuel-demand city-loc-11 city-loc-13) 25)
  ; 803,858 -> 912,799
  (road city-loc-14 city-loc-4)
  (= (road-length city-loc-14 city-loc-4) 13)
  (= (fuel-demand city-loc-14 city-loc-4) 25)
  ; 912,799 -> 803,858
  (road city-loc-4 city-loc-14)
  (= (road-length city-loc-4 city-loc-14) 13)
  (= (fuel-demand city-loc-4 city-loc-14) 25)
  ; 803,858 -> 977,899
  (road city-loc-14 city-loc-5)
  (= (road-length city-loc-14 city-loc-5) 18)
  (= (fuel-demand city-loc-14 city-loc-5) 36)
  ; 977,899 -> 803,858
  (road city-loc-5 city-loc-14)
  (= (road-length city-loc-5 city-loc-14) 18)
  (= (fuel-demand city-loc-5 city-loc-14) 36)
  ; 803,858 -> 564,783
  (road city-loc-14 city-loc-8)
  (= (road-length city-loc-14 city-loc-8) 25)
  (= (fuel-demand city-loc-14 city-loc-8) 50)
  ; 564,783 -> 803,858
  (road city-loc-8 city-loc-14)
  (= (road-length city-loc-8 city-loc-14) 25)
  (= (fuel-demand city-loc-8 city-loc-14) 50)
  ; 263,567 -> 273,425
  (road city-loc-15 city-loc-9)
  (= (road-length city-loc-15 city-loc-9) 15)
  (= (fuel-demand city-loc-15 city-loc-9) 29)
  ; 273,425 -> 263,567
  (road city-loc-9 city-loc-15)
  (= (road-length city-loc-9 city-loc-15) 15)
  (= (fuel-demand city-loc-9 city-loc-15) 29)
  ; 263,567 -> 174,643
  (road city-loc-15 city-loc-11)
  (= (road-length city-loc-15 city-loc-11) 12)
  (= (fuel-demand city-loc-15 city-loc-11) 24)
  ; 174,643 -> 263,567
  (road city-loc-11 city-loc-15)
  (= (road-length city-loc-11 city-loc-15) 12)
  (= (fuel-demand city-loc-11 city-loc-15) 24)
  ; 263,567 -> 55,605
  (road city-loc-15 city-loc-13)
  (= (road-length city-loc-15 city-loc-13) 22)
  (= (fuel-demand city-loc-15 city-loc-13) 43)
  ; 55,605 -> 263,567
  (road city-loc-13 city-loc-15)
  (= (road-length city-loc-13 city-loc-15) 22)
  (= (fuel-demand city-loc-13 city-loc-15) 43)
  ; 128,791 -> 174,643
  (road city-loc-16 city-loc-11)
  (= (road-length city-loc-16 city-loc-11) 16)
  (= (fuel-demand city-loc-16 city-loc-11) 31)
  ; 174,643 -> 128,791
  (road city-loc-11 city-loc-16)
  (= (road-length city-loc-11 city-loc-16) 16)
  (= (fuel-demand city-loc-11 city-loc-16) 31)
  ; 128,791 -> 55,605
  (road city-loc-16 city-loc-13)
  (= (road-length city-loc-16 city-loc-13) 20)
  (= (fuel-demand city-loc-16 city-loc-13) 40)
  ; 55,605 -> 128,791
  (road city-loc-13 city-loc-16)
  (= (road-length city-loc-13 city-loc-16) 20)
  (= (fuel-demand city-loc-13 city-loc-16) 40)
  ; 128,791 -> 263,567
  (road city-loc-16 city-loc-15)
  (= (road-length city-loc-16 city-loc-15) 27)
  (= (fuel-demand city-loc-16 city-loc-15) 53)
  ; 263,567 -> 128,791
  (road city-loc-15 city-loc-16)
  (= (road-length city-loc-15 city-loc-16) 27)
  (= (fuel-demand city-loc-15 city-loc-16) 53)
  ; 426,706 -> 564,783
  (road city-loc-17 city-loc-8)
  (= (road-length city-loc-17 city-loc-8) 16)
  (= (fuel-demand city-loc-17 city-loc-8) 32)
  ; 564,783 -> 426,706
  (road city-loc-8 city-loc-17)
  (= (road-length city-loc-8 city-loc-17) 16)
  (= (fuel-demand city-loc-8 city-loc-17) 32)
  ; 426,706 -> 566,552
  (road city-loc-17 city-loc-10)
  (= (road-length city-loc-17 city-loc-10) 21)
  (= (fuel-demand city-loc-17 city-loc-10) 42)
  ; 566,552 -> 426,706
  (road city-loc-10 city-loc-17)
  (= (road-length city-loc-10 city-loc-17) 21)
  (= (fuel-demand city-loc-10 city-loc-17) 42)
  ; 426,706 -> 174,643
  (road city-loc-17 city-loc-11)
  (= (road-length city-loc-17 city-loc-11) 26)
  (= (fuel-demand city-loc-17 city-loc-11) 52)
  ; 174,643 -> 426,706
  (road city-loc-11 city-loc-17)
  (= (road-length city-loc-11 city-loc-17) 26)
  (= (fuel-demand city-loc-11 city-loc-17) 52)
  ; 426,706 -> 263,567
  (road city-loc-17 city-loc-15)
  (= (road-length city-loc-17 city-loc-15) 22)
  (= (fuel-demand city-loc-17 city-loc-15) 43)
  ; 263,567 -> 426,706
  (road city-loc-15 city-loc-17)
  (= (road-length city-loc-15 city-loc-17) 22)
  (= (fuel-demand city-loc-15 city-loc-17) 43)
  ; 36,368 -> 273,425
  (road city-loc-18 city-loc-9)
  (= (road-length city-loc-18 city-loc-9) 25)
  (= (fuel-demand city-loc-18 city-loc-9) 49)
  ; 273,425 -> 36,368
  (road city-loc-9 city-loc-18)
  (= (road-length city-loc-9 city-loc-18) 25)
  (= (fuel-demand city-loc-9 city-loc-18) 49)
  ; 36,368 -> 55,605
  (road city-loc-18 city-loc-13)
  (= (road-length city-loc-18 city-loc-13) 24)
  (= (fuel-demand city-loc-18 city-loc-13) 48)
  ; 55,605 -> 36,368
  (road city-loc-13 city-loc-18)
  (= (road-length city-loc-13 city-loc-18) 24)
  (= (fuel-demand city-loc-13 city-loc-18) 48)
  ; 806,18 -> 930,259
  (road city-loc-19 city-loc-12)
  (= (road-length city-loc-19 city-loc-12) 28)
  (= (fuel-demand city-loc-19 city-loc-12) 55)
  ; 930,259 -> 806,18
  (road city-loc-12 city-loc-19)
  (= (road-length city-loc-12 city-loc-19) 28)
  (= (fuel-demand city-loc-12 city-loc-19) 55)
  ; 138,109 -> 384,50
  (road city-loc-20 city-loc-2)
  (= (road-length city-loc-20 city-loc-2) 26)
  (= (fuel-demand city-loc-20 city-loc-2) 51)
  ; 384,50 -> 138,109
  (road city-loc-2 city-loc-20)
  (= (road-length city-loc-2 city-loc-20) 26)
  (= (fuel-demand city-loc-2 city-loc-20) 51)
  ; 392,433 -> 456,221
  (road city-loc-21 city-loc-6)
  (= (road-length city-loc-21 city-loc-6) 23)
  (= (fuel-demand city-loc-21 city-loc-6) 45)
  ; 456,221 -> 392,433
  (road city-loc-6 city-loc-21)
  (= (road-length city-loc-6 city-loc-21) 23)
  (= (fuel-demand city-loc-6 city-loc-21) 45)
  ; 392,433 -> 273,425
  (road city-loc-21 city-loc-9)
  (= (road-length city-loc-21 city-loc-9) 12)
  (= (fuel-demand city-loc-21 city-loc-9) 24)
  ; 273,425 -> 392,433
  (road city-loc-9 city-loc-21)
  (= (road-length city-loc-9 city-loc-21) 12)
  (= (fuel-demand city-loc-9 city-loc-21) 24)
  ; 392,433 -> 566,552
  (road city-loc-21 city-loc-10)
  (= (road-length city-loc-21 city-loc-10) 22)
  (= (fuel-demand city-loc-21 city-loc-10) 43)
  ; 566,552 -> 392,433
  (road city-loc-10 city-loc-21)
  (= (road-length city-loc-10 city-loc-21) 22)
  (= (fuel-demand city-loc-10 city-loc-21) 43)
  ; 392,433 -> 263,567
  (road city-loc-21 city-loc-15)
  (= (road-length city-loc-21 city-loc-15) 19)
  (= (fuel-demand city-loc-21 city-loc-15) 38)
  ; 263,567 -> 392,433
  (road city-loc-15 city-loc-21)
  (= (road-length city-loc-15 city-loc-21) 19)
  (= (fuel-demand city-loc-15 city-loc-21) 38)
  ; 392,433 -> 426,706
  (road city-loc-21 city-loc-17)
  (= (road-length city-loc-21 city-loc-17) 28)
  (= (fuel-demand city-loc-21 city-loc-17) 55)
  ; 426,706 -> 392,433
  (road city-loc-17 city-loc-21)
  (= (road-length city-loc-17 city-loc-21) 28)
  (= (fuel-demand city-loc-17 city-loc-21) 55)
  ; 231,881 -> 174,643
  (road city-loc-22 city-loc-11)
  (= (road-length city-loc-22 city-loc-11) 25)
  (= (fuel-demand city-loc-22 city-loc-11) 49)
  ; 174,643 -> 231,881
  (road city-loc-11 city-loc-22)
  (= (road-length city-loc-11 city-loc-22) 25)
  (= (fuel-demand city-loc-11 city-loc-22) 49)
  ; 231,881 -> 128,791
  (road city-loc-22 city-loc-16)
  (= (road-length city-loc-22 city-loc-16) 14)
  (= (fuel-demand city-loc-22 city-loc-16) 28)
  ; 128,791 -> 231,881
  (road city-loc-16 city-loc-22)
  (= (road-length city-loc-16 city-loc-22) 14)
  (= (fuel-demand city-loc-16 city-loc-22) 28)
  ; 231,881 -> 426,706
  (road city-loc-22 city-loc-17)
  (= (road-length city-loc-22 city-loc-17) 27)
  (= (fuel-demand city-loc-22 city-loc-17) 53)
  ; 426,706 -> 231,881
  (road city-loc-17 city-loc-22)
  (= (road-length city-loc-17 city-loc-22) 27)
  (= (fuel-demand city-loc-17 city-loc-22) 53)
  ; 682,8 -> 806,18
  (road city-loc-23 city-loc-19)
  (= (road-length city-loc-23 city-loc-19) 13)
  (= (fuel-demand city-loc-23 city-loc-19) 25)
  ; 806,18 -> 682,8
  (road city-loc-19 city-loc-23)
  (= (road-length city-loc-19 city-loc-23) 13)
  (= (fuel-demand city-loc-19 city-loc-23) 25)
  ; 989,457 -> 890,543
  (road city-loc-24 city-loc-1)
  (= (road-length city-loc-24 city-loc-1) 14)
  (= (fuel-demand city-loc-24 city-loc-1) 27)
  ; 890,543 -> 989,457
  (road city-loc-1 city-loc-24)
  (= (road-length city-loc-1 city-loc-24) 14)
  (= (fuel-demand city-loc-1 city-loc-24) 27)
  ; 989,457 -> 748,385
  (road city-loc-24 city-loc-3)
  (= (road-length city-loc-24 city-loc-3) 26)
  (= (fuel-demand city-loc-24 city-loc-3) 51)
  ; 748,385 -> 989,457
  (road city-loc-3 city-loc-24)
  (= (road-length city-loc-3 city-loc-24) 26)
  (= (fuel-demand city-loc-3 city-loc-24) 51)
  ; 989,457 -> 742,542
  (road city-loc-24 city-loc-7)
  (= (road-length city-loc-24 city-loc-7) 27)
  (= (fuel-demand city-loc-24 city-loc-7) 53)
  ; 742,542 -> 989,457
  (road city-loc-7 city-loc-24)
  (= (road-length city-loc-7 city-loc-24) 27)
  (= (fuel-demand city-loc-7 city-loc-24) 53)
  ; 989,457 -> 930,259
  (road city-loc-24 city-loc-12)
  (= (road-length city-loc-24 city-loc-12) 21)
  (= (fuel-demand city-loc-24 city-loc-12) 42)
  ; 930,259 -> 989,457
  (road city-loc-12 city-loc-24)
  (= (road-length city-loc-12 city-loc-24) 21)
  (= (fuel-demand city-loc-12 city-loc-24) 42)
  ; 362,862 -> 564,783
  (road city-loc-25 city-loc-8)
  (= (road-length city-loc-25 city-loc-8) 22)
  (= (fuel-demand city-loc-25 city-loc-8) 44)
  ; 564,783 -> 362,862
  (road city-loc-8 city-loc-25)
  (= (road-length city-loc-8 city-loc-25) 22)
  (= (fuel-demand city-loc-8 city-loc-25) 44)
  ; 362,862 -> 128,791
  (road city-loc-25 city-loc-16)
  (= (road-length city-loc-25 city-loc-16) 25)
  (= (fuel-demand city-loc-25 city-loc-16) 49)
  ; 128,791 -> 362,862
  (road city-loc-16 city-loc-25)
  (= (road-length city-loc-16 city-loc-25) 25)
  (= (fuel-demand city-loc-16 city-loc-25) 49)
  ; 362,862 -> 426,706
  (road city-loc-25 city-loc-17)
  (= (road-length city-loc-25 city-loc-17) 17)
  (= (fuel-demand city-loc-25 city-loc-17) 34)
  ; 426,706 -> 362,862
  (road city-loc-17 city-loc-25)
  (= (road-length city-loc-17 city-loc-25) 17)
  (= (fuel-demand city-loc-17 city-loc-25) 34)
  ; 362,862 -> 231,881
  (road city-loc-25 city-loc-22)
  (= (road-length city-loc-25 city-loc-22) 14)
  (= (fuel-demand city-loc-25 city-loc-22) 27)
  ; 231,881 -> 362,862
  (road city-loc-22 city-loc-25)
  (= (road-length city-loc-22 city-loc-25) 14)
  (= (fuel-demand city-loc-22 city-loc-25) 27)
  ; 6,60 -> 138,109
  (road city-loc-26 city-loc-20)
  (= (road-length city-loc-26 city-loc-20) 15)
  (= (fuel-demand city-loc-26 city-loc-20) 29)
  ; 138,109 -> 6,60
  (road city-loc-20 city-loc-26)
  (= (road-length city-loc-20 city-loc-26) 15)
  (= (fuel-demand city-loc-20 city-loc-26) 29)
  ; 257,5 -> 384,50
  (road city-loc-27 city-loc-2)
  (= (road-length city-loc-27 city-loc-2) 14)
  (= (fuel-demand city-loc-27 city-loc-2) 27)
  ; 384,50 -> 257,5
  (road city-loc-2 city-loc-27)
  (= (road-length city-loc-2 city-loc-27) 14)
  (= (fuel-demand city-loc-2 city-loc-27) 27)
  ; 257,5 -> 138,109
  (road city-loc-27 city-loc-20)
  (= (road-length city-loc-27 city-loc-20) 16)
  (= (fuel-demand city-loc-27 city-loc-20) 32)
  ; 138,109 -> 257,5
  (road city-loc-20 city-loc-27)
  (= (road-length city-loc-20 city-loc-27) 16)
  (= (fuel-demand city-loc-20 city-loc-27) 32)
  ; 257,5 -> 6,60
  (road city-loc-27 city-loc-26)
  (= (road-length city-loc-27 city-loc-26) 26)
  (= (fuel-demand city-loc-27 city-loc-26) 52)
  ; 6,60 -> 257,5
  (road city-loc-26 city-loc-27)
  (= (road-length city-loc-26 city-loc-27) 26)
  (= (fuel-demand city-loc-26 city-loc-27) 52)
  ; 347,149 -> 384,50
  (road city-loc-28 city-loc-2)
  (= (road-length city-loc-28 city-loc-2) 11)
  (= (fuel-demand city-loc-28 city-loc-2) 22)
  ; 384,50 -> 347,149
  (road city-loc-2 city-loc-28)
  (= (road-length city-loc-2 city-loc-28) 11)
  (= (fuel-demand city-loc-2 city-loc-28) 22)
  ; 347,149 -> 456,221
  (road city-loc-28 city-loc-6)
  (= (road-length city-loc-28 city-loc-6) 14)
  (= (fuel-demand city-loc-28 city-loc-6) 27)
  ; 456,221 -> 347,149
  (road city-loc-6 city-loc-28)
  (= (road-length city-loc-6 city-loc-28) 14)
  (= (fuel-demand city-loc-6 city-loc-28) 27)
  ; 347,149 -> 138,109
  (road city-loc-28 city-loc-20)
  (= (road-length city-loc-28 city-loc-20) 22)
  (= (fuel-demand city-loc-28 city-loc-20) 43)
  ; 138,109 -> 347,149
  (road city-loc-20 city-loc-28)
  (= (road-length city-loc-20 city-loc-28) 22)
  (= (fuel-demand city-loc-20 city-loc-28) 43)
  ; 347,149 -> 257,5
  (road city-loc-28 city-loc-27)
  (= (road-length city-loc-28 city-loc-27) 17)
  (= (fuel-demand city-loc-28 city-loc-27) 34)
  ; 257,5 -> 347,149
  (road city-loc-27 city-loc-28)
  (= (road-length city-loc-27 city-loc-28) 17)
  (= (fuel-demand city-loc-27 city-loc-28) 34)
  ; 521,375 -> 748,385
  (road city-loc-29 city-loc-3)
  (= (road-length city-loc-29 city-loc-3) 23)
  (= (fuel-demand city-loc-29 city-loc-3) 46)
  ; 748,385 -> 521,375
  (road city-loc-3 city-loc-29)
  (= (road-length city-loc-3 city-loc-29) 23)
  (= (fuel-demand city-loc-3 city-loc-29) 46)
  ; 521,375 -> 456,221
  (road city-loc-29 city-loc-6)
  (= (road-length city-loc-29 city-loc-6) 17)
  (= (fuel-demand city-loc-29 city-loc-6) 34)
  ; 456,221 -> 521,375
  (road city-loc-6 city-loc-29)
  (= (road-length city-loc-6 city-loc-29) 17)
  (= (fuel-demand city-loc-6 city-loc-29) 34)
  ; 521,375 -> 273,425
  (road city-loc-29 city-loc-9)
  (= (road-length city-loc-29 city-loc-9) 26)
  (= (fuel-demand city-loc-29 city-loc-9) 51)
  ; 273,425 -> 521,375
  (road city-loc-9 city-loc-29)
  (= (road-length city-loc-9 city-loc-29) 26)
  (= (fuel-demand city-loc-9 city-loc-29) 51)
  ; 521,375 -> 566,552
  (road city-loc-29 city-loc-10)
  (= (road-length city-loc-29 city-loc-10) 19)
  (= (fuel-demand city-loc-29 city-loc-10) 37)
  ; 566,552 -> 521,375
  (road city-loc-10 city-loc-29)
  (= (road-length city-loc-10 city-loc-29) 19)
  (= (fuel-demand city-loc-10 city-loc-29) 37)
  ; 521,375 -> 392,433
  (road city-loc-29 city-loc-21)
  (= (road-length city-loc-29 city-loc-21) 15)
  (= (fuel-demand city-loc-29 city-loc-21) 29)
  ; 392,433 -> 521,375
  (road city-loc-21 city-loc-29)
  (= (road-length city-loc-21 city-loc-29) 15)
  (= (fuel-demand city-loc-21 city-loc-29) 29)
  ; 720,241 -> 748,385
  (road city-loc-30 city-loc-3)
  (= (road-length city-loc-30 city-loc-3) 15)
  (= (fuel-demand city-loc-30 city-loc-3) 30)
  ; 748,385 -> 720,241
  (road city-loc-3 city-loc-30)
  (= (road-length city-loc-3 city-loc-30) 15)
  (= (fuel-demand city-loc-3 city-loc-30) 30)
  ; 720,241 -> 456,221
  (road city-loc-30 city-loc-6)
  (= (road-length city-loc-30 city-loc-6) 27)
  (= (fuel-demand city-loc-30 city-loc-6) 53)
  ; 456,221 -> 720,241
  (road city-loc-6 city-loc-30)
  (= (road-length city-loc-6 city-loc-30) 27)
  (= (fuel-demand city-loc-6 city-loc-30) 53)
  ; 720,241 -> 930,259
  (road city-loc-30 city-loc-12)
  (= (road-length city-loc-30 city-loc-12) 22)
  (= (fuel-demand city-loc-30 city-loc-12) 43)
  ; 930,259 -> 720,241
  (road city-loc-12 city-loc-30)
  (= (road-length city-loc-12 city-loc-30) 22)
  (= (fuel-demand city-loc-12 city-loc-30) 43)
  ; 720,241 -> 806,18
  (road city-loc-30 city-loc-19)
  (= (road-length city-loc-30 city-loc-19) 24)
  (= (fuel-demand city-loc-30 city-loc-19) 48)
  ; 806,18 -> 720,241
  (road city-loc-19 city-loc-30)
  (= (road-length city-loc-19 city-loc-30) 24)
  (= (fuel-demand city-loc-19 city-loc-30) 48)
  ; 720,241 -> 682,8
  (road city-loc-30 city-loc-23)
  (= (road-length city-loc-30 city-loc-23) 24)
  (= (fuel-demand city-loc-30 city-loc-23) 48)
  ; 682,8 -> 720,241
  (road city-loc-23 city-loc-30)
  (= (road-length city-loc-23 city-loc-30) 24)
  (= (fuel-demand city-loc-23 city-loc-30) 48)
  ; 720,241 -> 521,375
  (road city-loc-30 city-loc-29)
  (= (road-length city-loc-30 city-loc-29) 24)
  (= (fuel-demand city-loc-30 city-loc-29) 48)
  ; 521,375 -> 720,241
  (road city-loc-29 city-loc-30)
  (= (road-length city-loc-29 city-loc-30) 24)
  (= (fuel-demand city-loc-29 city-loc-30) 48)
  (at package-1 city-loc-15)
  (= (package-size package-1) 29)
  (at package-2 city-loc-7)
  (= (package-size package-2) 67)
  (at package-3 city-loc-19)
  (= (package-size package-3) 73)
  (at package-4 city-loc-4)
  (= (package-size package-4) 86)
  (at package-5 city-loc-12)
  (= (package-size package-5) 29)
  (at package-6 city-loc-6)
  (= (package-size package-6) 55)
  (at package-7 city-loc-11)
  (= (package-size package-7) 61)
  (at package-8 city-loc-12)
  (= (package-size package-8) 75)
  (at package-9 city-loc-20)
  (= (package-size package-9) 67)
  (at package-10 city-loc-10)
  (= (package-size package-10) 55)
  (at package-11 city-loc-12)
  (= (package-size package-11) 25)
  (at package-12 city-loc-18)
  (= (package-size package-12) 77)
  (has-petrol-station city-loc-1)
  (at truck-1 city-loc-3)
  (ready-loading truck-1)
  (= (capacity truck-1) 250.0)
  (= (fuel-left truck-1) 655)
  (= (fuel-max truck-1) 655)
  (at truck-2 city-loc-9)
  (ready-loading truck-2)
  (= (capacity truck-2) 250.0)
  (= (fuel-left truck-2) 655)
  (= (fuel-max truck-2) 655)
  (at truck-3 city-loc-26)
  (ready-loading truck-3)
  (= (capacity truck-3) 250.0)
  (= (fuel-left truck-3) 655)
  (= (fuel-max truck-3) 655)
  (at truck-4 city-loc-5)
  (ready-loading truck-4)
  (= (capacity truck-4) 250.0)
  (= (fuel-left truck-4) 655)
  (= (fuel-max truck-4) 655)
 )
 (:goal (and
  (at package-1 city-loc-3)
  (at package-2 city-loc-16)
  (at package-3 city-loc-7)
  (at package-4 city-loc-30)
  (at package-5 city-loc-9)
  (at package-6 city-loc-19)
  (at package-7 city-loc-12)
  (at package-8 city-loc-7)
  (at package-9 city-loc-30)
  (at package-10 city-loc-26)
  (at package-11 city-loc-17)
  (at package-12 city-loc-19)
 ))
 (:metric minimize (total-time))
)
