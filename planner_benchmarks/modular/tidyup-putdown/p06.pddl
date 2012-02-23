; first grasp_location reached, object detection done - success
; grasped obj
; no putdown pose
(define (problem p06)
   (:domain tidyup-putdown)
   (:moduleoptions )
   (:objects l0 - location bottle - movable_object bottlepos - object_pose
     ether goal_table - static_object
     lg0 lg1 lg2 - grasp_location map - frameid)
   (:init 
       (at-base lg1)

       (can-navigate l0 lg0)
       (can-navigate l0 lg1)
       (can-navigate l0 lg2)
       (can-navigate lg0 lg1)
       (can-navigate lg0 lg2)
       (can-navigate lg1 lg2)

       (handFree left_arm)
       (grasped bottle right_arm)

       (= (arm-position left_arm) unknown)
       (= (arm-position right_arm) unknown)

       (searched lg1)
       (recent-detected-objects lg1)

       (belongs-to bottlepos ether)

       (tidy-location bottle goal_table)

       (= (x l0) 0.0)
       (= (y l0) 0.0)
       (= (z l0) 0.0)
       (= (qx l0) 0.0)
       (= (qy l0) 0.0)
       (= (qz l0) 0.0)
       (= (qw l0) 1.0)
       (= (timestamp l0) 12737474.0)
       (= (frame-id l0) map)
    )

    (:goal
        (and
            (forall (?l - grasp_location) (searched ?l))
            (forall (?o - movable_object) (tidy ?o))
        )
    )
)
