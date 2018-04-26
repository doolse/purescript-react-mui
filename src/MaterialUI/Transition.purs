module MaterialUI.Transition where 

import MaterialUI.Properties (IProp, mkProp)
type TransitionPropsExt r = (
    "in" :: Boolean,
    mountOnEnter :: Boolean,
    unmountOnExit :: Boolean,
    timeout :: Int, 
    appear :: Boolean,
    enter :: Boolean,
    exit :: Boolean
    | r 
)

in_ :: forall r. Boolean -> IProp ("in" :: Boolean | r)
in_ = mkProp "in"

timeout :: forall r. Int -> IProp (timeout :: Int | r)
timeout = mkProp "timeout"

